package com.mbridge.msdk.mbsignalcommon.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static double f36508f = -1.0d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f36509a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AudioManager f36510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f36511c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f36512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f36513e;

    private static class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<d> f36514a;

        public a(d dVar) {
            this.f36514a = new WeakReference<>(dVar);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            d dVar;
            b bVarB;
            if (!"android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) || intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) != 3 || (dVar = this.f36514a.get()) == null || (bVarB = dVar.b()) == null) {
                return;
            }
            double dA = dVar.a();
            if (dA >= 0.0d) {
                bVarB.a(dA);
            }
        }
    }

    public interface b {
        void a(double d11);
    }

    public d(Context context) {
        this.f36509a = context;
        this.f36510b = (AudioManager) context.getApplicationContext().getSystemService(MimeTypes.BASE_TYPE_AUDIO);
    }

    public double a() {
        AudioManager audioManager = this.f36510b;
        int streamMaxVolume = audioManager != null ? audioManager.getStreamMaxVolume(3) : -1;
        AudioManager audioManager2 = this.f36510b;
        double streamVolume = (((double) (audioManager2 != null ? audioManager2.getStreamVolume(3) : -1)) * 100.0d) / ((double) streamMaxVolume);
        f36508f = streamVolume;
        return streamVolume;
    }

    public void a(b bVar) {
        this.f36512d = bVar;
    }

    public b b() {
        return this.f36512d;
    }

    public void c() {
        if (this.f36509a != null) {
            this.f36513e = new a(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            this.f36509a.registerReceiver(this.f36513e, intentFilter);
            this.f36511c = true;
        }
    }

    public void d() {
        Context context;
        if (!this.f36511c || (context = this.f36509a) == null) {
            return;
        }
        try {
            context.unregisterReceiver(this.f36513e);
            this.f36512d = null;
            this.f36511c = false;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
