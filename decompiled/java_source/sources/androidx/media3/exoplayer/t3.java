package androidx.media3.exoplayer;

import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes2.dex */
public final class t3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f12912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f12913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.i f12914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.media3.common.e0 f12915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f12917f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Looper f12918g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f12919h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f12920i = C.TIME_UNSET;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f12921j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f12922k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f12923l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f12924m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f12925n;

    public interface a {
        void e(t3 t3Var);
    }

    public interface b {
        void handleMessage(int i11, Object obj);
    }

    public t3(a aVar, b bVar, androidx.media3.common.e0 e0Var, int i11, androidx.media3.common.util.i iVar, Looper looper) {
        this.f12913b = aVar;
        this.f12912a = bVar;
        this.f12915d = e0Var;
        this.f12918g = looper;
        this.f12914c = iVar;
        this.f12919h = i11;
    }

    public boolean a() {
        return this.f12921j;
    }

    public Looper b() {
        return this.f12918g;
    }

    public int c() {
        return this.f12919h;
    }

    public Object d() {
        return this.f12917f;
    }

    public long e() {
        return this.f12920i;
    }

    public b f() {
        return this.f12912a;
    }

    public androidx.media3.common.e0 g() {
        return this.f12915d;
    }

    public int h() {
        return this.f12916e;
    }

    public synchronized boolean i() {
        return this.f12925n;
    }

    public synchronized void j(boolean z10) {
        this.f12923l = z10 | this.f12923l;
        this.f12924m = true;
        notifyAll();
    }

    public t3 k() {
        androidx.media3.common.util.a.g(!this.f12922k);
        if (this.f12920i == C.TIME_UNSET) {
            androidx.media3.common.util.a.a(this.f12921j);
        }
        this.f12922k = true;
        this.f12913b.e(this);
        return this;
    }

    public t3 l(Object obj) {
        androidx.media3.common.util.a.g(!this.f12922k);
        this.f12917f = obj;
        return this;
    }

    public t3 m(int i11) {
        androidx.media3.common.util.a.g(!this.f12922k);
        this.f12916e = i11;
        return this;
    }
}
