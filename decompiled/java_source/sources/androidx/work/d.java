package androidx.work;

import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Build;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final b f15461j = new b(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final d f15462k = new d(null, false, false, false, 15, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NetworkType f15463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.work.impl.utils.v f15464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f15465c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f15466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f15468f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f15469g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final long f15470h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Set f15471i;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f15472a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f15473b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f15476e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f15477f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.work.impl.utils.v f15474c = new androidx.work.impl.utils.v(null, 1, null);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private NetworkType f15475d = NetworkType.NOT_REQUIRED;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f15478g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f15479h = -1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Set f15480i = new LinkedHashSet();

        public final d a() {
            Set setF;
            long j11;
            long j12;
            if (Build.VERSION.SDK_INT >= 24) {
                setF = CollectionsKt.W0(this.f15480i);
                j11 = this.f15478g;
                j12 = this.f15479h;
            } else {
                setF = SetsKt.f();
                j11 = -1;
                j12 = -1;
            }
            return new d(this.f15474c, this.f15475d, this.f15472a, this.f15473b, this.f15476e, this.f15477f, j11, j12, setF);
        }

        public final a b(NetworkType networkType) {
            Intrinsics.h(networkType, "networkType");
            this.f15475d = networkType;
            this.f15474c = new androidx.work.impl.utils.v(null, 1, null);
            return this;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Uri f15481a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f15482b;

        public c(Uri uri, boolean z10) {
            Intrinsics.h(uri, "uri");
            this.f15481a = uri;
            this.f15482b = z10;
        }

        public final Uri a() {
            return this.f15481a;
        }

        public final boolean b() {
            return this.f15482b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!Intrinsics.c(c.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
            c cVar = (c) obj;
            return Intrinsics.c(this.f15481a, cVar.f15481a) && this.f15482b == cVar.f15482b;
        }

        public int hashCode() {
            return (this.f15481a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f15482b);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(NetworkType requiredNetworkType, boolean z10, boolean z11, boolean z12) {
        this(requiredNetworkType, z10, false, z11, z12);
        Intrinsics.h(requiredNetworkType, "requiredNetworkType");
    }

    public /* synthetic */ d(NetworkType networkType, boolean z10, boolean z11, boolean z12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? false : z11, (i11 & 8) != 0 ? false : z12);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(NetworkType requiredNetworkType, boolean z10, boolean z11, boolean z12, boolean z13) {
        this(requiredNetworkType, z10, z11, z12, z13, -1L, 0L, null, PsExtractor.AUDIO_STREAM, null);
        Intrinsics.h(requiredNetworkType, "requiredNetworkType");
    }

    public d(NetworkType requiredNetworkType, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, Set contentUriTriggers) {
        Intrinsics.h(requiredNetworkType, "requiredNetworkType");
        Intrinsics.h(contentUriTriggers, "contentUriTriggers");
        this.f15464b = new androidx.work.impl.utils.v(null, 1, null);
        this.f15463a = requiredNetworkType;
        this.f15465c = z10;
        this.f15466d = z11;
        this.f15467e = z12;
        this.f15468f = z13;
        this.f15469g = j11;
        this.f15470h = j12;
        this.f15471i = contentUriTriggers;
    }

    public /* synthetic */ d(NetworkType networkType, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, Set set, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? NetworkType.NOT_REQUIRED : networkType, (i11 & 2) != 0 ? false : z10, (i11 & 4) != 0 ? false : z11, (i11 & 8) != 0 ? false : z12, (i11 & 16) == 0 ? z13 : false, (i11 & 32) != 0 ? -1L : j11, (i11 & 64) == 0 ? j12 : -1L, (i11 & 128) != 0 ? SetsKt.f() : set);
    }

    public d(d other) {
        Intrinsics.h(other, "other");
        this.f15465c = other.f15465c;
        this.f15466d = other.f15466d;
        this.f15464b = other.f15464b;
        this.f15463a = other.f15463a;
        this.f15467e = other.f15467e;
        this.f15468f = other.f15468f;
        this.f15471i = other.f15471i;
        this.f15469g = other.f15469g;
        this.f15470h = other.f15470h;
    }

    public d(androidx.work.impl.utils.v requiredNetworkRequestCompat, NetworkType requiredNetworkType, boolean z10, boolean z11, boolean z12, boolean z13, long j11, long j12, Set contentUriTriggers) {
        Intrinsics.h(requiredNetworkRequestCompat, "requiredNetworkRequestCompat");
        Intrinsics.h(requiredNetworkType, "requiredNetworkType");
        Intrinsics.h(contentUriTriggers, "contentUriTriggers");
        this.f15464b = requiredNetworkRequestCompat;
        this.f15463a = requiredNetworkType;
        this.f15465c = z10;
        this.f15466d = z11;
        this.f15467e = z12;
        this.f15468f = z13;
        this.f15469g = j11;
        this.f15470h = j12;
        this.f15471i = contentUriTriggers;
    }

    public final long a() {
        return this.f15470h;
    }

    public final long b() {
        return this.f15469g;
    }

    public final Set c() {
        return this.f15471i;
    }

    public final NetworkRequest d() {
        return this.f15464b.b();
    }

    public final androidx.work.impl.utils.v e() {
        return this.f15464b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(d.class, obj.getClass())) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f15465c == dVar.f15465c && this.f15466d == dVar.f15466d && this.f15467e == dVar.f15467e && this.f15468f == dVar.f15468f && this.f15469g == dVar.f15469g && this.f15470h == dVar.f15470h && Intrinsics.c(d(), dVar.d()) && this.f15463a == dVar.f15463a) {
            return Intrinsics.c(this.f15471i, dVar.f15471i);
        }
        return false;
    }

    public final NetworkType f() {
        return this.f15463a;
    }

    public final boolean g() {
        return Build.VERSION.SDK_INT < 24 || !this.f15471i.isEmpty();
    }

    public final boolean h() {
        return this.f15467e;
    }

    public int hashCode() {
        int iHashCode = ((((((((this.f15463a.hashCode() * 31) + (this.f15465c ? 1 : 0)) * 31) + (this.f15466d ? 1 : 0)) * 31) + (this.f15467e ? 1 : 0)) * 31) + (this.f15468f ? 1 : 0)) * 31;
        long j11 = this.f15469g;
        int i11 = (iHashCode + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f15470h;
        int iHashCode2 = (((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + this.f15471i.hashCode()) * 31;
        NetworkRequest networkRequestD = d();
        return iHashCode2 + (networkRequestD != null ? networkRequestD.hashCode() : 0);
    }

    public final boolean i() {
        return this.f15465c;
    }

    public final boolean j() {
        return this.f15466d;
    }

    public final boolean k() {
        return this.f15468f;
    }

    public String toString() {
        return "Constraints{requiredNetworkType=" + this.f15463a + ", requiresCharging=" + this.f15465c + ", requiresDeviceIdle=" + this.f15466d + ", requiresBatteryNotLow=" + this.f15467e + ", requiresStorageNotLow=" + this.f15468f + ", contentTriggerUpdateDelayMillis=" + this.f15469g + ", contentTriggerMaxDelayMillis=" + this.f15470h + ", contentUriTriggers=" + this.f15471i + ", }";
    }
}
