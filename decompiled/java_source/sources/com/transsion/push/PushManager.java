package com.transsion.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.crypto.TCrypterSdk;
import com.transsion.gslb.GslbSdk;
import com.transsion.push.bean.PushConfig;
import com.transsion.push.bean.PushNotification;
import com.transsion.push.broadcast.PushBroadcastReceiver;
import com.transsion.push.config.PushRepository;
import com.transsion.push.tracker.Tracker;
import com.transsion.push.utils.FirebaseUtils;
import com.transsion.push.utils.NotificationAssistUtils;
import com.transsion.push.utils.PushLogUtils;
import com.transsion.push.utils.PushUtils;
import com.transsion.push.utils.ServiceUtils;
import com.transsion.push.utils.ThreadManager;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class PushManager {
    public static final int SHOW_STATUS_FAIL_NOTI_CLOSE = 6;
    public static final int SHOW_STATUS_FAIL_PRIORITY = 12;
    public static final int SHOW_STATUS_FAIL_REPEAT = 11;
    public static final int SHOW_STATUS_SUCCESS = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicBoolean f50777c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f50778d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PushBroadcastReceiver f50779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TPushListener f50780b;

    /* JADX INFO: loaded from: classes6.dex */
    class a implements GslbSdk.InitListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f50781a;

        a(Context context) {
            this.f50781a = context;
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitFail() {
            PushLogUtils.LOG.g("gslb sdk init fail");
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitSuccess(Map map) {
            PushLogUtils.LOG.g("gslb sdk init success");
            Bundle bundle = new Bundle();
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, PushConstants.PUSH_SERVICE_TYPE_FORCE_UPDATE);
            ServiceUtils.startJobThread(this.f50781a.getApplicationContext(), bundle);
            PushLogUtils.LOG.g("gslb success, force update info to server");
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    class b implements GslbSdk.InitListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f50783a;

        b(Context context) {
            this.f50783a = context;
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitFail() {
            PushLogUtils.LOG.g("gslb sdk init fail");
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitSuccess(Map map) {
            PushLogUtils.LOG.g("gslb sdk init success");
            Bundle bundle = new Bundle();
            bundle.putString(PushConstants.EXTRA_PUSH_SERVICE_TYPE, PushConstants.PUSH_SERVICE_TYPE_FORCE_UPDATE);
            ServiceUtils.startJobThread(this.f50783a.getApplicationContext(), bundle);
            PushLogUtils.LOG.g("gslb success, force update info to server");
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final PushManager f50785a = new PushManager(null);
    }

    private PushManager() {
    }

    /* synthetic */ PushManager(a aVar) {
        this();
    }

    private boolean a() {
        return true;
    }

    private void b() {
        if (a()) {
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            if (this.f50779a == null) {
                this.f50779a = new PushBroadcastReceiver();
            }
            try {
                qk.a.a().registerReceiver(this.f50779a, intentFilter);
            } catch (Exception e11) {
                PushLogUtils.LOG.i("registerReceiver fail, e:" + e11.getMessage());
            }
        }
    }

    public static PushManager getInstance() {
        return c.f50785a;
    }

    public void addCustomNotification(PushNotification pushNotification) {
        if (a()) {
            com.transsion.push.utils.d.a(pushNotification);
        }
    }

    public void getClientId(IClientIdListener iClientIdListener) {
        if (a()) {
            PushRepository.getInstance().getClientId(iClientIdListener);
        }
    }

    public boolean getDebug() {
        if (a()) {
            return PushUtils.o();
        }
        return false;
    }

    public boolean getIsSdkInitFinished() {
        return f50778d;
    }

    public boolean getNotificationSwitch() {
        if (!a()) {
            return false;
        }
        try {
            return com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).c(PushConstants.SP_KEY_PUSH_SWITCH, true);
        } catch (Exception unused) {
            return false;
        }
    }

    public TPushListener getPushListener() {
        return this.f50780b;
    }

    public boolean getTestEnv() {
        if (a()) {
            return PushUtils.s();
        }
        return false;
    }

    public String getToken(Context context) {
        if (a()) {
            return (String) PushRepository.getInstance().getSpValue(PushConstants.SP_KEY_FCM_TOKEN, "");
        }
        return null;
    }

    public void init(Context context) {
        if (a()) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                qk.a.b(context.getApplicationContext());
                if (f50777c.get()) {
                    return;
                }
                GslbSdk.init(context, new String[]{PushConstants.BASE_RELEASE_URL_V2}, new b(context));
                f50777c.set(true);
                TCrypterSdk.b(context.getApplicationContext());
                ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.PushManager.4
                    @Override // java.lang.Runnable
                    public void run() {
                        Tracker.getInstance().init();
                        PushUtils.n();
                        qk.a.f(PushUtils.o());
                        Tracker.getInstance().trackInit();
                        PushLogUtils.LOG.g("start update token 2: ");
                        FirebaseUtils.c();
                    }
                });
                b();
                f50778d = true;
                PushLogUtils.LOG.i("sdk init time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Exception e11) {
                PushLogUtils.LOG.i("init fail, e:" + e11.getMessage());
                f50778d = false;
            }
        }
    }

    public void init(Context context, final String str, final String str2, final boolean z10) {
        if (a()) {
            try {
                qk.a.b(context.getApplicationContext());
                if (f50777c.get()) {
                    return;
                }
                GslbSdk.init(context, new String[]{PushConstants.BASE_RELEASE_URL_V2}, new a(context));
                f50777c.set(true);
                long jCurrentTimeMillis = System.currentTimeMillis();
                TCrypterSdk.b(context.getApplicationContext());
                ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.PushManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Tracker.getInstance().init();
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, str);
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, str2);
                        PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_IS_TEST_ENV, Boolean.valueOf(z10));
                        qk.a.f(PushUtils.o());
                        Tracker.getInstance().trackInit();
                        PushLogUtils.LOG.i("start update token: ");
                        FirebaseUtils.c();
                    }
                });
                b();
                f50778d = true;
                PushLogUtils.LOG.i("sdk init time: " + (System.currentTimeMillis() - jCurrentTimeMillis));
            } catch (Exception e11) {
                PushLogUtils.LOG.i("init fail, e:" + e11.getMessage());
                f50778d = false;
            }
        }
    }

    public void registerPushListener(TPushListener tPushListener) {
        this.f50780b = tPushListener;
    }

    @Deprecated
    public void registerReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        if (a()) {
            try {
                PushLogUtils.LOG.g("registerReceiver --> ");
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(PushConstants.ACTION_PUSH_RECEIVER);
                intentFilter.addAction(PushConstants.ACTION_PUSH_INIT_COMPLETE);
                context.getApplicationContext().registerReceiver(broadcastReceiver, intentFilter);
            } catch (Exception unused) {
            }
        }
    }

    public void setAppInfo(String str, String str2) {
        if (a()) {
            String strE = PushUtils.e();
            String strF = PushUtils.f();
            try {
                if (strE.equalsIgnoreCase(str) && strF.equalsIgnoreCase(str2)) {
                    return;
                }
                if (!TextUtils.isEmpty(str)) {
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_ID, str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    PushRepository.getInstance().putSpValue(PushConstants.SP_KEY_APP_KEY, str2);
                }
                ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.PushManager.6
                    @Override // java.lang.Runnable
                    public void run() {
                        PushRepository.getInstance().syncActive();
                    }
                });
            } catch (Exception unused) {
            }
        }
    }

    public void setNotificationSwitch(boolean z10) {
        if (a()) {
            try {
                com.transsion.core.utils.f.e(PushConstants.SP_FILENAME).l(PushConstants.SP_KEY_PUSH_SWITCH, z10);
            } catch (Exception unused) {
            }
        }
    }

    public void setPushConfig(final PushConfig pushConfig) {
        if (a()) {
            ThreadManager.executeInBackground(new Runnable() { // from class: com.transsion.push.PushManager.5
                @Override // java.lang.Runnable
                public void run() {
                    PushUtils.v(pushConfig);
                }
            });
        }
    }

    public void subscribeToTopic(String str, ITopicListener iTopicListener) {
        if (a()) {
            PushRepository.getInstance().subscribeToTopic(str, iTopicListener);
        }
    }

    public void trackArrive(long j11) {
        if (a()) {
            try {
                Tracker.getInstance().trackTarget(j11, 2, "", "", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
            } catch (Exception unused) {
            }
        }
    }

    public void trackClick(long j11) {
        if (a()) {
            Tracker.getInstance().trackClick(j11);
        }
    }

    public void trackConversion(long j11) {
        if (a()) {
            try {
                Tracker.getInstance().trackConversion(j11);
            } catch (Exception unused) {
            }
        }
    }

    public void trackShow(long j11, int i11) {
        if (a()) {
            try {
                Tracker.getInstance().trackShow(j11, 2, String.valueOf(System.currentTimeMillis()), NotificationAssistUtils.isOpenNotification(qk.a.a()), i11);
            } catch (Exception unused) {
            }
        }
    }

    public void unregisterReceiver(Context context, BroadcastReceiver broadcastReceiver) {
        if (a()) {
            try {
                context.getApplicationContext().unregisterReceiver(broadcastReceiver);
            } catch (Exception unused) {
            }
        }
    }

    public void unsubscribeFromTopic(String str, ITopicListener iTopicListener) {
        if (a()) {
            PushRepository.getInstance().unsubscribeFromTopic(str, iTopicListener);
        }
    }

    public void updateToken(String str) {
        if (a()) {
            PushUtils.B(str);
        }
    }
}
