package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;

/* JADX INFO: loaded from: classes7.dex */
public class IndexVariableResolver implements VariableResolver {
    private int indexPos;
    private Object[] vars;

    public IndexVariableResolver(int i11, Object[] objArr) {
        this.indexPos = i11;
        this.vars = objArr;
    }

    @Override // org.mvel2.integration.VariableResolver
    public int getFlags() {
        return 0;
    }

    @Override // org.mvel2.integration.VariableResolver
    public String getName() {
        return null;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Class getType() {
        return null;
    }

    @Override // org.mvel2.integration.VariableResolver
    public Object getValue() {
        return this.vars[this.indexPos];
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setStaticType(Class cls) {
    }

    @Override // org.mvel2.integration.VariableResolver
    public void setValue(Object obj) {
        this.vars[this.indexPos] = obj;
    }
}
