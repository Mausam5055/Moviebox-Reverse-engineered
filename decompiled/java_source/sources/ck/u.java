package ck;

import androidx.p009lifecycle.g0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class u implements androidx.p009lifecycle.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f17263a = new u();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f17264b;

    private u() {
    }

    public final void a() {
        g0.f9592i.a().getLifecycle().a(this);
    }

    public final boolean b() {
        return f17264b;
    }

    public final void c(boolean z10) {
        f17264b = z10;
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onDestroy(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onPause(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onResume(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.d(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onStart(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.e(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onStop(androidx.p009lifecycle.u owner) {
        Intrinsics.h(owner, "owner");
        lg.a.C0828a.f(lg.a.f68839a, "DialogSessionManager", "onStop 重置标记为false", false, 4, null);
        f17264b = false;
    }
}
