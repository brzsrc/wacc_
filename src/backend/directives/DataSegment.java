package backend.directives;

import backend.instructions.Label;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;


public class DataSegment implements Directive {
    private Map<Label, String> messages;
    private static Set<Character> escapedChar = Set.of('0', 'b', 't', 'n', 'f', 'r', '\"', '\'', '\\');
    
    public DataSegment(Map<Label, String> messages) {
       this. messages = messages;
    }

    private int realLength(String s) {
        boolean isSlashAhead = false;
        int count = 0;
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (isSlashAhead && escapedChar.contains(c)) {
                count--;
                isSlashAhead = false;
            } else if (isSlashAhead && !escapedChar.contains(c)) {
                isSlashAhead = false;
            } else if (!isSlashAhead && c == '\\') {
                isSlashAhead = true;
            }
            count++;
        }

        /* minus the length of quotes */
        return count-2;
    }


    @Override
    public List<String> toStringList() {
        List<String> list = new ArrayList<>();
        list.add("\t.data\n\n");
        for (Entry<Label, String> e : messages.entrySet()) {
            list.add("\t" + e.getKey().assemble());
            list.add("\t\t.word " + realLength(e.getValue()) + "\n\t\t.ascii " + e.getValue());
        }

        return list;
    }

    @Override
    public int getIndentationLevel() {
        return 1;
    }
}