package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class Strsim extends ASTNode {
    private ASTNode soundslike;
    private ASTNode stmt;

    public Strsim(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.stmt = aSTNode;
        this.soundslike = aSTNode2;
        e.b(parserContext, aSTNode2, String.class, true);
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            String strValueOf = String.valueOf(this.soundslike.getReducedValue(obj, obj2, variableResolverFactory));
            String str = (String) this.stmt.getReducedValue(obj, obj2, variableResolverFactory);
            if (str != null) {
                return Float.valueOf(m.D0(strValueOf, str));
            }
            throw new CompileException("not a string: " + this.stmt.getName(), this.stmt.getExpr(), getStart());
        } catch (ClassCastException unused) {
            throw new CompileException("not a string: " + this.soundslike.getName(), this.soundslike.getExpr(), this.soundslike.getStart());
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Float.valueOf(m.D0(String.valueOf(this.soundslike.getReducedValueAccelerated(obj, obj2, variableResolverFactory)), (String) this.stmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory)));
    }
}
