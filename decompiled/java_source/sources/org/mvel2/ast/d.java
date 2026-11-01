package org.mvel2.ast;

import org.mvel2.integration.VariableResolverFactory;

/* JADX INFO: loaded from: classes7.dex */
public class d extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final VariableResolverFactory f71952b;

    public d(Function function, VariableResolverFactory variableResolverFactory) {
        super(function);
        this.f71952b = variableResolverFactory;
    }

    @Override // org.mvel2.ast.b
    public Object a(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
        return this.f71951a.call(obj, obj2, new InvokationContextFactory(variableResolverFactory, this.f71952b), objArr);
    }

    public VariableResolverFactory c() {
        return this.f71952b;
    }

    public String toString() {
        return "function_prototype:" + this.f71951a.getName();
    }
}
