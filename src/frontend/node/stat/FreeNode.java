package frontend.node.stat;

import frontend.node.expr.ExprNode;
import utils.NodeVisitor;

public class FreeNode extends StatNode {

  /**
   * Represent a free statement, with <expr> being recorded
   * Example: free <expr>, free p (where p is a non-null pair)
   */

  private final ExprNode expr;

  public FreeNode(ExprNode expr) {
    this.expr = expr;
  }

  public ExprNode getExpr() {
    return expr;
  }

  @Override
  public <T> T accept(NodeVisitor<T> visitor) {
    return visitor.visitFreeNode(this);
  }
}
