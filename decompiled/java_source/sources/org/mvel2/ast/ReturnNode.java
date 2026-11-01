package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.StackDemarcResolverFactory;
import org.mvel2.util.m;

/* JADX INFO: loaded from: classes7.dex */
public class ReturnNode extends ASTNode {
    public ReturnNode(char[] cArr, int i11, int i12, int i13, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        if ((i13 & 16) != 0) {
            setAccessor((org.mvel2.compiler.a) m.I0(cArr, i11, i12, parserContext));
        }
    }

    @Override // org.mvel2.ast.ASTNode
    public Integer getOperator() {
        return 99;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.setTiltFlag(true);
        return org.mvel2.d.q(this.expr, this.start, this.offset, obj, new StackDemarcResolverFactory(variableResolverFactory));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.accessor == null) {
            setAccessor((org.mvel2.compiler.a) m.I0(this.expr, this.start, this.offset, this.pCtx));
        }
        variableResolverFactory.setTiltFlag(true);
        return this.accessor.getValue(obj, obj2, new StackDemarcResolverFactory(variableResolverFactory));
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isOperator() {
        return true;
    }

    @Override // org.mvel2.ast.ASTNode
    public boolean isOperator(Integer num) {
        return 99 == num.intValue();
    }
}
