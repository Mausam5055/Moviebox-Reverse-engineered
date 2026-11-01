package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class ItemResolverFactory extends BaseVariableResolverFactory {
    private final ItemResolver resolver;

    public static class ItemResolver implements VariableResolver {
        private final String name;
        private Class type;
        public Object value;

        public ItemResolver(String str) {
            this.type = Object.class;
            this.name = str;
        }

        public ItemResolver(String str, Class cls) {
            this.name = str;
            this.type = cls;
        }

        @Override // org.mvel2.integration.VariableResolver
        public int getFlags() {
            return 0;
        }

        @Override // org.mvel2.integration.VariableResolver
        public String getName() {
            return this.name;
        }

        @Override // org.mvel2.integration.VariableResolver
        public Class getType() {
            return this.type;
        }

        @Override // org.mvel2.integration.VariableResolver
        public Object getValue() {
            return this.value;
        }

        @Override // org.mvel2.integration.VariableResolver
        public void setStaticType(Class cls) {
            this.type = cls;
        }

        @Override // org.mvel2.integration.VariableResolver
        public void setValue(Object obj) {
            this.value = obj;
        }
    }

    public ItemResolverFactory(ItemResolver itemResolver, VariableResolverFactory variableResolverFactory) {
        this.resolver = itemResolver;
        this.nextFactory = variableResolverFactory;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        if (!isTarget(str)) {
            return this.nextFactory.createVariable(str, obj);
        }
        this.resolver.setValue(obj);
        return this.resolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        if (!isTarget(str)) {
            return this.nextFactory.createVariable(str, obj);
        }
        throw new RuntimeException("variable already defined in scope: " + str);
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        return isTarget(str) ? this.resolver : this.nextFactory.getVariableResolver(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        VariableResolverFactory variableResolverFactory;
        return this.resolver.getName().equals(str) || ((variableResolverFactory = this.nextFactory) != null && variableResolverFactory.isResolveable(str));
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.resolver.getName().equals(str);
    }
}
