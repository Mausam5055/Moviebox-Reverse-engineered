package com.tencent.tinker.loader;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.util.ArrayMap;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareReflectUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import java.io.File;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
class TinkerResourcePatcher {
    private static Method addAssetPathAsSharedLibraryMethod;
    private static Method addAssetPathMethod;
    private static Field assetsFiled;
    private static Object currentActivityThread;
    private static Method ensureStringBlocksMethod;
    private static AssetManager newAssetManager;
    private static Constructor<?> newAssetManagerCtor;
    private static Context packageContext;
    private static Context packageResContext;
    private static Field packagesFiled;
    private static Field publicSourceDirField;
    private static Collection<WeakReference<Resources>> references;
    private static Field resDir;
    private static Map<Object, WeakReference<Object>> resourceImpls;
    private static Field resourcePackagesFiled;
    private static Field resourcesImplFiled;
    private static long storedPatchedResModifiedTime;
    private static Field stringBlocksField;

    private static final class ResourceInsuranceHandlerCallback implements Handler.Callback {
        private final int EXECUTE_TRANSACTION;
        private final int LAUNCH_ACTIVITY;
        private final int RELAUNCH_ACTIVITY;
        private final Context mContext;
        private final Handler.Callback mOriginalCallback;
        private final String mPatchResApkPath;
        private Method mGetCallbacksMethod = null;
        private boolean mSkipInterceptExecuteTransaction = false;

        ResourceInsuranceHandlerCallback(Context context, String str, Handler.Callback callback, Class<?> cls) {
            Context applicationContext = context.getApplicationContext();
            this.mContext = applicationContext != null ? applicationContext : context;
            this.mPatchResApkPath = str;
            this.mOriginalCallback = callback;
            this.LAUNCH_ACTIVITY = fetchMessageId(cls, "LAUNCH_ACTIVITY", 100);
            this.RELAUNCH_ACTIVITY = fetchMessageId(cls, "RELAUNCH_ACTIVITY", 126);
            if (ShareTinkerInternals.isNewerOrEqualThanVersion(28, true)) {
                this.EXECUTE_TRANSACTION = fetchMessageId(cls, "EXECUTE_TRANSACTION ", 159);
            } else {
                this.EXECUTE_TRANSACTION = -1;
            }
        }

        private int fetchMessageId(Class<?> cls, String str, int i11) {
            try {
                return ShareReflectUtil.findField(cls, str).getInt(null);
            } catch (Throwable unused) {
                return i11;
            }
        }

        /* JADX WARN: Code duplicated, block: B:41:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        private boolean hackMessage(Message message) {
            Object obj;
            if (TinkerResourcePatcher.isPatchedResModifiedAfterLastLoad(this.mPatchResApkPath)) {
                int i11 = message.what;
                if (i11 == this.LAUNCH_ACTIVITY || i11 == this.RELAUNCH_ACTIVITY) {
                    try {
                        TinkerResourcePatcher.monkeyPatchExistingResources(this.mContext, this.mPatchResApkPath, true);
                    } catch (Throwable th2) {
                        ShareTinkerLog.printErrStackTrace("Tinker.ResourcePatcher", th2, "fail to ensure patched resources available after it's modified.", new Object[0]);
                    }
                } else if (i11 == this.EXECUTE_TRANSACTION && !this.mSkipInterceptExecuteTransaction) {
                    Object obj2 = message.obj;
                    if (obj2 == null) {
                        ShareTinkerLog.w("Tinker.ResourcePatcher", "transaction is null, skip rest insurance logic.", new Object[0]);
                    } else {
                        if (this.mGetCallbacksMethod == null) {
                            try {
                                this.mGetCallbacksMethod = ShareReflectUtil.findMethod(obj2, "getCallbacks", (Class<?>[]) new Class[0]);
                            } catch (Throwable unused) {
                            }
                        }
                        Method method = this.mGetCallbacksMethod;
                        if (method == null) {
                            ShareTinkerLog.e("Tinker.ResourcePatcher", "fail to find getLifecycleStateRequest method, skip rest insurance logic.", new Object[0]);
                            this.mSkipInterceptExecuteTransaction = true;
                        } else {
                            try {
                                List list = (List) method.invoke(obj2, null);
                                if (list != null && list.size() > 0 && (obj = list.get(0)) != null && obj.getClass().getName().equals("android.app.servertransaction.LaunchActivityItem")) {
                                    TinkerResourcePatcher.monkeyPatchExistingResources(this.mContext, this.mPatchResApkPath, true);
                                }
                            } catch (Throwable unused2) {
                                ShareTinkerLog.e("Tinker.ResourcePatcher", "fail to call getLifecycleStateRequest method, skip rest insurance logic.", new Object[0]);
                            }
                        }
                    }
                }
            }
            return false;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (hackMessage(message)) {
                return true;
            }
            Handler.Callback callback = this.mOriginalCallback;
            if (callback != null) {
                return callback.handleMessage(message);
            }
            return false;
        }
    }

    TinkerResourcePatcher() {
    }

    private static boolean checkResUpdate(Context context) {
        try {
            SharePatchFileUtil.closeQuietly(context.getAssets().open("only_use_to_test_tinker_resource.txt"));
            ShareTinkerLog.i("Tinker.ResourcePatcher", "checkResUpdate success, found test resource assets file only_use_to_test_tinker_resource.txt", new Object[0]);
            return true;
        } catch (Throwable th2) {
            try {
                ShareTinkerLog.e("Tinker.ResourcePatcher", "checkResUpdate failed, can't find test resource assets file only_use_to_test_tinker_resource.txt e:" + th2.getMessage(), new Object[0]);
                return false;
            } finally {
                SharePatchFileUtil.closeQuietly(null);
            }
        }
    }

    private static void clearPreloadTypedArrayIssue(Resources resources) {
        ShareTinkerLog.w("Tinker.ResourcePatcher", "try to clear typedArray cache!", new Object[0]);
        try {
            Object obj = ShareReflectUtil.findField((Class<?>) Resources.class, "mTypedArrayPool").get(resources);
            do {
            } while (ShareReflectUtil.findMethod(obj, "acquire", (Class<?>[]) new Class[0]).invoke(obj, null) != null);
        } catch (Throwable th2) {
            ShareTinkerLog.e("Tinker.ResourcePatcher", "clearPreloadTypedArrayIssue failed, ignore error: " + th2, new Object[0]);
        }
    }

    private static void installResourceInsuranceHacks(Context context, String str) {
        try {
            Object activityThread = ShareReflectUtil.getActivityThread(context, null);
            Handler handler = (Handler) ShareReflectUtil.findField(activityThread, "mH").get(activityThread);
            Field fieldFindField = ShareReflectUtil.findField((Class<?>) Handler.class, "mCallback");
            Handler.Callback callback = (Handler.Callback) fieldFindField.get(handler);
            if (callback instanceof ResourceInsuranceHandlerCallback) {
                ShareTinkerLog.w("Tinker.ResourcePatcher", "installResourceInsuranceHacks: already installed, skip rest logic.", new Object[0]);
            } else {
                fieldFindField.set(handler, new ResourceInsuranceHandlerCallback(context, str, callback, handler.getClass()));
            }
        } catch (Throwable th2) {
            ShareTinkerLog.printErrStackTrace("Tinker.ResourcePatcher", th2, "failed to install resource insurance hack.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPatchedResModifiedAfterLastLoad(String str) {
        long jLastModified;
        try {
            jLastModified = new File(str).lastModified();
        } catch (Throwable th2) {
            ShareTinkerLog.printErrStackTrace("Tinker.ResourcePatcher", th2, "Fail to get patched res modified time.", new Object[0]);
            jLastModified = 0;
        }
        return (jLastModified == 0 || jLastModified == storedPatchedResModifiedTime) ? false : true;
    }

    public static void isResourceCanPatch(Context context) throws Throwable {
        Class<?> cls;
        Class<?> cls2 = Class.forName(ProcessUtils.ACTIVITY_THREAD);
        currentActivityThread = ShareReflectUtil.getActivityThread(context, cls2);
        try {
            cls = Class.forName("android.app.LoadedApk");
        } catch (ClassNotFoundException unused) {
            cls = Class.forName("android.app.ActivityThread$PackageInfo");
        }
        resDir = ShareReflectUtil.findField(cls, "mResDir");
        packagesFiled = ShareReflectUtil.findField(cls2, "mPackages");
        try {
            resourcePackagesFiled = ShareReflectUtil.findField(cls2, "mResourcePackages");
        } catch (Throwable th2) {
            ShareTinkerLog.printErrStackTrace("Tinker.ResourcePatcher", th2, "Fail to get mResourcePackages field.", new Object[0]);
            resourcePackagesFiled = null;
        }
        AssetManager assets = context.getAssets();
        addAssetPathMethod = ShareReflectUtil.findMethod(assets, "addAssetPath", (Class<?>[]) new Class[]{String.class});
        if (shouldAddSharedLibraryAssets(context.getApplicationInfo())) {
            addAssetPathAsSharedLibraryMethod = ShareReflectUtil.findMethod(assets, "addAssetPathAsSharedLibrary", (Class<?>[]) new Class[]{String.class});
        }
        try {
            stringBlocksField = ShareReflectUtil.findField(assets, "mStringBlocks");
            ensureStringBlocksMethod = ShareReflectUtil.findMethod(assets, "ensureStringBlocks", (Class<?>[]) new Class[0]);
        } catch (Throwable unused2) {
        }
        newAssetManagerCtor = ShareReflectUtil.findConstructor(assets, (Class<?>[]) new Class[0]);
        Class<?> cls3 = Class.forName("android.app.ResourcesManager");
        Object objInvoke = ShareReflectUtil.findMethod(cls3, "getInstance", (Class<?>[]) new Class[0]).invoke(null, null);
        try {
            references = ((ArrayMap) ShareReflectUtil.findField(cls3, "mActiveResources").get(objInvoke)).values();
        } catch (NoSuchFieldException unused3) {
            references = (Collection) ShareReflectUtil.findField(cls3, "mResourceReferences").get(objInvoke);
            try {
                resourceImpls = (Map) ShareReflectUtil.findField(cls3, "mResourceImpls").get(objInvoke);
            } catch (Throwable unused4) {
                resourceImpls = null;
            }
        }
        if (references == null) {
            throw new IllegalStateException("resource references is null");
        }
        Resources resources = context.getResources();
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                resourcesImplFiled = ShareReflectUtil.findField(resources, "mResourcesImpl");
            } catch (Throwable unused5) {
                assetsFiled = ShareReflectUtil.findField(resources, "mAssets");
            }
        } else {
            assetsFiled = ShareReflectUtil.findField(resources, "mAssets");
        }
        try {
            publicSourceDirField = ShareReflectUtil.findField((Class<?>) ApplicationInfo.class, "publicSourceDir");
        } catch (NoSuchFieldException unused6) {
        }
    }

    public static void monkeyPatchExistingResources(Context context, String str, boolean z10) throws Throwable {
        if (str == null) {
            return;
        }
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        packageContext = context.createPackageContext(context.getPackageName(), 1);
        packageResContext = context.createPackageContext(context.getPackageName(), 0);
        Field[] fieldArr = {packagesFiled, resourcePackagesFiled};
        for (int i11 = 0; i11 < 2; i11++) {
            Field field = fieldArr[i11];
            if (field != null) {
                Iterator it = ((Map) field.get(currentActivityThread)).entrySet().iterator();
                while (it.hasNext()) {
                    Object obj = ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                    if (obj != null && applicationInfo.sourceDir.equals((String) resDir.get(obj))) {
                        resDir.set(obj, str);
                    }
                }
            }
        }
        if (z10) {
            ShareTinkerLog.i("Tinker.ResourcePatcher", "Re-injecting, skip rest logic.", new Object[0]);
            recordCurrentPatchedResModifiedTime(str);
            return;
        }
        Field fieldFindField = null;
        AssetManager assetManager = (AssetManager) newAssetManagerCtor.newInstance(null);
        newAssetManager = assetManager;
        if (((Integer) addAssetPathMethod.invoke(assetManager, str)).intValue() == 0) {
            throw new IllegalStateException("Could not create new AssetManager");
        }
        recordCurrentPatchedResModifiedTime(str);
        if (shouldAddSharedLibraryAssets(applicationInfo)) {
            for (String str2 : applicationInfo.sharedLibraryFiles) {
                if (str2.endsWith(".apk")) {
                    if (((Integer) addAssetPathAsSharedLibraryMethod.invoke(newAssetManager, str2)).intValue() == 0) {
                        throw new IllegalStateException("AssetManager add SharedLibrary Fail");
                    }
                    ShareTinkerLog.i("Tinker.ResourcePatcher", "addAssetPathAsSharedLibrary " + str2, new Object[0]);
                }
            }
        }
        Field field2 = stringBlocksField;
        if (field2 != null && ensureStringBlocksMethod != null) {
            field2.set(newAssetManager, null);
            ensureStringBlocksMethod.invoke(newAssetManager, null);
        }
        Iterator<WeakReference<Resources>> it2 = references.iterator();
        while (it2.hasNext()) {
            Resources resources = it2.next().get();
            if (resources != null) {
                try {
                    assetsFiled.set(resources, newAssetManager);
                } catch (Throwable unused) {
                    Object obj2 = resourcesImplFiled.get(resources);
                    ShareReflectUtil.findField(obj2, "mAssets").set(obj2, newAssetManager);
                }
                clearPreloadTypedArrayIssue(resources);
                resources.updateConfiguration(resources.getConfiguration(), resources.getDisplayMetrics());
            }
        }
        Map<Object, WeakReference<Object>> map = resourceImpls;
        if (map != null) {
            try {
                Field fieldFindField2 = null;
                for (Map.Entry<Object, WeakReference<Object>> entry : map.entrySet()) {
                    Object key = entry.getKey();
                    if (fieldFindField == null) {
                        fieldFindField = ShareReflectUtil.findField(key.getClass(), "mResDir");
                    }
                    if (applicationInfo.sourceDir.equals((String) fieldFindField.get(key))) {
                        if (Build.VERSION.SDK_INT >= 35) {
                            fieldFindField.set(key, str);
                        }
                        Object obj3 = entry.getValue().get();
                        if (obj3 != null) {
                            if (fieldFindField2 == null) {
                                fieldFindField2 = ShareReflectUtil.findField(obj3, "mAssets");
                            }
                            fieldFindField2.set(obj3, newAssetManager);
                        }
                    }
                }
            } catch (Throwable unused2) {
                throw new TinkerRuntimeException("Fail to hack resourceImpls field.");
            }
        }
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                Field field3 = publicSourceDirField;
                if (field3 != null) {
                    field3.set(context.getApplicationInfo(), str);
                }
            } catch (Throwable th2) {
                ShareTinkerLog.printErrStackTrace("Tinker.ResourcePatcher", th2, "fail to process publicSourceDirField field hack.", new Object[0]);
            }
        }
        if (!checkResUpdate(context)) {
            throw new TinkerRuntimeException("checkResInstall failed");
        }
        installResourceInsuranceHacks(context, str);
    }

    private static void recordCurrentPatchedResModifiedTime(String str) {
        try {
            storedPatchedResModifiedTime = new File(str).lastModified();
        } catch (Throwable th2) {
            ShareTinkerLog.printErrStackTrace("Tinker.ResourcePatcher", th2, "Fail to store patched res modified time.", new Object[0]);
            storedPatchedResModifiedTime = 0L;
        }
    }

    private static boolean shouldAddSharedLibraryAssets(ApplicationInfo applicationInfo) {
        return (Build.VERSION.SDK_INT < 24 || applicationInfo == null || applicationInfo.sharedLibraryFiles == null) ? false : true;
    }
}
