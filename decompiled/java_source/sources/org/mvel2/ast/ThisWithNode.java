package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class ThisWithNode extends WithNode {
    public ThisWithNode(char[] cArr, int i11, int i12, int i13, int i14, int i15, ParserContext parserContext) {
        super(cArr, i11, i12, i13, i14, i15, parserContext);
    }

    @Override // org.mvel2.ast.WithNode, org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.ast.WithNode, org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (obj2 == null) {
            throw new CompileException("with-block against null pointer (this)", this.expr, this.start);
        }
        for (WithNode.ParmValuePair parmValuePair : this.withExpressions) {
            if (parmValuePair.getSetExpression() != null) {
                org.mvel2.d.w(parmValuePair.getSetExpression(), obj2, variableResolverFactory, parmValuePair.getStatement().getValue(obj, obj2, variableResolverFactory));
            } else {
                parmValuePair.getStatement().getValue(obj2, obj2, variableResolverFactory);
            }
        }
        return obj2;
    }
}
