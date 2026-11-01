package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
public final class k implements t.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f12231b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.common.base.q f12232c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.common.base.q f12233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f12234e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f12235f;

    @Deprecated
    public k() {
        this.f12234e = 0;
        this.f12235f = false;
        this.f12231b = null;
        this.f12232c = null;
        this.f12233d = null;
    }

    public k(Context context) {
        this(context, null, null);
    }

    public k(Context context, com.google.common.base.q qVar, com.google.common.base.q qVar2) {
        this.f12231b = context;
        this.f12234e = 0;
        this.f12235f = false;
        this.f12232c = qVar;
        this.f12233d = qVar2;
    }

    private boolean c() {
        int i11 = a1.f10350a;
        if (i11 >= 31) {
            return true;
        }
        Context context = this.f12231b;
        return context != null && i11 >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen");
    }

    @Override // androidx.media3.exoplayer.mediacodec.t.b
    public t a(t.a aVar) {
        int i11;
        com.google.common.base.q qVar;
        if (a1.f10350a < 23 || !((i11 = this.f12234e) == 1 || (i11 == 0 && c()))) {
            return new r0.b().a(aVar);
        }
        int iK = androidx.media3.common.y.k(aVar.f12250c.f10161o);
        androidx.media3.common.util.u.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + a1.t0(iK));
        com.google.common.base.q qVar2 = this.f12232c;
        c.b bVar = (qVar2 == null || (qVar = this.f12233d) == null) ? new c.b(iK) : new c.b(qVar2, qVar);
        bVar.e(this.f12235f);
        return bVar.a(aVar);
    }

    public k b() {
        this.f12234e = 1;
        return this;
    }
}
