package com.transsnet.downloader.guard;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.core.app.t;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.widget.R$drawable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u0003J)\u0010\u0011\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0003R\u0014\u0010\u0016\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/transsnet/downloader/guard/DownloadGuardService;", "Landroid/app/Service;", "<init>", "()V", "Landroid/app/Notification;", "a", "()Landroid/app/Notification;", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "", "onCreate", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "onDestroy", "Landroid/os/Binder;", "Landroid/os/Binder;", "binder", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DownloadGuardService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Binder binder = new Binder();

    private final Notification a() {
        Notification notificationC = new NotificationCompat.m(Utils.a(), DownloadGuard.f59384a.f()).J(R$drawable.push_small_logo).E(true).l(false).F(true).c();
        Intrinsics.g(notificationC, "build(...)");
        return notificationC;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.binder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        stopForeground(true);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        try {
            Result.Companion companion = Result.INSTANCE;
            int intExtra = intent != null ? intent.getIntExtra("id", 10086) : 10086;
            int i11 = Build.VERSION.SDK_INT;
            if (i11 < 29 && i11 >= 26) {
                startForeground(intExtra, a());
            } else {
                t.d(Utils.a()).f(intExtra, a());
            }
            Result.m454constructorimpl(Unit.f67061a);
            return 1;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
            return 1;
        }
    }
}
