package com.transsion.fission;

import android.content.Context;
import com.transsion.fissionapi.IFissionProvider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class FissionProvider implements IFissionProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f44138a = LazyKt.b(new Function0() { // from class: com.transsion.fission.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FissionProvider.m();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final xk.b l() {
        return (xk.b) this.f44138a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xk.b m() {
        return (xk.b) zg.c.f79414e.a().h(xk.b.class);
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public void a(String inviteCode) {
        Intrinsics.h(inviteCode, "inviteCode");
        l.f44151a.c(inviteCode);
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public void b(boolean z10) {
        defpackage.c.f16958a.b().putBoolean("kv_task_is_exists", z10);
        lg.a.C0828a.g(lg.a.f68839a, "updatePalmPayTask() ---> isExists = " + z10, false, 2, null);
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public void c(boolean z10) {
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public String d() {
        return k.f44145a.c();
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public void e(Context context) {
        Intrinsics.h(context, "context");
        new zk.b(context).show();
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public boolean enable() {
        FissionConfig fissionConfigD = k.f44145a.d();
        String htmlUrl = fissionConfigD != null ? fissionConfigD.getHtmlUrl() : null;
        return !(htmlUrl == null || htmlUrl.length() == 0);
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public void f(int i11) {
        if (defpackage.c.f16958a.b().getBoolean("kv_task_is_exists", false)) {
            kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new FissionProvider$finishPalmPayTask$1(i11, this, null), 3, null);
        }
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public boolean g() {
        defpackage.c cVar = defpackage.c.f16958a;
        return cVar.b().getBoolean("kv_task_is_exists", false) && !cVar.b().getBoolean("kv_task_is_finished", false);
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public String h() {
        return l.f44151a.a();
    }

    @Override // com.transsion.fissionapi.IFissionProvider
    public void i(boolean z10) {
    }
}
