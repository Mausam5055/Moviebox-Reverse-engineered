package org.mvel2.integration.impl;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class IndexedVariableResolverFactory extends BaseVariableResolverFactory {
    public IndexedVariableResolverFactory(String[] strArr, Object[] objArr) {
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = createResolvers(objArr, strArr.length);
    }

    public IndexedVariableResolverFactory(String[] strArr, Object[] objArr, VariableResolverFactory variableResolverFactory) {
        this.indexedVariableNames = strArr;
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory();
        this.nextFactory = mapVariableResolverFactory;
        mapVariableResolverFactory.setNextFactory(variableResolverFactory);
        this.indexedVariableResolvers = createResolvers(objArr, strArr.length);
    }

    public IndexedVariableResolverFactory(String[] strArr, VariableResolver[] variableResolverArr) {
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = variableResolverArr;
    }

    private static VariableResolver[] createResolvers(Object[] objArr, int i11) {
        VariableResolver[] variableResolverArr = new VariableResolver[i11];
        int i12 = 0;
        while (i12 < i11) {
            variableResolverArr[i12] = i12 >= objArr.length ? new SimpleValueResolver(null) : new IndexVariableResolver(i12, objArr);
            i12++;
        }
        return variableResolverArr;
    }

    private VariableResolver getResolver(String str) {
        int i11 = 0;
        while (true) {
            String[] strArr = this.indexedVariableNames;
            if (i11 >= strArr.length) {
                return null;
            }
            if (strArr[i11].equals(str)) {
                return this.indexedVariableResolvers[i11];
            }
            i11++;
        }
    }

    protected VariableResolver addResolver(String str, VariableResolver variableResolver) {
        this.variableResolvers.put(str, variableResolver);
        return variableResolver;
    }

    public void clear() {
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i11, String str, Object obj) {
        VariableResolver variableResolver = this.indexedVariableResolvers[i11];
        variableResolver.setValue(obj);
        return variableResolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            resolver.setValue(obj);
        }
        return resolver;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            resolver.setValue(obj);
        }
        return resolver;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getIndexedVariableResolver(int i11) {
        return this.indexedVariableResolvers[i11];
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        return new HashSet(Arrays.asList(this.indexedVariableNames));
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            return resolver;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory != null) {
            return variableResolverFactory.getVariableResolver(str);
        }
        throw new UnresolveablePropertyException("unable to resolve variable '" + str + "'");
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return true;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        VariableResolverFactory variableResolverFactory;
        return isTarget(str) || ((variableResolverFactory = this.nextFactory) != null && variableResolverFactory.isResolveable(str));
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        for (String str2 : this.indexedVariableNames) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }
}
