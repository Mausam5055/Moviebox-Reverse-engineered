package com.transsion.ad.strategy;

import androidx.p009lifecycle.u;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class k implements androidx.p009lifecycle.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f42236a = new k();

    private k() {
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onDestroy(u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onPause(u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onResume(u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onStart(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.e(this, owner);
        a.f42226a.a();
    }

    @Override // androidx.p009lifecycle.f
    public void onStop(u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.f(this, owner);
        a.f42226a.b();
    }
}
