package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.e;

/* JADX INFO: loaded from: classes7.dex */
public class Convertable extends ASTNode {
    private ASTNode clsStmt;
    private ASTNode stmt;

    public Convertable(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.stmt = aSTNode;
        this.clsStmt = aSTNode2;
        e.b(parserContext, aSTNode2, Class.class, true);
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            Object reducedValue = this.stmt.getReducedValue(obj, obj2, variableResolverFactory);
            if (reducedValue == null) {
                return Boolean.FALSE;
            }
            Class cls = (Class) this.clsStmt.getReducedValue(obj, obj2, variableResolverFactory);
            if (cls != null) {
                return Boolean.valueOf(org.mvel2.b.a(cls, reducedValue.getClass()));
            }
            throw new ClassCastException();
        } catch (ClassCastException unused) {
            throw new RuntimeException("not a class reference: " + this.clsStmt.getName());
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object reducedValueAccelerated = this.stmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory);
        return Boolean.valueOf(reducedValueAccelerated != null && org.mvel2.b.a((Class) this.clsStmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory), reducedValueAccelerated.getClass()));
    }
}
