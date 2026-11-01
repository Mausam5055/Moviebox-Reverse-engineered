package com.tencent.tinker.loader.hotplug;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import com.tencent.tinker.loader.app.TinkerApplication;
import com.tencent.tinker.loader.hotplug.handler.AMSInterceptHandler;
import com.tencent.tinker.loader.hotplug.handler.MHMessageHandler;
import com.tencent.tinker.loader.hotplug.handler.PMSInterceptHandler;
import com.tencent.tinker.loader.hotplug.interceptor.HandlerMessageInterceptor;
import com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor;
import com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation;
import com.tencent.tinker.loader.shareutil.ShareReflectUtil;
import com.tencent.tinker.loader.shareutil.ShareSecurityCheck;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;

/* JADX INFO: loaded from: classes5.dex */
public final class ComponentHotplug {
    private static ServiceBinderInterceptor sAMSInterceptor;
    private static volatile boolean sInstalled;
    private static HandlerMessageInterceptor sMHMessageInterceptor;
    private static ServiceBinderInterceptor sPMSInterceptor;
    private static TinkerHackInstrumentation sTinkerHackInstrumentation;

    private ComponentHotplug() {
        throw new UnsupportedOperationException();
    }

    private static Handler fetchMHInstance(Context context) {
        Object activityThread = ShareReflectUtil.getActivityThread(context, null);
        if (activityThread == null) {
            throw new IllegalStateException("failed to fetch instance of ActivityThread.");
        }
        try {
            return (Handler) ShareReflectUtil.findField(activityThread, "mH").get(activityThread);
        } catch (Throwable th2) {
            throw new IllegalStateException(th2);
        }
    }

    public static synchronized void install(TinkerApplication tinkerApplication, ShareSecurityCheck shareSecurityCheck) throws UnsupportedEnvironmentException {
        if (!sInstalled) {
            try {
                if (IncrementComponentManager.init(tinkerApplication, shareSecurityCheck)) {
                    sAMSInterceptor = new ServiceBinderInterceptor(tinkerApplication, "activity", new AMSInterceptHandler(tinkerApplication));
                    sPMSInterceptor = new ServiceBinderInterceptor(tinkerApplication, "package", new PMSInterceptHandler());
                    sAMSInterceptor.install();
                    sPMSInterceptor.install();
                    if (Build.VERSION.SDK_INT < 27) {
                        HandlerMessageInterceptor handlerMessageInterceptor = new HandlerMessageInterceptor(fetchMHInstance(tinkerApplication), new MHMessageHandler(tinkerApplication));
                        sMHMessageInterceptor = handlerMessageInterceptor;
                        handlerMessageInterceptor.install();
                    } else {
                        TinkerHackInstrumentation tinkerHackInstrumentationCreate = TinkerHackInstrumentation.create(tinkerApplication);
                        sTinkerHackInstrumentation = tinkerHackInstrumentationCreate;
                        tinkerHackInstrumentationCreate.install();
                    }
                    sInstalled = true;
                    ShareTinkerLog.i("Tinker.ComponentHotplug", "installed successfully.", new Object[0]);
                }
            } catch (Throwable th2) {
                uninstall();
                throw new UnsupportedEnvironmentException(th2);
            }
        }
    }

    public static synchronized void uninstall() {
        if (sInstalled) {
            try {
                sAMSInterceptor.uninstall();
                sPMSInterceptor.uninstall();
                if (Build.VERSION.SDK_INT < 27) {
                    sMHMessageInterceptor.uninstall();
                } else {
                    sTinkerHackInstrumentation.uninstall();
                }
            } catch (Throwable th2) {
                ShareTinkerLog.e("Tinker.ComponentHotplug", "exception when uninstall.", th2);
            }
            sInstalled = false;
        }
    }
}
