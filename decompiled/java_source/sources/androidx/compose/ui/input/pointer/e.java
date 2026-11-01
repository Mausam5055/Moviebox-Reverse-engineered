package androidx.compose.ui.input.pointer;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f4982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f4984c;

    private e(long j11, long j12) {
        this.f4982a = j11;
        this.f4983b = j12;
        this.f4984c = y.g.f78470b.c();
    }

    private e(long j11, long j12, long j13) {
        this(j11, j12, (DefaultConstructorMarker) null);
        this.f4984c = j13;
    }

    public /* synthetic */ e(long j11, long j12, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12, j13);
    }

    public /* synthetic */ e(long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12);
    }

    public final long a() {
        return this.f4984c;
    }

    public final long b() {
        return this.f4983b;
    }

    public final long c() {
        return this.f4982a;
    }

    public String toString() {
        return "HistoricalChange(uptimeMillis=" + this.f4982a + ", position=" + ((Object) y.g.t(this.f4983b)) + ')';
    }
}
