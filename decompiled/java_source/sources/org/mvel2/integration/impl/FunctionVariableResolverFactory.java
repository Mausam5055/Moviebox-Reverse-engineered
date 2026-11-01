package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.Function;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class FunctionVariableResolverFactory extends BaseVariableResolverFactory {
    private Function function;
    private boolean noTilt = false;

    public FunctionVariableResolverFactory(Function function, VariableResolverFactory variableResolverFactory, String[] strArr, Object[] objArr) {
        this.function = function;
        this.variableResolvers = new HashMap();
        this.nextFactory = variableResolverFactory;
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = new VariableResolver[strArr.length];
        for (int i11 = 0; i11 < objArr.length; i11++) {
            this.variableResolvers.put(this.indexedVariableNames[i11], null);
            this.indexedVariableResolvers[i11] = new SimpleValueResolver(objArr[i11]);
        }
    }

    private int increaseRegisterTableSize() {
        String[] strArr = this.indexedVariableNames;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        int length = strArr.length;
        int i11 = length + 1;
        this.indexedVariableNames = new String[i11];
        this.indexedVariableResolvers = new VariableResolver[i11];
        for (int i12 = 0; i12 < strArr.length; i12++) {
            this.indexedVariableNames[i12] = strArr[i12];
            this.indexedVariableResolvers[i12] = variableResolverArr[i12];
        }
        return length;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i11, String str, Object obj) {
        int i12 = i11 - this.indexOffset;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i12];
        if (variableResolver != null) {
            variableResolver.setValue(obj);
        } else {
            variableResolverArr[i12] = new SimpleValueResolver(obj);
        }
        this.variableResolvers.put(str, null);
        return this.indexedVariableResolvers[i12];
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver createIndexedVariable(int i11, String str, Object obj, Class<?> cls) {
        int i12 = i11 - this.indexOffset;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i12];
        if (variableResolver != null) {
            variableResolver.setValue(obj);
        } else {
            variableResolverArr[i12] = new SimpleValueResolver(obj);
        }
        return this.indexedVariableResolvers[i12];
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj) {
        VariableResolver variableResolver = getVariableResolver(str);
        if (variableResolver != null) {
            variableResolver.setValue(obj);
            return variableResolver;
        }
        int iIncreaseRegisterTableSize = increaseRegisterTableSize();
        this.indexedVariableNames[iIncreaseRegisterTableSize] = str;
        this.indexedVariableResolvers[iIncreaseRegisterTableSize] = new SimpleValueResolver(obj);
        this.variableResolvers.put(str, null);
        return this.indexedVariableResolvers[iIncreaseRegisterTableSize];
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        Map<String, VariableResolver> map = this.variableResolvers;
        VariableResolver variableResolver = map != null ? map.get(str) : null;
        if (variableResolver == null || variableResolver.getType() == null) {
            return createIndexedVariable(variableIndexOf(str), str, obj);
        }
        throw new RuntimeException("variable already defined within scope: " + variableResolver.getType() + " " + str);
    }

    public Function getFunction() {
        return this.function;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getIndexedVariableResolver(int i11) {
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i11];
        if (variableResolver != null) {
            return variableResolver;
        }
        VariableResolver variableResolver2 = super.getVariableResolver(this.indexedVariableNames[i11]);
        variableResolverArr[i11] = variableResolver2;
        return variableResolver2;
    }

    public VariableResolver[] getIndexedVariableResolvers() {
        return this.indexedVariableResolvers;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public VariableResolver getVariableResolver(String str) {
        int iVariableIndexOf = variableIndexOf(str);
        if (iVariableIndexOf == -1) {
            return super.getVariableResolver(str);
        }
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        if (variableResolverArr[iVariableIndexOf] == null) {
            variableResolverArr[iVariableIndexOf] = new SimpleValueResolver(null);
        }
        this.variableResolvers.put(this.indexedVariableNames[iVariableIndexOf], null);
        return this.indexedVariableResolvers[iVariableIndexOf];
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public boolean isIndexedFactory() {
        return true;
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isResolveable(String str) {
        VariableResolverFactory variableResolverFactory;
        return this.variableResolvers.containsKey(str) || ((variableResolverFactory = this.nextFactory) != null && variableResolverFactory.isResolveable(str));
    }

    @Override // org.mvel2.integration.VariableResolverFactory
    public boolean isTarget(String str) {
        return this.variableResolvers.containsKey(str) || variableIndexOf(str) != -1;
    }

    public void setIndexOffset(int i11) {
        this.indexOffset = i11;
    }

    public void setIndexedVariableResolvers(VariableResolver[] variableResolverArr) {
        this.indexedVariableResolvers = variableResolverArr;
    }

    public VariableResolverFactory setNoTilt(boolean z10) {
        this.noTilt = z10;
        return this;
    }

    @Override // org.mvel2.integration.impl.BaseVariableResolverFactory, org.mvel2.integration.VariableResolverFactory
    public void setTiltFlag(boolean z10) {
        if (this.noTilt) {
            return;
        }
        super.setTiltFlag(z10);
    }

    public void updateParameters(Object[] objArr) {
        for (int i11 = 0; i11 < objArr.length; i11++) {
            this.indexedVariableResolvers[i11] = new SimpleValueResolver(objArr[i11]);
        }
    }
}
