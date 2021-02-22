package backend.instructions.memory;

import backend.instructions.Instruction;
import java.util.List;
import utils.backend.Register;

public class ARMStack implements Stack {

  private int stackPointer;
  /* TODO: find the correct value of MAX_ARM_STACK_SIZE */
  public static final int MAX_ARM_STACK_SIZE = 65536;

  public ARMStack() {
    this.stackPointer = 0;
  }

  @Override
  public Instruction push(List<Register> reglist) {
    return new Push(reglist);
  }

  @Override
  public Instruction pop(List<Register> reglist) {
    return new Pop(reglist);
  }

  @Override
  public boolean isFull() {
    return stackPointer > MAX_ARM_STACK_SIZE;
  }
}
