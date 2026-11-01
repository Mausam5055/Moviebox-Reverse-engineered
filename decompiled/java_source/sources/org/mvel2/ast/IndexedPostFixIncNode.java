package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class IndexedPostFixIncNode extends ASTNode {
    private int register;

    public IndexedPostFixIncNode(int i11, ParserContext parserContext) {
        super(parserContext);
        this.register = i11;
        this.egressType = parserContext.getVarOrInputType(parserContext.getIndexedVarNames()[i11]);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override // org.mvel2.ast.ASTNode
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object value = indexedVariableResolver.getValue();
        indexedVariableResolver.setValue(m10.a.f(value, 0, 101, 1));
        return value;
    }
}
