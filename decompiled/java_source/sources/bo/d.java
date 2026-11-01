package bo;

import androidx.collection.s;
import androidx.compose.foundation.e;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.transsion.player.config.RenderType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RenderType f16642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f16643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f16644c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f16645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f16646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f16647f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f16648g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f16649h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f16650i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f16651j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f16652k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f16653l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f16654m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f16655n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f16656o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f16657p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final String f16658q;

    public d() {
        this(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 131071, null);
    }

    public d(RenderType type, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, long j11, int i17, int i18, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String traceId) {
        Intrinsics.h(type, "type");
        Intrinsics.h(traceId, "traceId");
        this.f16642a = type;
        this.f16643b = z10;
        this.f16644c = i11;
        this.f16645d = i12;
        this.f16646e = i13;
        this.f16647f = i14;
        this.f16648g = i15;
        this.f16649h = i16;
        this.f16650i = j11;
        this.f16651j = i17;
        this.f16652k = i18;
        this.f16653l = z11;
        this.f16654m = z12;
        this.f16655n = z13;
        this.f16656o = z14;
        this.f16657p = z15;
        this.f16658q = traceId;
    }

    public /* synthetic */ d(RenderType renderType, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, long j11, int i17, int i18, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String str, int i19, DefaultConstructorMarker defaultConstructorMarker) {
        this((i19 & 1) != 0 ? RenderType.SURFACE_VIEW : renderType, (i19 & 2) != 0 ? true : z10, (i19 & 4) != 0 ? 50 : i11, (i19 & 8) != 0 ? DefaultLoadControl.DEFAULT_MAX_BUFFER_MS : i12, (i19 & 16) != 0 ? AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS : i13, (i19 & 32) != 0 ? 500 : i14, (i19 & 64) != 0 ? 2 : i15, (i19 & 128) != 0 ? 3 : i16, (i19 & 256) != 0 ? 4000L : j11, (i19 & 512) == 0 ? i17 : 50, (i19 & 1024) != 0 ? 30000 : i18, (i19 & 2048) != 0 ? true : z11, (i19 & 4096) != 0 ? false : z12, (i19 & 8192) != 0 ? false : z13, (i19 & 16384) == 0 ? z14 : false, (32768 & i19) != 0 ? true : z15, (i19 & 65536) != 0 ? "" : str);
    }

    public final int a() {
        return this.f16651j;
    }

    public final boolean b() {
        return this.f16654m;
    }

    public final boolean c() {
        return this.f16656o;
    }

    public final boolean d() {
        return this.f16655n;
    }

    public final boolean e() {
        return this.f16653l;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f16642a == dVar.f16642a && this.f16643b == dVar.f16643b && this.f16644c == dVar.f16644c && this.f16645d == dVar.f16645d && this.f16646e == dVar.f16646e && this.f16647f == dVar.f16647f && this.f16648g == dVar.f16648g && this.f16649h == dVar.f16649h && this.f16650i == dVar.f16650i && this.f16651j == dVar.f16651j && this.f16652k == dVar.f16652k && this.f16653l == dVar.f16653l && this.f16654m == dVar.f16654m && this.f16655n == dVar.f16655n && this.f16656o == dVar.f16656o && this.f16657p == dVar.f16657p && Intrinsics.c(this.f16658q, dVar.f16658q);
    }

    public final int f() {
        return this.f16646e;
    }

    public final int g() {
        return this.f16645d;
    }

    public final int h() {
        return this.f16652k;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((this.f16642a.hashCode() * 31) + e.a(this.f16643b)) * 31) + this.f16644c) * 31) + this.f16645d) * 31) + this.f16646e) * 31) + this.f16647f) * 31) + this.f16648g) * 31) + this.f16649h) * 31) + s.a(this.f16650i)) * 31) + this.f16651j) * 31) + this.f16652k) * 31) + e.a(this.f16653l)) * 31) + e.a(this.f16654m)) * 31) + e.a(this.f16655n)) * 31) + e.a(this.f16656o)) * 31) + e.a(this.f16657p)) * 31) + this.f16658q.hashCode();
    }

    public final boolean i() {
        return this.f16657p;
    }

    public final boolean j() {
        return this.f16643b;
    }

    public final int k() {
        return this.f16644c;
    }

    public final long l() {
        return this.f16650i;
    }

    public final int m() {
        return this.f16648g;
    }

    public final int n() {
        return this.f16647f;
    }

    public final String o() {
        return this.f16658q;
    }

    public final RenderType p() {
        return this.f16642a;
    }

    public String toString() {
        return "VodConfig(type=" + this.f16642a + ", openCache=" + this.f16643b + ", positionTimerIntervalMs=" + this.f16644c + ", maxBufferDuration=" + this.f16645d + ", highBufferDuration=" + this.f16646e + ", startBufferDuration=" + this.f16647f + ", retryCount=" + this.f16648g + ", preloadCount=" + this.f16649h + ", preloadDuration=" + this.f16650i + ", cacheMaxSizeMB=" + this.f16651j + ", networkTimeout=" + this.f16652k + ", enableHardwareDecoder=" + this.f16653l + ", clearFrameWhenStop=" + this.f16654m + ", disableVideo=" + this.f16655n + ", disableAudio=" + this.f16656o + ", openAudioFocus=" + this.f16657p + ", traceId=" + this.f16658q + ")";
    }
}
