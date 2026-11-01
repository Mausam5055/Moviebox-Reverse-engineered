package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;

/* JADX INFO: loaded from: classes2.dex */
final class p4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f12449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.media3.common.util.p f12450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f12451c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f12452d;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f12453a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private PowerManager.WakeLock f12454b;

        public a(Context context) {
            this.f12453a = context;
        }

        public void a(boolean z10, boolean z11) {
            if (z10 && this.f12454b == null) {
                PowerManager powerManager = (PowerManager) this.f12453a.getSystemService("power");
                if (powerManager == null) {
                    androidx.media3.common.util.u.h("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                    return;
                } else {
                    PowerManager.WakeLock wakeLockNewWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                    this.f12454b = wakeLockNewWakeLock;
                    wakeLockNewWakeLock.setReferenceCounted(false);
                }
            }
            PowerManager.WakeLock wakeLock = this.f12454b;
            if (wakeLock == null) {
                return;
            }
            if (z10 && z11) {
                wakeLock.acquire();
            } else {
                wakeLock.release();
            }
        }
    }

    public p4(Context context, Looper looper, androidx.media3.common.util.i iVar) {
        this.f12449a = new a(context.getApplicationContext());
        this.f12450b = iVar.createHandler(looper, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z10, boolean z11) {
        this.f12449a.a(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(boolean z10) {
        this.f12449a.a(true, z10);
    }

    public void e(final boolean z10) {
        if (this.f12451c == z10) {
            return;
        }
        this.f12451c = z10;
        final boolean z11 = this.f12452d;
        this.f12450b.post(new Runnable() { // from class: androidx.media3.exoplayer.o4
            @Override // java.lang.Runnable
            public final void run() {
                this.f12306a.c(z10, z11);
            }
        });
    }

    public void f(final boolean z10) {
        if (this.f12452d == z10) {
            return;
        }
        this.f12452d = z10;
        if (this.f12451c) {
            this.f12450b.post(new Runnable() { // from class: androidx.media3.exoplayer.n4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12284a.d(z10);
                }
            });
        }
    }
}
