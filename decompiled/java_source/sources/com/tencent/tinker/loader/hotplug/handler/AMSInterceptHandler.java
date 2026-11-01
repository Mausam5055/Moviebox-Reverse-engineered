package com.tencent.tinker.loader.hotplug.handler;

import android.R;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import com.tencent.tinker.loader.hotplug.ActivityStubManager;
import com.tencent.tinker.loader.hotplug.IncrementComponentManager;
import com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor;
import com.tencent.tinker.loader.shareutil.ShareIntentUtil;
import com.tencent.tinker.loader.shareutil.ShareReflectUtil;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class AMSInterceptHandler implements ServiceBinderInterceptor.BinderInvocationHandler {
    private static final int INTENT_SENDER_ACTIVITY;
    private static final int[] TRANSLUCENT_ATTR_ID = {R.attr.windowIsTranslucent};
    private final Context mContext;

    static {
        int iIntValue = 2;
        if (Build.VERSION.SDK_INT < 27) {
            try {
                iIntValue = ((Integer) ShareReflectUtil.findField((Class<?>) ActivityManager.class, "INTENT_SENDER_ACTIVITY").get(null)).intValue();
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        INTENT_SENDER_ACTIVITY = iIntValue;
    }

    public AMSInterceptHandler(Context context) {
        Context baseContext;
        while ((context instanceof ContextWrapper) && (baseContext = ((ContextWrapper) context).getBaseContext()) != null) {
            context = baseContext;
        }
        this.mContext = context;
    }

    private Object handleGetIntentSender(Object obj, Method method, Object[] objArr) throws Throwable {
        int i11 = 0;
        while (true) {
            if (i11 >= objArr.length) {
                i11 = -1;
                break;
            }
            if (objArr[i11] instanceof Intent[]) {
                break;
            }
            i11++;
        }
        if (i11 != -1 && ((Integer) objArr[0]).intValue() == INTENT_SENDER_ACTIVITY) {
            Intent[] intentArr = (Intent[]) objArr[i11];
            for (int i12 = 0; i12 < intentArr.length; i12++) {
                Intent intent = new Intent(intentArr[i12]);
                processActivityIntent(intent);
                intentArr[i12] = intent;
            }
        }
        return method.invoke(obj, objArr);
    }

    private Object handleStartActivities(Object obj, Method method, Object[] objArr) throws Throwable {
        int i11 = 0;
        while (true) {
            if (i11 >= objArr.length) {
                i11 = -1;
                break;
            }
            if (objArr[i11] instanceof Intent[]) {
                break;
            }
            i11++;
        }
        if (i11 != -1) {
            Intent[] intentArr = (Intent[]) objArr[i11];
            for (int i12 = 0; i12 < intentArr.length; i12++) {
                Intent intent = new Intent(intentArr[i12]);
                processActivityIntent(intent);
                intentArr[i12] = intent;
            }
        }
        return method.invoke(obj, objArr);
    }

    private Object handleStartActivity(Object obj, Method method, Object[] objArr) throws Throwable {
        int i11 = 0;
        while (true) {
            if (i11 >= objArr.length) {
                i11 = -1;
                break;
            }
            if (objArr[i11] instanceof Intent) {
                break;
            }
            i11++;
        }
        if (i11 != -1) {
            Intent intent = new Intent((Intent) objArr[i11]);
            processActivityIntent(intent);
            objArr[i11] = intent;
        }
        return method.invoke(obj, objArr);
    }

    private boolean hasTransparentTheme(ActivityInfo activityInfo) {
        int themeResource = activityInfo.getThemeResource();
        Resources.Theme themeNewTheme = this.mContext.getResources().newTheme();
        themeNewTheme.applyStyle(themeResource, true);
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = themeNewTheme.obtainStyledAttributes(TRANSLUCENT_ATTR_ID);
            boolean z10 = typedArrayObtainStyledAttributes.getBoolean(0, false);
            typedArrayObtainStyledAttributes.recycle();
            return z10;
        } catch (Throwable unused) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return false;
        }
    }

    private void processActivityIntent(Intent intent) {
        String packageName;
        String className;
        IntentFilter intentFilter;
        if (intent.getComponent() != null) {
            packageName = intent.getComponent().getPackageName();
            className = intent.getComponent().getClassName();
        } else {
            ResolveInfo resolveInfoResolveActivity = this.mContext.getPackageManager().resolveActivity(intent, 0);
            if (resolveInfoResolveActivity == null) {
                resolveInfoResolveActivity = IncrementComponentManager.resolveIntent(intent);
            }
            if (resolveInfoResolveActivity == null || (intentFilter = resolveInfoResolveActivity.filter) == null || !intentFilter.hasCategory("android.intent.category.DEFAULT")) {
                packageName = null;
                className = null;
            } else {
                ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
                String str = activityInfo.packageName;
                className = activityInfo.name;
                packageName = str;
            }
        }
        if (IncrementComponentManager.isIncrementActivity(className)) {
            ActivityInfo activityInfoQueryActivityInfo = IncrementComponentManager.queryActivityInfo(className);
            storeAndReplaceOriginalComponentName(intent, packageName, className, ActivityStubManager.assignStub(className, activityInfoQueryActivityInfo.launchMode, hasTransparentTheme(activityInfoQueryActivityInfo)));
        }
    }

    private void storeAndReplaceOriginalComponentName(Intent intent, String str, String str2, String str3) {
        ComponentName componentName = new ComponentName(str, str2);
        ShareIntentUtil.fixIntentClassLoader(intent, this.mContext.getClassLoader());
        intent.putExtra("tinker_iek_old_component", componentName);
        intent.setComponent(new ComponentName(str, str3));
    }

    @Override // com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor.BinderInvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        if ("startActivity".equals(name)) {
            return handleStartActivity(obj, method, objArr);
        }
        if ("startActivities".equals(name)) {
            return handleStartActivities(obj, method, objArr);
        }
        if (!"startActivityAndWait".equals(name) && !"startActivityWithConfig".equals(name) && !"startActivityAsUser".equals(name)) {
            return "getIntentSender".equals(name) ? handleGetIntentSender(obj, method, objArr) : method.invoke(obj, objArr);
        }
        return handleStartActivity(obj, method, objArr);
    }
}
