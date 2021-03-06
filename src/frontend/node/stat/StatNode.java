package frontend.node.stat;

import frontend.node.Node;
import utils.frontend.symbolTable.SymbolTable;

public abstract class StatNode implements Node {

  /**
   * abstract class for statement ndoes. Statement nodes do not have type
   */

  private boolean leaveAtEnd = false;
  protected SymbolTable scope;
  protected int weight = 0;

  /* Set leaveAtEnd if needs overwrite */
  protected void setLeaveAtEnd(boolean value) {
    this.leaveAtEnd = value;
  }

  public void setScope(SymbolTable scope) {
    this.scope = scope;
  }

  /* Getters */
  public boolean leaveAtEnd() {
    return leaveAtEnd;
  }

  public SymbolTable getScope() {
    return scope;
  }

  @Override
  public StatNode asStatNode() {
    return this;
  }

  public int getWeight() {
    return weight;
  }
}
