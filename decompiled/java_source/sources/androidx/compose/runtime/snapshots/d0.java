package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.AtomicInt;

/* JADX INFO: loaded from: classes.dex */
public abstract class d0 implements c0 {
    public static final int $stable = 0;
    private final AtomicInt readerKind = new AtomicInt(0);

    /* JADX INFO: renamed from: isReadIn-h_f27i8$runtime_release, reason: not valid java name */
    public final boolean m100isReadInh_f27i8$runtime_release(int i11) {
        return (i11 & f.a(this.readerKind.get())) != 0;
    }

    @Override // androidx.compose.runtime.snapshots.c0
    public /* synthetic */ e0 mergeRecords(e0 e0Var, e0 e0Var2, e0 e0Var3) {
        return b0.a(this, e0Var, e0Var2, e0Var3);
    }

    /* JADX INFO: renamed from: recordReadIn-h_f27i8$runtime_release, reason: not valid java name */
    public final void m101recordReadInh_f27i8$runtime_release(int i11) {
        int iA;
        do {
            iA = f.a(this.readerKind.get());
            if ((iA & i11) != 0) {
                return;
            }
        } while (!this.readerKind.compareAndSet(iA, f.a(iA | i11)));
    }
}
