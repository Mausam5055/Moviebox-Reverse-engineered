package androidx.compose.ui.semantics;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f5959d = new a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final e f5960e = new e(0.0f, RangesKt.b(0.0f, 0.0f), 0, 4, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f5961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ClosedFloatingPointRange f5962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f5963c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a() {
            return e.f5960e;
        }
    }

    public e(float f11, ClosedFloatingPointRange closedFloatingPointRange, int i11) {
        this.f5961a = f11;
        this.f5962b = closedFloatingPointRange;
        this.f5963c = i11;
        if (Float.isNaN(f11)) {
            throw new IllegalArgumentException("current must not be NaN");
        }
    }

    public /* synthetic */ e(float f11, ClosedFloatingPointRange closedFloatingPointRange, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, closedFloatingPointRange, (i12 & 4) != 0 ? 0 : i11);
    }

    public final float b() {
        return this.f5961a;
    }

    public final ClosedFloatingPointRange c() {
        return this.f5962b;
    }

    public final int d() {
        return this.f5963c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f5961a == eVar.f5961a && Intrinsics.c(this.f5962b, eVar.f5962b) && this.f5963c == eVar.f5963c;
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.f5961a) * 31) + this.f5962b.hashCode()) * 31) + this.f5963c;
    }

    public String toString() {
        return "ProgressBarRangeInfo(current=" + this.f5961a + ", range=" + this.f5962b + ", steps=" + this.f5963c + ')';
    }
}
