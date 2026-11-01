package androidx.room;

import java.lang.ref.WeakReference;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class s0 extends InvalidationTracker.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InvalidationTracker f14731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference f14732c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(InvalidationTracker tracker, InvalidationTracker.b delegate) {
        super(delegate.a());
        Intrinsics.h(tracker, "tracker");
        Intrinsics.h(delegate, "delegate");
        this.f14731b = tracker;
        this.f14732c = new WeakReference(delegate);
    }

    @Override // androidx.room.InvalidationTracker.b
    public void c(Set tables) {
        Intrinsics.h(tables, "tables");
        InvalidationTracker.b bVar = (InvalidationTracker.b) this.f14732c.get();
        if (bVar == null) {
            this.f14731b.z(this);
        } else {
            bVar.c(tables);
        }
    }
}
