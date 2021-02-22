package backend.instructions.memory;

import backend.instructions.Instruction;
import java.util.List;
import utils.backend.Register;

public interface Heap {
  public int getNextHeapAddr();
  public List<Instruction> allocate(Register reg, int size);
  public boolean isFull();
}
