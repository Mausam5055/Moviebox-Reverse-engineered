package androidx.media3.exoplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;

/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f11616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.media3.common.util.p f11617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11618d;

    /* JADX INFO: Access modifiers changed from: private */
    final class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f11619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final androidx.media3.common.util.p f11620b;

        public a(androidx.media3.common.util.p pVar, b bVar) {
            this.f11620b = pVar;
            this.f11619a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (e.this.f11618d) {
                this.f11619a.m();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f11620b.post(new Runnable() { // from class: androidx.media3.exoplayer.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11349a.b();
                    }
                });
            }
        }
    }

    public interface b {
        void m();
    }

    public e(Context context, Looper looper, Looper looper2, b bVar, androidx.media3.common.util.i iVar) {
        this.f11615a = context.getApplicationContext();
        this.f11617c = iVar.createHandler(looper, null);
        this.f11616b = new a(iVar.createHandler(looper2, null), bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f11615a.registerReceiver(this.f11616b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f11615a.unregisterReceiver(this.f11616b);
    }

    public void f(boolean z10) {
        if (z10 == this.f11618d) {
            return;
        }
        if (z10) {
            this.f11617c.post(new Runnable() { // from class: androidx.media3.exoplayer.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11259a.d();
                }
            });
            this.f11618d = true;
        } else {
            this.f11617c.post(new Runnable() { // from class: androidx.media3.exoplayer.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f11336a.e();
                }
            });
            this.f11618d = false;
        }
    }
}
