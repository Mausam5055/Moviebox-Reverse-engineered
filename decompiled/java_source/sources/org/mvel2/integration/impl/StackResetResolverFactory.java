package org.mvel2.integration.impl;

import java.util.Set;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class StackResetResolverFactory implements VariableResolverFactory {
    private VariableResolverFactory delegate;

    public StackResetResolverFactory(VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.setTiltFlag(false);
        this.delegate = variableResolverFactory;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i11, String str, Object obj) {
        return this.delegate.createIndexedVariable(i11, str, obj);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i11, String str, Object obj, Class<?> cls) {
        return this.delegate.createIndexedVariable(i11, str, obj, cls);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        return this.delegate.createVariable(str, obj);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        return this.delegate.createVariable(str, obj, cls);
    }

    public VariableResolverFactory getDelegate() {
        return this.delegate;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver getIndexedVariableResolver(int i11) {
        return this.delegate.getIndexedVariableResolver(i11);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public Set<String> getKnownVariables() {
        return this.delegate.getKnownVariables();
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolverFactory getNextFactory() {
        return this.delegate.getNextFactory();
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        return this.delegate.getVariableResolver(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return this.delegate.isIndexedFactory();
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        return this.delegate.isResolveable(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.delegate.isTarget(str);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver setIndexedVariableResolver(int i11, VariableResolver variableResolver) {
        return this.delegate.setIndexedVariableResolver(i11, variableResolver);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolverFactory setNextFactory(VariableResolverFactory variableResolverFactory) {
        return this.delegate.setNextFactory(variableResolverFactory);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public void setTiltFlag(boolean z10) {
        if (this.delegate.tiltFlag()) {
            return;
        }
        this.delegate.setTiltFlag(z10);
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean tiltFlag() {
        return this.delegate.tiltFlag();
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public int variableIndexOf(String str) {
        return this.delegate.variableIndexOf(str);
    }
}
