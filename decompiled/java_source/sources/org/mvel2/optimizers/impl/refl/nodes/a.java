package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.b;

/* JADX INFO: loaded from: classes7.dex */
public class a implements org.mvel2.compiler.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private org.mvel2.compiler.a f72002a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private char[] f72003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72004c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f72005d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private org.mvel2.compiler.a f72006e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ParserContext f72007f;

    public a(ParserContext parserContext, org.mvel2.compiler.a aVar, char[] cArr, int i11, int i12) {
        this.f72002a = aVar;
        this.f72004c = i11;
        this.f72005d = i12;
        this.f72003b = cArr;
        this.f72007f = parserContext;
    }

    private Object b(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.f72006e != null) {
            return this.f72002a.getValue(obj, obj2, variableResolverFactory);
        }
        Object value = this.f72002a.getValue(obj, obj2, variableResolverFactory);
        org.mvel2.optimizers.a aVarC = b.c();
        this.f72006e = aVarC.optimizeAccessor(this.f72007f, this.f72003b, this.f72004c, this.f72005d, value, obj2, variableResolverFactory, false, this.f72002a.getKnownEgressType());
        return aVarC.getResultOptPass();
    }

    @Override // org.mvel2.compiler.a
    public Class getKnownEgressType() {
        return this.f72006e.getKnownEgressType();
    }

    @Override // org.mvel2.compiler.a
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        org.mvel2.compiler.a aVar = this.f72006e;
        return aVar == null ? b(obj, obj2, variableResolverFactory) : aVar.getValue(b(obj, obj2, variableResolverFactory), obj2, variableResolverFactory);
    }

    @Override // org.mvel2.compiler.a
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.f72006e.setValue(b(obj, obj2, variableResolverFactory), obj2, variableResolverFactory, obj3);
    }
}
