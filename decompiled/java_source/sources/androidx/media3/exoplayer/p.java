package androidx.media3.exoplayer;

import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.RouteDiscoveryPreference;
import android.os.Handler;
import android.os.Looper;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class p implements m4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m4 f12432a;

    /* JADX INFO: Access modifiers changed from: private */
    static final class b implements m4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private AudioManager f12433a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AudioDeviceCallback f12434b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private androidx.media3.common.util.g f12435c;

        class a extends AudioDeviceCallback {
            a() {
            }

            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                b.this.f12435c.i(Boolean.valueOf(b.this.h()));
            }

            @Override // android.media.AudioDeviceCallback
            public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                b.this.f12435c.i(Boolean.valueOf(b.this.h()));
            }
        }

        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean h() {
            for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) androidx.media3.common.util.a.i(this.f12433a)).getDevices(2)) {
                if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 5 || audioDeviceInfo.getType() == 6 || audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                    return true;
                }
                int i11 = androidx.media3.common.util.a1.f10350a;
                if (i11 >= 26 && audioDeviceInfo.getType() == 22) {
                    return true;
                }
                if (i11 >= 28 && audioDeviceInfo.getType() == 23) {
                    return true;
                }
                if (i11 >= 31 && (audioDeviceInfo.getType() == 26 || audioDeviceInfo.getType() == 27)) {
                    return true;
                }
                if (i11 >= 33 && audioDeviceInfo.getType() == 30) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void i() {
            AudioManager audioManager = this.f12433a;
            if (audioManager != null) {
                audioManager.unregisterAudioDeviceCallback((AudioDeviceCallback) androidx.media3.common.util.a.e(this.f12434b));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void j(m4.a aVar, Boolean bool, Boolean bool2) {
            aVar.a(bool2.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(Context context) {
            AudioManager audioManager;
            androidx.media3.common.util.a.e(this.f12435c);
            if (androidx.media3.common.util.a1.L0(context) && (audioManager = (AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO)) != null) {
                this.f12433a = audioManager;
                a aVar = new a();
                this.f12434b = aVar;
                audioManager.registerAudioDeviceCallback(aVar, new Handler((Looper) androidx.media3.common.util.a.e(Looper.myLooper())));
                this.f12435c.i(Boolean.valueOf(h()));
            }
        }

        @Override // androidx.media3.exoplayer.m4
        public boolean a() {
            androidx.media3.common.util.g gVar = this.f12435c;
            if (gVar == null) {
                return true;
            }
            return ((Boolean) gVar.d()).booleanValue();
        }

        @Override // androidx.media3.exoplayer.m4
        public void b(final m4.a aVar, final Context context, Looper looper, Looper looper2, androidx.media3.common.util.i iVar) {
            androidx.media3.common.util.g gVar = new androidx.media3.common.util.g(Boolean.TRUE, looper2, looper, iVar, new androidx.media3.common.util.g.a() { // from class: androidx.media3.exoplayer.r
                @Override // androidx.media3.common.util.g.a
                public final void a(Object obj, Object obj2) {
                    p.b.j(aVar, (Boolean) obj, (Boolean) obj2);
                }
            });
            this.f12435c = gVar;
            gVar.h(new Runnable() { // from class: androidx.media3.exoplayer.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12565a.k(context);
                }
            });
        }

        @Override // androidx.media3.exoplayer.m4
        public void disable() {
            ((androidx.media3.common.util.g) androidx.media3.common.util.a.e(this.f12435c)).h(new Runnable() { // from class: androidx.media3.exoplayer.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12455a.i();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class c implements m4 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final RouteDiscoveryPreference f12437e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private MediaRouter2 f12438a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private MediaRouter2$RouteCallback f12439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private MediaRouter2$ControllerCallback f12440c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.media3.common.util.g f12441d;

        class a extends MediaRouter2$RouteCallback {
            a() {
            }
        }

        class b extends MediaRouter2$ControllerCallback {
            b() {
            }

            public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
                c.this.f12441d.i(Boolean.valueOf(c.j(c.this.f12438a)));
            }
        }

        static {
            c0.a();
            f12437e = t.a(ImmutableList.of(), false).build();
        }

        private c() {
        }

        private static boolean i(MediaRoute2Info mediaRoute2Info, int i11, boolean z10) {
            int suitabilityStatus = mediaRoute2Info.getSuitabilityStatus();
            if (suitabilityStatus == 1) {
                return (i11 == 1 || i11 == 2) && z10;
            }
            return suitabilityStatus == 0;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean j(MediaRouter2 mediaRouter2) {
            int transferReason = h0.a(androidx.media3.common.util.a.e(mediaRouter2)).getSystemController().getRoutingSessionInfo().getTransferReason();
            boolean zWasTransferInitiatedBySelf = mediaRouter2.getSystemController().wasTransferInitiatedBySelf();
            Iterator it = mediaRouter2.getSystemController().getSelectedRoutes().iterator();
            while (it.hasNext()) {
                if (i(a0.a(it.next()), transferReason, zWasTransferInitiatedBySelf)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k() {
            h0.a(androidx.media3.common.util.a.e(this.f12438a)).unregisterControllerCallback(i0.a(androidx.media3.common.util.a.e(this.f12440c)));
            this.f12440c = null;
            this.f12438a.unregisterRouteCallback(k0.a(androidx.media3.common.util.a.e(this.f12439b)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void l(m4.a aVar, Boolean bool, Boolean bool2) {
            aVar.a(bool2.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(Context context) {
            androidx.media3.common.util.a.e(this.f12441d);
            this.f12438a = MediaRouter2.getInstance(context);
            this.f12439b = new a();
            final androidx.media3.common.util.g gVar = this.f12441d;
            Objects.requireNonNull(gVar);
            Executor executor = new Executor() { // from class: androidx.media3.exoplayer.o0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    gVar.h(runnable);
                }
            };
            this.f12438a.registerRouteCallback(executor, this.f12439b, f12437e);
            b bVar = new b();
            this.f12440c = bVar;
            this.f12438a.registerControllerCallback(executor, bVar);
            this.f12441d.i(Boolean.valueOf(j(this.f12438a)));
        }

        @Override // androidx.media3.exoplayer.m4
        public boolean a() {
            androidx.media3.common.util.g gVar = this.f12441d;
            if (gVar == null) {
                return true;
            }
            return ((Boolean) gVar.d()).booleanValue();
        }

        @Override // androidx.media3.exoplayer.m4
        public void b(final m4.a aVar, final Context context, Looper looper, Looper looper2, androidx.media3.common.util.i iVar) {
            androidx.media3.common.util.g gVar = new androidx.media3.common.util.g(Boolean.TRUE, looper2, looper, iVar, new androidx.media3.common.util.g.a() { // from class: androidx.media3.exoplayer.m0
                @Override // androidx.media3.common.util.g.a
                public final void a(Object obj, Object obj2) {
                    p.c.l(aVar, (Boolean) obj, (Boolean) obj2);
                }
            });
            this.f12441d = gVar;
            gVar.h(new Runnable() { // from class: androidx.media3.exoplayer.n0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12273a.m(context);
                }
            });
        }

        @Override // androidx.media3.exoplayer.m4
        public void disable() {
            ((androidx.media3.common.util.g) androidx.media3.common.util.a.i(this.f12441d)).h(new Runnable() { // from class: androidx.media3.exoplayer.l0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12096a.k();
                }
            });
        }
    }

    public p() {
        int i11 = androidx.media3.common.util.a1.f10350a;
        if (i11 >= 35) {
            this.f12432a = new c();
        } else if (i11 >= 23) {
            this.f12432a = new b();
        } else {
            this.f12432a = null;
        }
    }

    @Override // androidx.media3.exoplayer.m4
    public boolean a() {
        m4 m4Var = this.f12432a;
        return m4Var == null || m4Var.a();
    }

    @Override // androidx.media3.exoplayer.m4
    public void b(m4.a aVar, Context context, Looper looper, Looper looper2, androidx.media3.common.util.i iVar) {
        m4 m4Var = this.f12432a;
        if (m4Var != null) {
            m4Var.b(aVar, context, looper, looper2, iVar);
        }
    }

    @Override // androidx.media3.exoplayer.m4
    public void disable() {
        m4 m4Var = this.f12432a;
        if (m4Var != null) {
            m4Var.disable();
        }
    }
}
