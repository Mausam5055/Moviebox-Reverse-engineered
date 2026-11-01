package com.transsion.push;

import android.app.Application;
import com.therouter.TheRouter;
import com.transsion.lib.push.R$mipmap;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.mpush.core.config.PushSdkConfig;
import com.transsion.mpush.core.features.FcmPushFeature;
import com.transsion.mpush.core.features.LocalPushFeature;
import com.transsion.mpush.core.features.PermanentPushFeature;
import com.transsion.mpush.core.trigger.PushTriggerManager;
import com.transsion.push.feature.activate.ActivatePushFeature;
import com.transsion.push.feature.seek.SeekPushFeature;
import com.transsion.push.feature.toolbar.NotificationReceiver;
import com.transsion.push.feature.toolbar.ToolbarNotificationUtils;
import com.transsion.push.feature.tpush.FcmPushInterceptor;
import com.transsion.pushapi.TriggerSource;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f implements dz.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f50809d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f50811f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f50806a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f50807b = LazyKt.b(new Function0() { // from class: com.transsion.push.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(f.j());
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f50808c = LazyKt.b(new Function0() { // from class: com.transsion.push.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.i();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f50810e = new Object();

    private f() {
    }

    private final ILoginApi e() {
        return (ILoginApi) f50808c.getValue();
    }

    private final boolean f() {
        return ((Boolean) f50807b.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String h() {
        UserInfo userInfoI;
        String userId;
        ILoginApi iLoginApiE = f50806a.e();
        return (iLoginApiE == null || (userInfoI = iLoginApiE.i()) == null || (userId = userInfoI.getUserId()) == null) ? "" : userId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi i() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j() {
        ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sa_notification_refresh", false, 2, null);
        return !Intrinsics.c(configBeanD != null ? configBeanD.getValue() : null, "false");
    }

    private final void k() {
        if (f50811f) {
            return;
        }
        ILoginApi iLoginApiE = e();
        if (iLoginApiE != null) {
            iLoginApiE.g(this);
        }
        f50811f = true;
    }

    public final void d() {
        com.transsion.mpush.core.fcm.m.f47511a.h();
    }

    public final void g(Application context) {
        Intrinsics.h(context, "context");
        if (f50809d) {
            k();
            return;
        }
        synchronized (f50810e) {
            if (f50809d) {
                f50806a.k();
                return;
            }
            ln.a aVarA = ln.a.f68978a.j(context).a(new LocalPushFeature()).a(new PermanentPushFeature()).a(new SeekPushFeature()).a(new rp.a()).a(new ActivatePushFeature());
            FcmPushFeature fcmPushFeature = new FcmPushFeature();
            fcmPushFeature.d(new FcmPushInterceptor());
            ln.a aVarP = aVarA.a(fcmPushFeature).o(new sp.a()).p(new qp.b("oneroom://com.community.oneroom?type=/main/tab"));
            int i11 = com.tn.lib.widget.R$drawable.push_small_logo;
            int i12 = R$mipmap.ic_default_push;
            f fVar = f50806a;
            aVarP.q(new PushSdkConfig(fVar.f(), i11, "oneroom://com.community.oneroom?type=/main/tab", i12, 0L, null, new com.transsion.push.utils.b().a(), 48, null));
            fVar.k();
            com.transsion.mpush.core.fcm.m.f47511a.r(context, new Function0() { // from class: com.transsion.push.e
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return f.h();
                }
            });
            ToolbarNotificationUtils.f50834a.i();
            NotificationReceiver.INSTANCE.a(context);
            f50809d = true;
            Unit unit = Unit.f67061a;
        }
    }

    public final void l(TriggerSource triggerSource) {
        Intrinsics.h(triggerSource, "triggerSource");
        PushTriggerManager.f47594a.g("host_trigger_" + triggerSource.name(), triggerSource.ordinal());
    }

    @Override // dz.a
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        dz.a.C0737a.a(this, user);
        lg.a.C0828a.f(lg.a.f68839a, "PushRegisterManager", "onLogin, " + user.getUserId(), false, 4, null);
        com.transsion.mpush.core.fcm.m.f47511a.h();
    }

    @Override // dz.a
    public void onLogout() {
        dz.a.C0737a.b(this);
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        dz.a.C0737a.c(this, userInfo);
    }
}
