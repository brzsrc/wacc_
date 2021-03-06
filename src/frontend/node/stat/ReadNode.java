package frontend.node.stat;

import frontend.node.expr.ExprNode;
import utils.NodeVisitor;

public class ReadNode extends StatNode {

  /**
   * Represent a read statement, with the target being recorded
   * Example: read x
   */

  private final ExprNode readTarget;

  public ReadNode(ExprNode readTarget) {
    this.readTarget = readTarget;
  }

  public ExprNode getInputExpr() {
    return readTarget;
  }

  @Override
  public <T> T accept(NodeVisitor<T> visitor) {
    return visitor.visitReadNode(this);
  }
}
