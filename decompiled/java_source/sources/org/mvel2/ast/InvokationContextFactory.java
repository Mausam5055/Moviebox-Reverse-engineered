package org.mvel2.ast;

import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class InvokationContextFactory extends MapVariableResolverFactory {
    private VariableResolverFactory protoContext;

    public InvokationContextFactory(VariableResolverFactory variableResolverFactory, VariableResolverFactory variableResolverFactory2) {
        this.nextFactory = variableResolverFactory;
        this.protoContext = variableResolverFactory2;
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        return (!isResolveable(str) || this.protoContext.isResolveable(str)) ? this.protoContext.createVariable(str, obj) : this.nextFactory.createVariable(str, obj);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        return (!isResolveable(str) || this.protoContext.isResolveable(str)) ? this.protoContext.createVariable(str, obj, cls) : this.nextFactory.createVariable(str, obj, cls);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        return (!isResolveable(str) || this.protoContext.isResolveable(str)) ? this.protoContext.getVariableResolver(str) : this.nextFactory.getVariableResolver(str);
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return true;
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        return this.protoContext.isResolveable(str) || this.nextFactory.isResolveable(str);
    }

    @Override // org.mvel2.integration.impl.MapVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.protoContext.isTarget(str);
    }
}
