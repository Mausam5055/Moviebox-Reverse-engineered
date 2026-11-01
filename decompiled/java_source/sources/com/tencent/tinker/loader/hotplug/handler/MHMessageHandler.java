package com.tencent.tinker.loader.hotplug.handler;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import com.tencent.tinker.loader.hotplug.IncrementComponentManager;
import com.tencent.tinker.loader.hotplug.interceptor.HandlerMessageInterceptor;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.ShareReflectUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes5.dex */
public class MHMessageHandler implements HandlerMessageInterceptor.MessageHandler {
    private static final int LAUNCH_ACTIVITY;
    private final Context mContext;

    static {
        int i11 = 100;
        if (Build.VERSION.SDK_INT < 27) {
            try {
                i11 = ShareReflectUtil.findField(Class.forName("android.app.ActivityThread$H"), "LAUNCH_ACTIVITY").getInt(null);
            } catch (Throwable unused) {
            }
        }
        LAUNCH_ACTIVITY = i11;
    }

    public MHMessageHandler(Context context) {
        Context baseContext;
        while ((context instanceof ContextWrapper) && (baseContext = ((ContextWrapper) context).getBaseContext()) != null) {
            context = baseContext;
        }
        this.mContext = context;
    }

    private <T> void copyInstanceFields(T t11, T t12) {
        if (t11 == null || t12 == null) {
            return;
        }
        for (Class<?> superclass = t11.getClass(); !superclass.equals(Object.class); superclass = superclass.getSuperclass()) {
            for (Field field : superclass.getDeclaredFields()) {
                if (!field.isSynthetic() && !Modifier.isStatic(field.getModifiers())) {
                    if (!field.isAccessible()) {
                        field.setAccessible(true);
                    }
                    try {
                        field.set(t12, field.get(t11));
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    private void fixActivityScreenOrientation(Object obj, int i11) {
        if (i11 == -1) {
            i11 = 2;
        }
        try {
            Object obj2 = ShareReflectUtil.findField(obj, "token").get(obj);
            Object objInvoke = ShareReflectUtil.findMethod(Class.forName("android.app.ActivityManagerNative"), "getDefault", (Class<?>[]) new Class[0]).invoke(null, null);
            ShareReflectUtil.findMethod(objInvoke, "setRequestedOrientation", (Class<?>[]) new Class[]{IBinder.class, Integer.TYPE}).invoke(objInvoke, obj2, Integer.valueOf(i11));
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.MHMsgHndlr", "Failed to fix screen orientation.", th2);
        }
    }

    private void fixStubActivityInfo(ActivityInfo activityInfo, ActivityInfo activityInfo2) {
        copyInstanceFields(activityInfo2, activityInfo);
    }

    @Override // com.tencent.tinker.loader.hotplug.interceptor.HandlerMessageInterceptor.MessageHandler
    public boolean handleMessage(Message message) {
        if (message.what == LAUNCH_ACTIVITY) {
            try {
                Object obj = message.obj;
                if (obj == null) {
                    ShareTinkerLog.w("Tinker.MHMsgHndlr", "msg: [" + message.what + "] has no 'obj' value.", new Object[0]);
                    return false;
                }
                Intent intent = (Intent) ShareReflectUtil.findField(obj, "intent").get(obj);
                if (intent == null) {
                    ShareTinkerLog.w("Tinker.MHMsgHndlr", "cannot fetch intent from message received by mH.", new Object[0]);
                    return false;
                }
                ShareIntentUtil.fixIntentClassLoader(intent, this.mContext.getClassLoader());
                ComponentName componentName = (ComponentName) intent.getParcelableExtra("tinker_iek_old_component");
                if (componentName == null) {
                    ShareTinkerLog.w("Tinker.MHMsgHndlr", "oldComponent was null, start " + intent.getComponent() + " next.", new Object[0]);
                    return false;
                }
                ActivityInfo activityInfo = (ActivityInfo) ShareReflectUtil.findField(obj, "activityInfo").get(obj);
                if (activityInfo == null) {
                    return false;
                }
                ActivityInfo activityInfoQueryActivityInfo = IncrementComponentManager.queryActivityInfo(componentName.getClassName());
                if (activityInfoQueryActivityInfo == null) {
                    ShareTinkerLog.e("Tinker.MHMsgHndlr", "Failed to query target activity's info, perhaps the target is not hotpluged component. Target: " + componentName.getClassName(), new Object[0]);
                    return false;
                }
                fixActivityScreenOrientation(obj, activityInfoQueryActivityInfo.screenOrientation);
                fixStubActivityInfo(activityInfo, activityInfoQueryActivityInfo);
                intent.setComponent(componentName);
                intent.removeExtra("tinker_iek_old_component");
            } catch (Throwable th2) {
                ShareTinkerLog.e("Tinker.MHMsgHndlr", "exception in handleMessage.", th2);
            }
        }
        return false;
    }
}
