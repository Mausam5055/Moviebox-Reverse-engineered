package com.tencent.tinker.loader.hotplug.handler;

import android.content.ComponentName;
import android.content.Intent;
import com.tencent.tinker.loader.hotplug.IncrementComponentManager;
import com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class PMSInterceptHandler implements ServiceBinderInterceptor.BinderInvocationHandler {
    private Object handleGetActivityInfo(Object obj, Method method, Object[] objArr) throws Throwable {
        ComponentName componentName;
        Class<?>[] exceptionTypes = method.getExceptionTypes();
        try {
            Object objInvoke = method.invoke(obj, objArr);
            if (objInvoke != null) {
                return objInvoke;
            }
            int i11 = 0;
            while (true) {
                if (i11 >= objArr.length) {
                    componentName = null;
                    break;
                }
                if (objArr[i11] instanceof ComponentName) {
                    ShareTinkerLog.i("Tinker.PMSIntrcptHndlr", "locate componentName field of " + method.getName() + " done at idx: " + i11, new Object[0]);
                    componentName = (ComponentName) objArr[i11];
                    break;
                }
                i11++;
            }
            if (componentName != null) {
                return IncrementComponentManager.queryActivityInfo(componentName.getClassName());
            }
            ShareTinkerLog.w("Tinker.PMSIntrcptHndlr", "failed to locate componentName field of " + method.getName() + ", notice any crashes or mistakes after resolve works.", new Object[0]);
            return null;
        } catch (InvocationTargetException e11) {
            e = e11;
            Throwable targetException = e.getTargetException();
            if (exceptionTypes != null && exceptionTypes.length > 0) {
                if (targetException != null) {
                    throw targetException;
                }
                throw e;
            }
            if (targetException != null) {
                e = targetException;
            }
            ShareTinkerLog.e("Tinker.PMSIntrcptHndlr", "unexpected exception.", e);
            return null;
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.PMSIntrcptHndlr", "unexpected exception.", th2);
            return null;
        }
    }

    private Object handleResolveIntent(Object obj, Method method, Object[] objArr) throws Throwable {
        Intent intent;
        Class<?>[] exceptionTypes = method.getExceptionTypes();
        try {
            Object objInvoke = method.invoke(obj, objArr);
            if (objInvoke != null) {
                return objInvoke;
            }
            ShareTinkerLog.w("Tinker.PMSIntrcptHndlr", "failed to resolve activity in base package, try again in patch package.", new Object[0]);
            int i11 = 0;
            while (true) {
                if (i11 >= objArr.length) {
                    intent = null;
                    break;
                }
                if (objArr[i11] instanceof Intent) {
                    ShareTinkerLog.i("Tinker.PMSIntrcptHndlr", "locate intent field of " + method.getName() + " done at idx: " + i11, new Object[0]);
                    intent = (Intent) objArr[i11];
                    break;
                }
                i11++;
            }
            if (intent != null) {
                return IncrementComponentManager.resolveIntent(intent);
            }
            ShareTinkerLog.w("Tinker.PMSIntrcptHndlr", "failed to locate intent field of " + method.getName() + ", notice any crashes or mistakes after resolve works.", new Object[0]);
            return null;
        } catch (InvocationTargetException e11) {
            e = e11;
            Throwable targetException = e.getTargetException();
            if (exceptionTypes != null && exceptionTypes.length > 0) {
                if (targetException != null) {
                    throw targetException;
                }
                throw e;
            }
            if (targetException != null) {
                e = targetException;
            }
            ShareTinkerLog.e("Tinker.PMSIntrcptHndlr", "unexpected exception.", e);
            return null;
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.PMSIntrcptHndlr", "unexpected exception.", th2);
            return null;
        }
    }

    @Override // com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor.BinderInvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
        String name = method.getName();
        if ("getActivityInfo".equals(name)) {
            return handleGetActivityInfo(obj, method, objArr);
        }
        return "resolveIntent".equals(name) ? handleResolveIntent(obj, method, objArr) : method.invoke(obj, objArr);
    }
}
