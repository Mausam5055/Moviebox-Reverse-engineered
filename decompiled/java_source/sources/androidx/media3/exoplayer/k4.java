package androidx.media3.exoplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Looper;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
final class k4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f12058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f12059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.g f12060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioManager f12061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f12062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12063f;

    public interface b {
        void l(int i11);

        void r(int i11, boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12064a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f12066c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f12067d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f12068e;

        public c(int i11, int i12, boolean z10, int i13, int i14) {
            this.f12064a = i11;
            this.f12065b = i12;
            this.f12066c = z10;
            this.f12067d = i13;
            this.f12068e = i14;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class d extends BroadcastReceiver {
        private d() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            if (k4.this.f12062e == null) {
                return;
            }
            k4.this.f12060c.i(k4.this.j(((c) k4.this.f12060c.d()).f12064a));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            k4.this.f12060c.h(new Runnable() { // from class: androidx.media3.exoplayer.l4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12103a.b();
                }
            });
        }
    }

    public k4(Context context, b bVar, final int i11, Looper looper, Looper looper2, androidx.media3.common.util.i iVar) {
        this.f12058a = context.getApplicationContext();
        this.f12059b = bVar;
        androidx.media3.common.util.g gVar = new androidx.media3.common.util.g(new c(i11, 0, false, 0, 0), looper, looper2, iVar, new androidx.media3.common.util.g.a() { // from class: androidx.media3.exoplayer.e4
            @Override // androidx.media3.common.util.g.a
            public final void a(Object obj, Object obj2) {
                this.f11627a.s((k4.c) obj, (k4.c) obj2);
            }
        });
        this.f12060c = gVar;
        gVar.h(new Runnable() { // from class: androidx.media3.exoplayer.f4
            @Override // java.lang.Runnable
            public final void run() {
                this.f11634a.n(i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c j(int i11) {
        androidx.media3.common.util.a.e(this.f12061d);
        return new c(i11, t1.m.f(this.f12061d, i11), t1.m.g(this.f12061d, i11), t1.m.e(this.f12061d, i11), t1.m.d(this.f12061d, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(int i11) {
        this.f12061d = (AudioManager) androidx.media3.common.util.a.i((AudioManager) this.f12058a.getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        d dVar = new d();
        try {
            this.f12058a.registerReceiver(dVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f12062e = dVar;
        } catch (RuntimeException e11) {
            androidx.media3.common.util.u.i("StreamVolumeManager", "Error registering stream volume receiver", e11);
        }
        this.f12060c.i(j(i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c o(c cVar) {
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c p(c cVar) {
        d dVar = this.f12062e;
        if (dVar != null) {
            try {
                this.f12058a.unregisterReceiver(dVar);
            } catch (RuntimeException e11) {
                androidx.media3.common.util.u.i("StreamVolumeManager", "Error unregistering stream volume receiver", e11);
            }
            this.f12062e = null;
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c q(boolean z10, int i11, c cVar) {
        if (cVar.f12066c == z10) {
            return cVar;
        }
        androidx.media3.common.util.a.e(this.f12061d);
        if (androidx.media3.common.util.a1.f10350a >= 23) {
            this.f12061d.adjustStreamVolume(cVar.f12064a, z10 ? -100 : 100, i11);
        } else {
            this.f12061d.setStreamMute(cVar.f12064a, z10);
        }
        return j(cVar.f12064a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c r(boolean z10, c cVar) {
        int i11;
        int i12 = cVar.f12064a;
        if (cVar.f12066c == z10) {
            i11 = cVar.f12065b;
        } else {
            i11 = z10 ? 0 : this.f12063f;
        }
        return new c(i12, i11, z10, cVar.f12067d, cVar.f12068e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(c cVar, c cVar2) {
        boolean z10 = cVar.f12066c;
        if (!z10 && cVar2.f12066c) {
            this.f12063f = cVar.f12065b;
        }
        int i11 = cVar.f12065b;
        int i12 = cVar2.f12065b;
        if (i11 != i12 || z10 != cVar2.f12066c) {
            this.f12059b.r(i12, cVar2.f12066c);
        }
        int i13 = cVar.f12064a;
        int i14 = cVar2.f12064a;
        if (i13 == i14 && cVar.f12067d == cVar2.f12067d && cVar.f12068e == cVar2.f12068e) {
            return;
        }
        this.f12059b.l(i14);
    }

    public int k() {
        return ((c) this.f12060c.d()).f12068e;
    }

    public int l() {
        return ((c) this.f12060c.d()).f12067d;
    }

    public boolean m() {
        return ((c) this.f12060c.d()).f12066c;
    }

    public void t() {
        this.f12060c.j(new com.google.common.base.f() { // from class: androidx.media3.exoplayer.i4
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return k4.o((k4.c) obj);
            }
        }, new com.google.common.base.f() { // from class: androidx.media3.exoplayer.j4
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return this.f12049a.p((k4.c) obj);
            }
        });
    }

    public void u(final boolean z10, final int i11) {
        this.f12060c.j(new com.google.common.base.f() { // from class: androidx.media3.exoplayer.g4
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return this.f11640a.r(z10, (k4.c) obj);
            }
        }, new com.google.common.base.f() { // from class: androidx.media3.exoplayer.h4
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return this.f11657a.q(z10, i11, (k4.c) obj);
            }
        });
    }
}
