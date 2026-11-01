package com.tencent.tinker.loader.hotplug.interceptor;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PersistableBundle;
import com.tencent.tinker.loader.TinkerRuntimeException;
import com.tencent.tinker.loader.hotplug.IncrementComponentManager;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.ShareReflectUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes5.dex */
public class TinkerHackInstrumentation extends Instrumentation {
    private final Object mActivityThread;
    private final Field mInstrumentationField;
    private final Instrumentation mOriginal;

    private TinkerHackInstrumentation(Instrumentation instrumentation, Object obj, Field field) throws TinkerRuntimeException {
        this.mOriginal = instrumentation;
        this.mActivityThread = obj;
        this.mInstrumentationField = field;
        try {
            copyAllFields(instrumentation);
        } catch (Throwable th2) {
            throw new TinkerRuntimeException(th2.getMessage(), th2);
        }
    }

    private void copyAllFields(Instrumentation instrumentation) throws IllegalAccessException {
        Field[] declaredFields = Instrumentation.class.getDeclaredFields();
        for (int i11 = 0; i11 < declaredFields.length; i11++) {
            declaredFields[i11].setAccessible(true);
            declaredFields[i11].set(this, declaredFields[i11].get(instrumentation));
        }
    }

    public static TinkerHackInstrumentation create(Context context) {
        try {
            Object activityThread = ShareReflectUtil.getActivityThread(context, null);
            Field fieldFindField = ShareReflectUtil.findField(activityThread, "mInstrumentation");
            Instrumentation instrumentation = (Instrumentation) fieldFindField.get(activityThread);
            return instrumentation instanceof TinkerHackInstrumentation ? (TinkerHackInstrumentation) instrumentation : new TinkerHackInstrumentation(instrumentation, activityThread, fieldFindField);
        } catch (Throwable th2) {
            throw new TinkerRuntimeException("see next stacktrace", th2);
        }
    }

    private void fixActivityParams(Activity activity, ActivityInfo activityInfo) {
        activity.setRequestedOrientation(activityInfo.screenOrientation);
        activity.setTheme(activityInfo.theme);
        try {
            ShareReflectUtil.findField(activity, "mActivityInfo").set(activity, activityInfo);
        } catch (Throwable th2) {
            throw new TinkerRuntimeException("see next stacktrace.", th2);
        }
    }

    private boolean processIntent(ClassLoader classLoader, Intent intent) {
        if (intent == null) {
            return false;
        }
        ShareIntentUtil.fixIntentClassLoader(intent, classLoader);
        ComponentName componentName = (ComponentName) intent.getParcelableExtra("tinker_iek_old_component");
        if (componentName == null) {
            ShareTinkerLog.w("Tinker.Instrumentation", "oldComponent was null, start " + intent.getComponent() + " next.", new Object[0]);
            return false;
        }
        String className = componentName.getClassName();
        if (IncrementComponentManager.queryActivityInfo(className) != null) {
            intent.setComponent(componentName);
            intent.removeExtra("tinker_iek_old_component");
            return true;
        }
        ShareTinkerLog.e("Tinker.Instrumentation", "Failed to query target activity's info, perhaps the target is not hotpluged component. Target: " + className, new Object[0]);
        return false;
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle bundle) {
        ActivityInfo activityInfoQueryActivityInfo;
        if (activity != null && (activityInfoQueryActivityInfo = IncrementComponentManager.queryActivityInfo(activity.getClass().getName())) != null) {
            fixActivityParams(activity, activityInfoQueryActivityInfo);
        }
        super.callActivityOnCreate(activity, bundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(Activity activity, Bundle bundle, PersistableBundle persistableBundle) {
        ActivityInfo activityInfoQueryActivityInfo;
        if (activity != null && (activityInfoQueryActivityInfo = IncrementComponentManager.queryActivityInfo(activity.getClass().getName())) != null) {
            fixActivityParams(activity, activityInfoQueryActivityInfo);
        }
        super.callActivityOnCreate(activity, bundle, persistableBundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnNewIntent(Activity activity, Intent intent) {
        if (activity != null) {
            processIntent(activity.getClass().getClassLoader(), intent);
        }
        super.callActivityOnNewIntent(activity, intent);
    }

    public void install() throws IllegalAccessException {
        if (this.mInstrumentationField.get(this.mActivityThread) instanceof TinkerHackInstrumentation) {
            ShareTinkerLog.w("Tinker.Instrumentation", "already installed, skip rest logic.", new Object[0]);
        } else {
            this.mInstrumentationField.set(this.mActivityThread, this);
        }
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(Class<?> cls, Context context, IBinder iBinder, Application application, Intent intent, ActivityInfo activityInfo, CharSequence charSequence, Activity activity, String str, Object obj) throws IllegalAccessException, InstantiationException {
        processIntent(context.getClassLoader(), intent);
        return super.newActivity(cls, context, iBinder, application, intent, activityInfo, charSequence, activity, str, obj);
    }

    @Override // android.app.Instrumentation
    public Activity newActivity(ClassLoader classLoader, String str, Intent intent) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
        return processIntent(classLoader, intent) ? super.newActivity(classLoader, intent.getComponent().getClassName(), intent) : super.newActivity(classLoader, str, intent);
    }

    public void uninstall() throws IllegalAccessException {
        this.mInstrumentationField.set(this.mActivityThread, this.mOriginal);
    }
}
