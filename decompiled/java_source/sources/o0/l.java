package o0;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f70612a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f70613b = b(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f70614c = b(9205357640488583168L);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return l.f70613b;
        }
    }

    public static long b(long j11) {
        return j11;
    }

    public static final float c(long j11) {
        return i.g(Float.intBitsToFloat((int) (j11 & 4294967295L)));
    }

    public static final float d(long j11) {
        return i.g(Float.intBitsToFloat((int) (j11 >> 32)));
    }
}
