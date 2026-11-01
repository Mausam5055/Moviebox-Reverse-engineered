package com.transsion.player.mediasession;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ko.l0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/transsion/player/mediasession/MusicNotificationBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "a", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicNotificationBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsion.player.mediasession.MusicNotificationBroadcastReceiver$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PendingIntent a() {
            Intent intent = new Intent(Utils.a(), (Class<?>) MusicNotificationBroadcastReceiver.class);
            intent.setAction("com.transsion.player.mediasession.NotificationUtil.DeleteIntent");
            PendingIntent broadcast = PendingIntent.getBroadcast(Utils.a(), 0, intent, 201326592);
            Intrinsics.e(broadcast);
            return broadcast;
        }

        public final void b() {
            MusicNotificationBroadcastReceiver musicNotificationBroadcastReceiver = new MusicNotificationBroadcastReceiver();
            IntentFilter intentFilter = new IntentFilter("com.transsion.player.mediasession.NotificationUtil.DeleteIntent");
            if (Build.VERSION.SDK_INT >= 33) {
                Utils.a().registerReceiver(musicNotificationBroadcastReceiver, intentFilter, 4);
            } else {
                Utils.a().registerReceiver(musicNotificationBroadcastReceiver, intentFilter);
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.h(context, "context");
        String action = intent != null ? intent.getAction() : null;
        if (action != null && action.hashCode() == -1731612133 && action.equals("com.transsion.player.mediasession.NotificationUtil.DeleteIntent")) {
            com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
            if (gVarH != null) {
                gVarH.release();
            }
            h.f48399a.r(false);
        }
    }
}
