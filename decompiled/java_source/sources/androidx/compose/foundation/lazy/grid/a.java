package androidx.compose.foundation.lazy.grid;

import androidx.collection.s;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f2950a;

    private /* synthetic */ a(long j11) {
        this.f2950a = j11;
    }

    public static final /* synthetic */ a a(long j11) {
        return new a(j11);
    }

    public static boolean b(long j11, Object obj) {
        return (obj instanceof a) && j11 == ((a) obj).e();
    }

    public static int c(long j11) {
        return s.a(j11);
    }

    public static String d(long j11) {
        return "GridItemSpan(packedValue=" + j11 + ')';
    }

    public final /* synthetic */ long e() {
        return this.f2950a;
    }

    public boolean equals(Object obj) {
        return b(this.f2950a, obj);
    }

    public int hashCode() {
        return c(this.f2950a);
    }

    public String toString() {
        return d(this.f2950a);
    }
}
