package org.mvel2.ast;

import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Function f71951a;

    public b(Function function) {
        this.f71951a = function;
    }

    public abstract Object a(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr);

    public Function b() {
        return this.f71951a;
    }
}
