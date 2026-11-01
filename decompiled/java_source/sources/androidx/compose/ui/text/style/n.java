package androidx.compose.ui.text.style;

import kotlin.jvm.internal.DefaultConstructorMarker;
import o0.w;
import o0.x;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f6429c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final n f6430d = new n(0, 0, 3, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f6431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f6432b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final n a() {
            return n.f6430d;
        }
    }

    private n(long j11, long j12) {
        this.f6431a = j11;
        this.f6432b = j12;
    }

    public /* synthetic */ n(long j11, long j12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? x.c(0) : j11, (i11 & 2) != 0 ? x.c(0) : j12, null);
    }

    public /* synthetic */ n(long j11, long j12, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j12);
    }

    public final long b() {
        return this.f6431a;
    }

    public final long c() {
        return this.f6432b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return w.e(this.f6431a, nVar.f6431a) && w.e(this.f6432b, nVar.f6432b);
    }

    public int hashCode() {
        return (w.i(this.f6431a) * 31) + w.i(this.f6432b);
    }

    public String toString() {
        return "TextIndent(firstLine=" + ((Object) w.j(this.f6431a)) + ", restLine=" + ((Object) w.j(this.f6432b)) + ')';
    }
}
