package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.n;

/* JADX INFO: loaded from: classes7.dex */
public class IsDef extends ASTNode {
    public IsDef(char[] cArr, int i11, int i12, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i11;
        this.offset = i12;
        this.nameCache = new String(cArr, i11, i12);
    }

    @Override // org.mvel2.ast.ASTNode
    public Class getEgressType() {
        return Boolean.class;
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(variableResolverFactory.isResolveable(this.nameCache) || !(obj2 == null || n.b(obj2.getClass(), this.nameCache) == null));
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(variableResolverFactory.isResolveable(this.nameCache) || !(obj2 == null || n.b(obj2.getClass(), this.nameCache) == null));
    }
}
