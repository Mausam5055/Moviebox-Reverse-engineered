package o0;

import com.cloud.tmc.kernel.constants.TmcConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70632b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f70633c = e(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f70634d = e(TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f70635e = e(8589934592L);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f70636a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final long a() {
            return y.f70635e;
        }

        public final long b() {
            return y.f70634d;
        }

        public final long c() {
            return y.f70633c;
        }
    }

    private /* synthetic */ y(long j11) {
        this.f70636a = j11;
    }

    public static final /* synthetic */ y d(long j11) {
        return new y(j11);
    }

    public static long e(long j11) {
        return j11;
    }

    public static boolean f(long j11, Object obj) {
        return (obj instanceof y) && j11 == ((y) obj).j();
    }

    public static final boolean g(long j11, long j12) {
        return j11 == j12;
    }

    public static int h(long j11) {
        return androidx.collection.s.a(j11);
    }

    public static String i(long j11) {
        if (g(j11, f70633c)) {
            return "Unspecified";
        }
        if (g(j11, f70634d)) {
            return "Sp";
        }
        return g(j11, f70635e) ? "Em" : "Invalid";
    }

    public boolean equals(Object obj) {
        return f(this.f70636a, obj);
    }

    public int hashCode() {
        return h(this.f70636a);
    }

    public final /* synthetic */ long j() {
        return this.f70636a;
    }

    public String toString() {
        return i(this.f70636a);
    }
}
