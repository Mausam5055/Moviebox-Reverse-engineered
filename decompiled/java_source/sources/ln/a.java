package ln;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import com.transsion.mpush.api.IPushFeature;
import com.transsion.mpush.api.IPushImageLoader;
import com.transsion.mpush.api.IPushReportInterceptor;
import com.transsion.mpush.api.IPushRouteHandler;
import com.transsion.mpush.core.config.PushSdkConfig;
import com.transsion.mpush.core.db.PushDatabase;
import com.transsion.mpush.core.fcm.m;
import com.transsion.mpush.core.features.FcmPushFeature;
import com.transsion.mpush.core.service.SdkNotificationRefreshService;
import com.transsion.mpush.core.trigger.PushTriggerManager;
import com.transsion.mpush.core.trigger.PushWorker;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f68979b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f68981d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static IPushImageLoader f68982e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static IPushRouteHandler f68983f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static IPushReportInterceptor f68984g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static ServiceConnection f68986i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f68978a = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final CopyOnWriteArrayList f68980c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static PushSdkConfig f68985h = new PushSdkConfig(false, 0, null, 0, 0, null, null, 127, null);

    /* JADX INFO: renamed from: ln.a$a, reason: collision with other inner class name */
    public static final class ServiceConnectionC0831a implements ServiceConnection {
        ServiceConnectionC0831a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "SdkNotificationRefreshService connected", false, 4, null);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "SdkNotificationRefreshService disconnected", false, 4, null);
        }
    }

    private a() {
    }

    private final void b(Intent intent) {
        Context context = f68979b;
        if (context != null && Build.VERSION.SDK_INT >= 26) {
            if (f68986i == null) {
                f68986i = new ServiceConnectionC0831a();
            }
            ServiceConnection serviceConnection = f68986i;
            Intrinsics.e(serviceConnection);
            context.bindService(intent, serviceConnection, 1);
        }
    }

    private final void c() {
        Context context = f68979b;
        if (context == null) {
            return;
        }
        if (!f68985h.getEnableRefresh()) {
            try {
                context.stopService(new Intent(context, (Class<?>) SdkNotificationRefreshService.class));
                r();
                return;
            } catch (Exception e11) {
                lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "checkRefreshService: stop service failed " + e11, false, 4, null);
                return;
            }
        }
        Intent intent = new Intent(context, (Class<?>) SdkNotificationRefreshService.class);
        try {
            context.startService(intent);
            b(intent);
        } catch (Exception e12) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "checkRefreshService: start/bind service failed " + e12, false, 4, null);
        }
    }

    private final void k() {
        FcmPushFeature fcmPushFeature;
        Context context = f68979b;
        if (context == null || (fcmPushFeature = (FcmPushFeature) e(FcmPushFeature.class)) == null) {
            return;
        }
        m mVar = m.f47511a;
        mVar.g(fcmPushFeature.b());
        Application application = context instanceof Application ? (Application) context : null;
        if (application == null) {
            lg.a.C0828a.z(lg.a.f68839a, "M_PUSH_SDK", "initTPushIfNeeded: context is not Application, skip init", false, 4, null);
        } else {
            mVar.q(application);
        }
    }

    private final void r() {
        Context context;
        ServiceConnection serviceConnection = f68986i;
        if (serviceConnection == null || (context = f68979b) == null) {
            return;
        }
        try {
            context.unbindService(serviceConnection);
            f68986i = null;
        } catch (Exception e11) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "unbindRefreshService: failed " + e11, false, 4, null);
        }
    }

    public final a a(IPushFeature feature) {
        Intrinsics.h(feature, "feature");
        CopyOnWriteArrayList copyOnWriteArrayList = f68980c;
        if (!(copyOnWriteArrayList instanceof Collection) || !copyOnWriteArrayList.isEmpty()) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                if (Intrinsics.c(((IPushFeature) it.next()).getClass(), feature.getClass())) {
                    lg.a.C0828a.z(lg.a.f68839a, "M_PUSH_SDK", "[PushClient] addFeature -> 重复注册已忽略：" + feature.getClass().getSimpleName(), false, 4, null);
                    return this;
                }
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "[PushClient] addFeature -> " + feature.getClass().getSimpleName(), false, 4, null);
        f68980c.add(feature);
        Context context = f68979b;
        if (context != null) {
            feature.init(context);
            f68978a.k();
        }
        return this;
    }

    public final PushDatabase d() {
        if (f68979b == null) {
            lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "getDatabase: SDK not initialized", false, 4, null);
        }
        PushDatabase.Companion bVar = PushDatabase.INSTANCE;
        Context context = f68979b;
        if (context == null) {
            return null;
        }
        return bVar.b(context);
    }

    public final IPushFeature e(Class clazz) {
        Object next;
        Intrinsics.h(clazz, "clazz");
        Iterator it = f68980c.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!clazz.isInstance((IPushFeature) next));
        if (next instanceof IPushFeature) {
            return (IPushFeature) next;
        }
        return null;
    }

    public final IPushImageLoader f() {
        IPushImageLoader iPushImageLoader = f68982e;
        return iPushImageLoader == null ? new nn.b() : iPushImageLoader;
    }

    public final IPushReportInterceptor g() {
        return f68984g;
    }

    public final IPushRouteHandler h() {
        return f68983f;
    }

    public final PushSdkConfig i() {
        return f68985h;
    }

    public final a j(Context context) {
        Intrinsics.h(context, "context");
        if (f68981d) {
            lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "init: already initialized", false, 4, null);
            return this;
        }
        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "init: initializing SDK...", false, 4, null);
        f68979b = context.getApplicationContext();
        f68981d = true;
        for (IPushFeature iPushFeature : f68980c) {
            Context context2 = f68979b;
            if (context2 == null) {
                context2 = context;
            }
            iPushFeature.init(context2);
        }
        k();
        PushTriggerManager.f47594a.d(context);
        PushWorker.INSTANCE.a(context);
        c();
        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "init end", false, 4, null);
        return this;
    }

    public final void l(String msgId, Object obj) {
        Object objM454constructorimpl;
        Intrinsics.h(msgId, "msgId");
        if (!f68981d) {
            lg.a.C0828a.z(lg.a.f68839a, "M_PUSH_SDK", "【PushClient】收到透传消息但 SDK 未初始化，消息ID：" + msgId + "，已忽略", false, 4, null);
            return;
        }
        lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【PushClient】收到透传消息，消息ID：" + msgId + "，消息类型：" + (obj != null ? obj.getClass().getSimpleName() : null) + "，开始分发", false, 4, null);
        for (IPushFeature iPushFeature : f68980c) {
            try {
                Result.Companion companion = Result.INSTANCE;
                iPushFeature.onMessageReceive(msgId, obj);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【PushClient】透传消息处理失败，消息ID：" + msgId + "，Feature：" + iPushFeature.getClass().getSimpleName() + "，异常：" + thM457exceptionOrNullimpl, false, 4, null);
                thM457exceptionOrNullimpl.printStackTrace();
            }
        }
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【PushClient】透传消息分发完成，消息ID：" + msgId}, false, 4, null);
    }

    public final void m(int i11) {
        Object objM454constructorimpl;
        lg.a.C0828a c0828a = lg.a.f68839a;
        CopyOnWriteArrayList<IPushFeature> copyOnWriteArrayList = f68980c;
        lg.a.C0828a.l(c0828a, "M_PUSH_SDK", "【PushClient】收到触发事件，触发源：" + i11 + "，开始分发给 " + copyOnWriteArrayList.size() + " 个Feature", false, 4, null);
        for (IPushFeature iPushFeature : copyOnWriteArrayList) {
            try {
                Result.Companion companion = Result.INSTANCE;
                iPushFeature.onTrigger(i11);
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【PushClient】触发事件处理失败，Feature：" + iPushFeature.getClass().getSimpleName() + "，异常：" + thM457exceptionOrNullimpl, false, 4, null);
                thM457exceptionOrNullimpl.printStackTrace();
            }
        }
        lg.a.C0828a.r(lg.a.f68839a, "M_PUSH_SDK", new String[]{"【PushClient】触发事件分发完成，触发源：" + i11}, false, 4, null);
    }

    public final void n(Object message) {
        Object objM454constructorimpl;
        Intrinsics.h(message, "message");
        lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【PushClient】开始刷新消息，消息类型：" + message.getClass().getSimpleName(), false, 4, null);
        for (IPushFeature iPushFeature : f68980c) {
            try {
                Result.Companion companion = Result.INSTANCE;
                if (iPushFeature.refreshMessage(message)) {
                    lg.a.C0828a.f(lg.a.f68839a, "M_PUSH_SDK", "【PushClient】消息刷新成功，由Feature处理：" + iPushFeature.getClass().getSimpleName(), false, 4, null);
                    return;
                }
                objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl != null) {
                lg.a.C0828a.l(lg.a.f68839a, "M_PUSH_SDK", "【PushClient】消息刷新失败，Feature：" + iPushFeature.getClass().getSimpleName() + "，异常：" + thM457exceptionOrNullimpl, false, 4, null);
            }
        }
    }

    public final a o(IPushReportInterceptor iPushReportInterceptor) {
        f68984g = iPushReportInterceptor;
        return this;
    }

    public final a p(IPushRouteHandler iPushRouteHandler) {
        f68983f = iPushRouteHandler;
        return this;
    }

    public final a q(PushSdkConfig config) {
        Intrinsics.h(config, "config");
        f68985h = config;
        c();
        return this;
    }
}
