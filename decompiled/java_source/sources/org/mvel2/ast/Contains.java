package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class Contains extends ASTNode {
    private ASTNode stmt;
    private ASTNode stmt2;

    public Contains(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.stmt = aSTNode;
        this.stmt2 = aSTNode2;
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    public ASTNode getFirstStatement() {
        return this.stmt;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("operation not supported");
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(m.l(this.stmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory), this.stmt2.getReducedValueAccelerated(obj, obj2, variableResolverFactory)));
    }

    public ASTNode getSecondStatement() {
        return this.stmt2;
    }
}
