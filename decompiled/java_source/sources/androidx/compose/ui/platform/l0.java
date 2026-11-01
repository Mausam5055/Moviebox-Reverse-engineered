package androidx.compose.ui.platform;

import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes.dex */
public final class l0 implements o2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewConfiguration f5840a;

    public l0(ViewConfiguration viewConfiguration) {
        this.f5840a = viewConfiguration;
    }

    @Override // androidx.compose.ui.platform.o2
    public long a() {
        return ViewConfiguration.getDoubleTapTimeout();
    }

    @Override // androidx.compose.ui.platform.o2
    public long b() {
        return 40L;
    }

    @Override // androidx.compose.ui.platform.o2
    public long c() {
        return ViewConfiguration.getLongPressTimeout();
    }

    @Override // androidx.compose.ui.platform.o2
    public /* synthetic */ long d() {
        return n2.b(this);
    }

    @Override // androidx.compose.ui.platform.o2
    public float e() {
        return this.f5840a.getScaledMaximumFlingVelocity();
    }

    @Override // androidx.compose.ui.platform.o2
    public float f() {
        return this.f5840a.getScaledTouchSlop();
    }
}
