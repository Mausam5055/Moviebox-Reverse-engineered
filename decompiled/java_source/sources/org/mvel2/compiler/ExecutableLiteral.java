package org.mvel2.compiler;

import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class ExecutableLiteral implements ExecutableStatement {
    private boolean intOptimized;
    private int integer32;
    private Object literal;

    public ExecutableLiteral(int i11) {
        this.integer32 = i11;
        this.literal = Integer.valueOf(i11);
        this.intOptimized = true;
    }

    public ExecutableLiteral(Object obj) {
        this.literal = obj;
        if (obj instanceof Integer) {
            this.integer32 = ((Integer) obj).intValue();
        }
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void computeTypeConversionRule() {
    }

    public int getInteger32() {
        return this.integer32;
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.a
    public Class getKnownEgressType() {
        Object obj = this.literal;
        return obj == null ? Object.class : obj.getClass();
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Class getKnownIngressType() {
        return null;
    }

    public Object getLiteral() {
        return this.literal;
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.literal;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        return this.literal;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean intOptimized() {
        return this.intOptimized;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isConvertableIngressEgress() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isEmptyStatement() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isExplicitCast() {
        return false;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public boolean isLiteralOnly() {
        return true;
    }

    public void setInteger32(int i11) {
        this.integer32 = i11;
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownEgressType(Class cls) {
    }

    @Override // org.mvel2.compiler.ExecutableStatement
    public void setKnownIngressType(Class cls) {
    }

    @Override // org.mvel2.compiler.ExecutableStatement, org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }
}
