package com.transsion.mpush.core.service;

import android.app.NotificationManager;
import android.os.Handler;
import android.service.notification.StatusBarNotification;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.api.PermanentPushMessage;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/transsion/mpush/core/service/SdkNotificationRefreshService$runnable$1", "Ljava/lang/Runnable;", "run", "", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SdkNotificationRefreshService$runnable$1 implements Runnable {
    final /* synthetic */ SdkNotificationRefreshService this$0;

    SdkNotificationRefreshService$runnable$1(SdkNotificationRefreshService sdkNotificationRefreshService) {
        this.this$0 = sdkNotificationRefreshService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean run$lambda$0(SoftReference it) {
        Intrinsics.h(it, "it");
        return it.get() == null;
    }

    @Override // java.lang.Runnable
    public void run() {
        StatusBarNotification[] activeNotifications;
        StatusBarNotification statusBarNotification;
        CollectionsKt.I(this.this$0.msgList, new Function1() { // from class: com.transsion.mpush.core.service.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(SdkNotificationRefreshService$runnable$1.run$lambda$0((SoftReference) obj));
            }
        });
        try {
            NotificationManager notificationManager = this.this$0.manager;
            activeNotifications = notificationManager != null ? notificationManager.getActiveNotifications() : null;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        Integer numValueOf = activeNotifications != null ? Integer.valueOf(activeNotifications.length) : null;
        lg.a.C0828a.f(c0828a, "SdkNoticeRefresh", "[SdkNotificationRefreshService] onRepeat -> Active: " + numValueOf + ", Cached: " + this.this$0.msgList.size(), false, 4, null);
        int length = activeNotifications != null ? activeNotifications.length : 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (activeNotifications != null && (statusBarNotification = activeNotifications[i11]) != null) {
                int id2 = statusBarNotification.getId();
                Iterator it = this.this$0.msgList.iterator();
                PermanentPushMessage permanentPushMessage = null;
                while (it.hasNext()) {
                    Object obj = ((SoftReference) it.next()).get();
                    if (obj instanceof LocalPushMessage) {
                        LocalPushMessage localPushMessage = (LocalPushMessage) obj;
                        if (this.this$0.g(localPushMessage.getMessageId()) == id2) {
                            lg.a.C0828a.f(lg.a.f68839a, "SdkNoticeRefresh", "[SdkNotificationRefreshService] onRepeat -> Refreshing Local: " + localPushMessage.getMessageId(), false, 4, null);
                            localPushMessage.setRefresh(true);
                            ln.a.f68978a.n(obj);
                        }
                    } else if ((obj instanceof PermanentPushMessage) && id2 == 10010) {
                        permanentPushMessage = (PermanentPushMessage) obj;
                    }
                }
                if (permanentPushMessage != null) {
                    lg.a.C0828a.f(lg.a.f68839a, "SdkNoticeRefresh", "[SdkNotificationRefreshService] onRepeat -> Refreshing Permanent", false, 4, null);
                    permanentPushMessage.setRefresh(true);
                    ln.a.f68978a.n(permanentPushMessage);
                }
            }
        }
        Handler handler = this.this$0.handler;
        if (handler != null) {
            handler.postDelayed(this, this.this$0.h());
        }
    }
}
