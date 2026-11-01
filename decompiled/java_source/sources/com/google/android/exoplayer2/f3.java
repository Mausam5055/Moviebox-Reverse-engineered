package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
final class f3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f25085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f25086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f25087c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AudioManager f25088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f25089e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25090f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25091g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f25092h;

    public interface b {
        void l(int i11);

        void r(int i11, boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = f3.this.f25086b;
            final f3 f3Var = f3.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.g3
                @Override // java.lang.Runnable
                public final void run() {
                    f3.b(f3Var);
                }
            });
        }
    }

    public f3(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.f25085a = applicationContext;
        this.f25086b = handler;
        this.f25087c = bVar;
        AudioManager audioManager = (AudioManager) com.google.android.exoplayer2.util.a.i((AudioManager) applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        this.f25088d = audioManager;
        this.f25090f = 3;
        this.f25091g = f(audioManager, 3);
        this.f25092h = e(audioManager, this.f25090f);
        c cVar = new c();
        try {
            applicationContext.registerReceiver(cVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f25089e = cVar;
        } catch (RuntimeException e11) {
            com.google.android.exoplayer2.util.s.j("StreamVolumeManager", "Error registering stream volume receiver", e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(f3 f3Var) {
        f3Var.i();
    }

    private static boolean e(AudioManager audioManager, int i11) {
        if (com.google.android.exoplayer2.util.p0.f27626a >= 23) {
            return audioManager.isStreamMute(i11);
        }
        return f(audioManager, i11) == 0;
    }

    private static int f(AudioManager audioManager, int i11) {
        try {
            return audioManager.getStreamVolume(i11);
        } catch (RuntimeException e11) {
            com.google.android.exoplayer2.util.s.j("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i11, e11);
            return audioManager.getStreamMaxVolume(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int iF = f(this.f25088d, this.f25090f);
        boolean zE = e(this.f25088d, this.f25090f);
        if (this.f25091g == iF && this.f25092h == zE) {
            return;
        }
        this.f25091g = iF;
        this.f25092h = zE;
        this.f25087c.r(iF, zE);
    }

    public int c() {
        return this.f25088d.getStreamMaxVolume(this.f25090f);
    }

    public int d() {
        if (com.google.android.exoplayer2.util.p0.f27626a >= 28) {
            return this.f25088d.getStreamMinVolume(this.f25090f);
        }
        return 0;
    }

    public void g() {
        c cVar = this.f25089e;
        if (cVar != null) {
            try {
                this.f25085a.unregisterReceiver(cVar);
            } catch (RuntimeException e11) {
                com.google.android.exoplayer2.util.s.j("StreamVolumeManager", "Error unregistering stream volume receiver", e11);
            }
            this.f25089e = null;
        }
    }

    public void h(int i11) {
        if (this.f25090f == i11) {
            return;
        }
        this.f25090f = i11;
        i();
        this.f25087c.l(i11);
    }
}
