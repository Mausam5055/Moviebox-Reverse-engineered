package com.transsion.transfer.wifi.create.adapter;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private lv.a f55894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.transfer.wifi.create.a f55895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private n0 f55896c;

    public abstract Object a(Continuation continuation);

    public final String b() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final n0 c() {
        return this.f55896c;
    }

    public final com.transsion.transfer.wifi.create.a d() {
        return this.f55895b;
    }

    public final lv.a e() {
        return this.f55894a;
    }

    public abstract void f();

    public final void g(n0 n0Var) {
        this.f55896c = n0Var;
    }

    public final void h(com.transsion.transfer.wifi.create.a aVar) {
        this.f55895b = aVar;
    }

    public final Object i(lv.a aVar, com.transsion.transfer.wifi.create.a aVar2, n0 n0Var, Continuation continuation) {
        this.f55894a = aVar;
        this.f55895b = aVar2;
        this.f55896c = n0Var;
        Object objA = a(continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f67061a;
    }
}
