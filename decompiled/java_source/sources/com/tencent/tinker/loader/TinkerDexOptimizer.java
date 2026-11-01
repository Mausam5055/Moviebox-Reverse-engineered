package com.tencent.tinker.loader;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.tencent.tinker.loader.app.TinkerApplication;
import com.tencent.tinker.loader.shareutil.ShareFileLockHelper;
import com.tencent.tinker.loader.shareutil.SharePatchFileUtil;
import com.tencent.tinker.loader.shareutil.ShareReflectUtil;
import com.tencent.tinker.loader.shareutil.ShareTinkerInternals;
import com.tencent.tinker.loader.shareutil.ShareTinkerLog;
import dalvik.system.DexFile;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes5.dex */
public final class TinkerDexOptimizer {
    private static final ResultReceiver sEmptyResultReceiver;
    private static final Handler sHandler;
    private static final PackageManager[] sSynchronizedPMCache;
    private static final int[] sPerformDexOptSecondaryTransactionCode = {-1};
    private static final IBinder[] sPMSBinderProxy = {null};

    private static class OptimizeWorker {
        private static ClassLoader patchClassLoaderStrongRef;
        private final ResultCallback callback;
        private final Context context;
        private final File dexFile;
        private final File optimizedDir;
        private final String targetISA;
        private final boolean useDLC;
        private final boolean useEmergencyMode;
        private final boolean useInterpretMode;

        OptimizeWorker(Context context, File file, File file2, boolean z10, boolean z11, String str, boolean z12, ResultCallback resultCallback) {
            this.context = context;
            this.dexFile = file;
            this.optimizedDir = file2;
            this.useInterpretMode = z10;
            this.useDLC = z11;
            this.callback = resultCallback;
            this.targetISA = str;
            this.useEmergencyMode = z12;
        }

        boolean run() {
            ResultCallback resultCallback;
            try {
                if (!SharePatchFileUtil.isLegalFile(this.dexFile) && (resultCallback = this.callback) != null) {
                    resultCallback.onFailed(this.dexFile, this.optimizedDir, new IOException("dex file " + this.dexFile.getAbsolutePath() + " is not exist!"));
                    return false;
                }
                ResultCallback resultCallback2 = this.callback;
                if (resultCallback2 != null) {
                    resultCallback2.onStart(this.dexFile, this.optimizedDir);
                }
                final String strOptimizedPathFor = SharePatchFileUtil.optimizedPathFor(this.dexFile, this.optimizedDir);
                if (!ShareTinkerInternals.isArkHotRuning()) {
                    if (this.useInterpretMode) {
                        TinkerDexOptimizer.interpretDex2Oat(this.dexFile.getAbsolutePath(), strOptimizedPathFor, this.targetISA);
                    } else if (TinkerApplication.getInstance().isUseInterpretModeOnSupported32BitSystem() && ShareTinkerInternals.isVersionInRange(21, 25, true) && ShareTinkerInternals.is32BitEnv()) {
                        try {
                            ShareTinkerLog.i("Tinker.ParallelDex", "dexopt with interpret mode on 32bit supported system was enabled.", new Object[0]);
                            TinkerDexOptimizer.interpretDex2Oat(this.dexFile.getAbsolutePath(), strOptimizedPathFor, this.targetISA);
                        } catch (Throwable th2) {
                            ShareTinkerLog.printErrStackTrace("Tinker.ParallelDex", th2, "exception occurred on dexopt triggering.", new Object[0]);
                        }
                        if (!SharePatchFileUtil.isLegalFile(new File(strOptimizedPathFor))) {
                            ShareTinkerLog.w("Tinker.ParallelDex", "interpret dexopt failure, compensate with system method.", new Object[0]);
                            DexFile.loadDex(this.dexFile.getAbsolutePath(), strOptimizedPathFor, 0);
                        }
                    } else if (!ShareTinkerInternals.isNewerOrEqualThanVersion(26, true)) {
                        DexFile.loadDex(this.dexFile.getAbsolutePath(), strOptimizedPathFor, 0);
                    } else if (ShareTinkerInternals.isNewerOrEqualThanVersion(29, true)) {
                        TinkerDexOptimizer.createFakeODexPathStructureOnDemand(strOptimizedPathFor);
                        patchClassLoaderStrongRef = NewClassLoaderInjector.triggerDex2Oat(this.context, this.optimizedDir, this.useDLC, this.dexFile.getAbsolutePath());
                        Runnable runnable = new Runnable() { // from class: com.tencent.tinker.loader.TinkerDexOptimizer.OptimizeWorker.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    TinkerDexOptimizer.triggerPMDexOptOnDemand(OptimizeWorker.this.context, OptimizeWorker.this.dexFile.getAbsolutePath(), strOptimizedPathFor);
                                    if (OptimizeWorker.this.useEmergencyMode) {
                                        return;
                                    }
                                    StringBuilder sb2 = new StringBuilder();
                                    String str = strOptimizedPathFor;
                                    sb2.append(str.substring(0, str.lastIndexOf(".odex")));
                                    sb2.append(".vdex");
                                    TinkerDexOptimizer.waitUntilFileGeneratedOrTimeout(OptimizeWorker.this.context, sb2.toString(), new Long[0]);
                                } catch (Throwable th3) {
                                    try {
                                        ShareTinkerLog.printErrStackTrace("Tinker.ParallelDex", th3, "Fail to call triggerPMDexOptAsyncOnDemand.", new Object[0]);
                                        if (OptimizeWorker.this.useEmergencyMode) {
                                            return;
                                        }
                                        StringBuilder sb3 = new StringBuilder();
                                        String str2 = strOptimizedPathFor;
                                        sb3.append(str2.substring(0, str2.lastIndexOf(".odex")));
                                        sb3.append(".vdex");
                                        TinkerDexOptimizer.waitUntilFileGeneratedOrTimeout(OptimizeWorker.this.context, sb3.toString(), new Long[0]);
                                    } catch (Throwable th4) {
                                        if (!OptimizeWorker.this.useEmergencyMode) {
                                            StringBuilder sb4 = new StringBuilder();
                                            String str3 = strOptimizedPathFor;
                                            sb4.append(str3.substring(0, str3.lastIndexOf(".odex")));
                                            sb4.append(".vdex");
                                            TinkerDexOptimizer.waitUntilFileGeneratedOrTimeout(OptimizeWorker.this.context, sb4.toString(), new Long[0]);
                                        }
                                        throw th4;
                                    }
                                }
                            }
                        };
                        if (this.useEmergencyMode) {
                            new Thread(runnable, "TinkerDex2oatTrigger").start();
                        } else {
                            runnable.run();
                        }
                    } else {
                        patchClassLoaderStrongRef = NewClassLoaderInjector.triggerDex2Oat(this.context, this.optimizedDir, this.useDLC, this.dexFile.getAbsolutePath());
                    }
                }
                File file = new File(strOptimizedPathFor);
                if (!SharePatchFileUtil.isLegalFile(file) && !SharePatchFileUtil.shouldAcceptEvenIfIllegal(file)) {
                    FileNotFoundException fileNotFoundException = new FileNotFoundException("Odex file: " + file.getAbsolutePath() + " does not exist.");
                    ResultCallback resultCallback3 = this.callback;
                    if (resultCallback3 != null) {
                        resultCallback3.onFailed(this.dexFile, this.optimizedDir, fileNotFoundException);
                    }
                    return false;
                }
                ResultCallback resultCallback4 = this.callback;
                if (resultCallback4 != null) {
                    resultCallback4.onSuccess(this.dexFile, this.optimizedDir, file);
                }
                return true;
            } catch (Throwable th3) {
                ShareTinkerLog.e("Tinker.ParallelDex", "Failed to optimize dex: " + this.dexFile.getAbsolutePath(), th3);
                ResultCallback resultCallback5 = this.callback;
                if (resultCallback5 != null) {
                    resultCallback5.onFailed(this.dexFile, this.optimizedDir, th3);
                }
                return false;
            }
        }
    }

    public interface ResultCallback {
        void onFailed(File file, File file2, Throwable th2);

        void onStart(File file, File file2);

        void onSuccess(File file, File file2, File file3);
    }

    private static class StreamConsumer {
        static final Executor STREAM_CONSUMER = Executors.newSingleThreadExecutor();

        private StreamConsumer() {
        }

        static void consumeInputStream(final InputStream inputStream) {
            STREAM_CONSUMER.execute(new Runnable() { // from class: com.tencent.tinker.loader.TinkerDexOptimizer.StreamConsumer.1
                @Override // java.lang.Runnable
                public void run() {
                    if (inputStream == null) {
                        return;
                    }
                    do {
                        try {
                        } catch (IOException unused) {
                        } finally {
                            try {
                                inputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                    } while (inputStream.read(new byte[256]) > 0);
                }
            });
        }
    }

    static {
        Handler handler = new Handler(Looper.getMainLooper());
        sHandler = handler;
        sEmptyResultReceiver = new ResultReceiver(handler);
        sSynchronizedPMCache = new PackageManager[]{null};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void createFakeODexPathStructureOnDemand(String str) {
        if (ShareTinkerInternals.isNewerOrEqualThanVersion(29, true)) {
            ShareTinkerLog.i("Tinker.ParallelDex", "Creating fake odex path structure.", new Object[0]);
            File file = new File(str);
            if (file.exists()) {
                return;
            }
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            try {
                file.createNewFile();
            } catch (Throwable unused) {
            }
        }
    }

    private static void executePMSShellCommand(Context context, String[] strArr) throws IllegalStateException {
        Parcel parcelObtain;
        IBinder pMSBinderProxy = getPMSBinderProxy(context);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        Parcel parcel = null;
        try {
            ShareTinkerLog.i("Tinker.ParallelDex", "[+] Execute shell cmd, args: %s", Arrays.toString(strArr));
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain = Parcel.obtain();
                try {
                    parcelObtain2.writeFileDescriptor(FileDescriptor.in);
                    parcelObtain2.writeFileDescriptor(FileDescriptor.out);
                    parcelObtain2.writeFileDescriptor(FileDescriptor.err);
                    parcelObtain2.writeStringArray(strArr);
                    parcelObtain2.writeStrongBinder(null);
                    sEmptyResultReceiver.writeToParcel(parcelObtain2, 0);
                    pMSBinderProxy.transact(1598246212, parcelObtain2, parcelObtain, 0);
                    parcelObtain.readException();
                    ShareTinkerLog.i("Tinker.ParallelDex", "[+] Execute shell cmd done.", new Object[0]);
                    parcelObtain.recycle();
                    parcelObtain2.recycle();
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                } catch (Throwable th2) {
                    th = th2;
                    parcel = parcelObtain2;
                    try {
                        throw new IllegalStateException("Failure on executing shell cmd.", th);
                    } catch (Throwable th3) {
                        if (parcelObtain != null) {
                            parcelObtain.recycle();
                        }
                        if (parcel != null) {
                            parcel.recycle();
                        }
                        Binder.restoreCallingIdentity(jClearCallingIdentity);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                parcelObtain = null;
            }
        } catch (Throwable th5) {
            th = th5;
            parcelObtain = null;
        }
    }

    private static IBinder getPMSBinderProxy(Context context) throws IllegalStateException {
        IBinder[] iBinderArr = sPMSBinderProxy;
        synchronized (iBinderArr) {
            IBinder iBinder = iBinderArr[0];
            if (iBinder != null && iBinder.isBinderAlive()) {
                return iBinder;
            }
            try {
                IBinder iBinder2 = (IBinder) ShareReflectUtil.findMethod(Class.forName("android.os.ServiceManager"), "getService", (Class<?>[]) new Class[]{String.class}).invoke(null, "package");
                iBinderArr[0] = iBinder2;
                return iBinder2;
            } catch (Throwable th2) {
                if (th2 instanceof InvocationTargetException) {
                    throw new IllegalStateException(th2.getTargetException());
                }
                throw new IllegalStateException(th2);
            }
        }
    }

    private static final PackageManager getSynchronizedPackageManager(Context context) throws IllegalStateException {
        PackageManager[] packageManagerArr = sSynchronizedPMCache;
        synchronized (packageManagerArr) {
            try {
                if (packageManagerArr[0] != null) {
                    IBinder[] iBinderArr = sPMSBinderProxy;
                    synchronized (iBinderArr) {
                        IBinder iBinder = iBinderArr[0];
                        if (iBinder != null && iBinder.isBinderAlive()) {
                            return packageManagerArr[0];
                        }
                    }
                }
                final IBinder pMSBinderProxy = getPMSBinderProxy(context);
                Object objInvoke = ShareReflectUtil.findMethod(Class.forName("android.content.pm.IPackageManager$Stub"), "asInterface", (Class<?>[]) new Class[]{IBinder.class}).invoke(null, (IBinder) Proxy.newProxyInstance(context.getClassLoader(), pMSBinderProxy.getClass().getInterfaces(), new InvocationHandler() { // from class: com.tencent.tinker.loader.TinkerDexOptimizer.2
                    @Override // java.lang.reflect.InvocationHandler
                    public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                        if ("transact".equals(method.getName())) {
                            objArr[3] = 0;
                        }
                        return method.invoke(pMSBinderProxy, objArr);
                    }
                }));
                Class<?> cls = Class.forName("android.app.ApplicationPackageManager");
                if (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                }
                PackageManager packageManager = (PackageManager) ShareReflectUtil.findConstructor(cls, (Class<?>[]) new Class[]{context.getClass(), Class.forName("android.content.pm.IPackageManager")}).newInstance(context, objInvoke);
                packageManagerArr[0] = packageManager;
                return packageManager;
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException(e11.getTargetException());
            } catch (Throwable th2) {
                if (th2 instanceof IllegalStateException) {
                    throw th2;
                }
                throw new IllegalStateException(th2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void interpretDex2Oat(String str, String str2, String str3) throws Exception {
        ShareFileLockHelper fileLock;
        File file = new File(str2);
        if (!file.exists()) {
            file.getParentFile().mkdirs();
        }
        try {
            fileLock = ShareFileLockHelper.getFileLock(new File(file.getParentFile(), "interpret.lock"));
            ArrayList arrayList = new ArrayList();
            arrayList.add("dex2oat");
            int i11 = Build.VERSION.SDK_INT;
            if (i11 >= 24) {
                arrayList.add("--runtime-arg");
                arrayList.add("-classpath");
                arrayList.add("--runtime-arg");
                arrayList.add(UrlUtils.AND_MARK);
            }
            arrayList.add("--dex-file=" + str);
            arrayList.add("--oat-file=" + str2);
            arrayList.add("--instruction-set=" + str3);
            if (i11 > 25) {
                arrayList.add("--compiler-filter=quicken");
            } else {
                arrayList.add("--compiler-filter=interpret-only");
            }
            ProcessBuilder processBuilder = new ProcessBuilder(arrayList);
            processBuilder.redirectErrorStream(true);
            Process processStart = processBuilder.start();
            StreamConsumer.consumeInputStream(processStart.getInputStream());
            StreamConsumer.consumeInputStream(processStart.getErrorStream());
            try {
                int iWaitFor = processStart.waitFor();
                if (iWaitFor != 0) {
                    throw new IOException("dex2oat works unsuccessfully, exit code: " + iWaitFor);
                }
                if (fileLock != null) {
                    try {
                        fileLock.close();
                        return;
                    } catch (IOException e11) {
                        ShareTinkerLog.w("Tinker.ParallelDex", "release interpret Lock error", e11);
                        return;
                    }
                }
                return;
            } catch (InterruptedException e12) {
                throw new IOException("dex2oat is interrupted, msg: " + e12.getMessage(), e12);
            }
            th = th;
        } catch (Throwable th2) {
            th = th2;
            fileLock = null;
        }
        if (fileLock != null) {
            try {
                fileLock.close();
            } catch (IOException e13) {
                ShareTinkerLog.w("Tinker.ParallelDex", "release interpret Lock error", e13);
            }
        }
        throw th;
    }

    public static boolean optimizeAll(Context context, Collection<File> collection, File file, boolean z10, boolean z11, ResultCallback resultCallback) {
        return optimizeAll(context, collection, file, false, z10, ShareTinkerInternals.getCurrentInstructionSet(), z11, resultCallback);
    }

    public static boolean optimizeAll(Context context, Collection<File> collection, File file, boolean z10, boolean z11, String str, boolean z12, ResultCallback resultCallback) {
        ArrayList arrayList = new ArrayList(collection);
        Collections.sort(arrayList, new Comparator<File>() { // from class: com.tencent.tinker.loader.TinkerDexOptimizer.1
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                long length = file2.length();
                long length2 = file3.length();
                if (length < length2) {
                    return 1;
                }
                return length == length2 ? 0 : -1;
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!new OptimizeWorker(context, (File) it.next(), file, z10, z11, str, z12, resultCallback).run()) {
                return false;
            }
        }
        return true;
    }

    private static void performBgDexOptJob(Context context) throws IllegalStateException {
        executePMSShellCommand(context, new String[]{"bg-dexopt-job", context.getPackageName()});
    }

    private static void performDexOptSecondary(Context context) throws IllegalStateException {
        executePMSShellCommand(context, new String[]{"compile", "-f", "--secondary-dex", "-m", ShareTinkerInternals.isNewerOrEqualThanVersion(31, true) ? "verify" : "speed-profile", context.getPackageName()});
    }

    private static void performDexOptSecondaryByTransactionCode(Context context) throws Throwable {
        Parcel parcel;
        Parcel parcelObtain;
        int[] iArr = sPerformDexOptSecondaryTransactionCode;
        synchronized (iArr) {
            try {
                parcel = null;
                if (iArr[0] == -1) {
                    try {
                        Method methodFindMethod = ShareReflectUtil.findMethod((Class<?>) Class.class, "getDeclaredField", (Class<?>[]) new Class[]{String.class});
                        methodFindMethod.setAccessible(true);
                        Field field = (Field) methodFindMethod.invoke(Class.forName("android.content.pm.IPackageManager$Stub"), "TRANSACTION_performDexOptSecondary");
                        field.setAccessible(true);
                        iArr[0] = ((Integer) field.get(null)).intValue();
                    } catch (Throwable th2) {
                        throw new IllegalStateException("Cannot query transaction code of performDexOptSecondary.", th2);
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        ShareTinkerLog.i("Tinker.ParallelDex", "[+] performDexOptSecondaryByTransactionCode, code: %s", Integer.valueOf(iArr[0]));
        IBinder pMSBinderProxy = getPMSBinderProxy(context);
        try {
            parcelObtain = Parcel.obtain();
            try {
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(pMSBinderProxy.getInterfaceDescriptor());
                    parcelObtain.writeString(context.getPackageName());
                    parcelObtain.writeString(ShareTinkerInternals.isNewerOrEqualThanVersion(31, true) ? "verify" : "speed-profile");
                    parcelObtain.writeInt(1);
                    if (!pMSBinderProxy.transact(iArr[0], parcelObtain, parcelObtain2, 0)) {
                        throw new IllegalStateException("Binder transaction failure.");
                    }
                    try {
                        parcelObtain2.readException();
                        if (parcelObtain2.readInt() == 0) {
                            ShareTinkerLog.w("Tinker.ParallelDex", "[!] System API return false.", new Object[0]);
                        }
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return;
                    } catch (Throwable th4) {
                        throw new IllegalStateException(th4);
                    }
                } catch (RemoteException e11) {
                    throw new IllegalStateException(e11);
                }
            } catch (Throwable th5) {
                th = th5;
            }
            th = th5;
        } catch (Throwable th6) {
            th = th6;
            parcelObtain = null;
        }
        if (0 != 0) {
            parcel.recycle();
        }
        if (parcelObtain != null) {
            parcelObtain.recycle();
        }
        throw th;
    }

    private static void registerDexModule(Context context, String str) throws IllegalStateException {
        PackageManager synchronizedPackageManager = getSynchronizedPackageManager(context);
        try {
            ShareReflectUtil.findMethod(synchronizedPackageManager, "registerDexModule", (Class<?>[]) new Class[]{String.class, Class.forName("android.content.pm.PackageManager$DexModuleRegisterCallback")}).invoke(synchronizedPackageManager, str, null);
        } catch (InvocationTargetException e11) {
            throw new IllegalStateException(e11.getTargetException());
        } catch (Throwable th2) {
            if (!(th2 instanceof IllegalStateException)) {
                throw new IllegalStateException(th2);
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void triggerPMDexOptOnDemand(Context context, String str, String str2) throws Exception {
        if (!ShareTinkerInternals.isNewerOrEqualThanVersion(29, true)) {
            ShareTinkerLog.w("Tinker.ParallelDex", "[+] Not API 29, 30 and newer device, skip triggering dexopt.", new Object[0]);
            return;
        }
        ShareTinkerLog.i("Tinker.ParallelDex", "[+] Hit target device, do dexopt logic now.", new Object[0]);
        File file = new File(str2);
        if (SharePatchFileUtil.isLegalFile(file)) {
            ShareTinkerLog.i("Tinker.ParallelDex", "[+] Oat file %s should be valid, skip triggering dexopt.", str2);
            return;
        }
        File file2 = new File(str);
        for (int i11 = 0; i11 < 10; i11++) {
            if (triggerSecondaryDexOpt(context, file2, file, true)) {
                return;
            }
        }
        if (SharePatchFileUtil.isLegalFile(file)) {
            return;
        }
        String str3 = Build.MANUFACTURER;
        if (!"huawei".equalsIgnoreCase(str3) && !"honor".equalsIgnoreCase(str3)) {
            throw new IllegalStateException("No odex file was generated after calling performDexOptSecondary");
        }
        for (int i12 = 0; i12 < 5; i12++) {
            try {
                registerDexModule(context, str);
                if (SharePatchFileUtil.isLegalFile(file)) {
                    break;
                }
                SystemClock.sleep(3000L);
            } catch (Throwable th2) {
                ShareTinkerLog.printErrStackTrace("Tinker.ParallelDex", th2, "[-] Error.", new Object[0]);
            }
        }
        if (!SharePatchFileUtil.isLegalFile(file)) {
            throw new IllegalStateException("No odex file was generated after calling registerDexModule");
        }
    }

    private static boolean triggerSecondaryDexOpt(Context context, File file, File file2, boolean z10) {
        try {
            performDexOptSecondary(context);
            if (SharePatchFileUtil.isLegalFile(file2)) {
                return true;
            }
        } catch (Throwable th2) {
            ShareTinkerLog.printErrStackTrace("Tinker.ParallelDex", th2, "[-] Error.", new Object[0]);
        }
        try {
            performBgDexOptJob(context);
            if (SharePatchFileUtil.isLegalFile(file2)) {
                return true;
            }
        } catch (Throwable th3) {
            ShareTinkerLog.printErrStackTrace("Tinker.ParallelDex", th3, "[-] Error.", new Object[0]);
        }
        try {
            performDexOptSecondaryByTransactionCode(context);
            if (SharePatchFileUtil.isLegalFile(file2)) {
                return true;
            }
        } catch (Throwable th4) {
            ShareTinkerLog.printErrStackTrace("Tinker.ParallelDex", th4, "[-] Error.", new Object[0]);
        }
        return z10 ? waitUntilFileGeneratedOrTimeout(context, file2.getAbsolutePath(), 3000L) : SharePatchFileUtil.isLegalFile(file2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean waitUntilFileGeneratedOrTimeout(Context context, String str, Long... lArr) {
        File file = new File(str);
        if (lArr == null || lArr.length <= 0) {
            lArr = new Long[]{1000L, 2000L, 4000L, 8000L, 16000L, 32000L};
        }
        int i11 = 0;
        while (!SharePatchFileUtil.isLegalFile(file) && i11 < lArr.length) {
            int i12 = i11 + 1;
            SystemClock.sleep(lArr[i11].longValue());
            ShareTinkerLog.w("Tinker.ParallelDex", "[!] File %s does not exist after waiting %s time(s), wait again.", str, Integer.valueOf(i12));
            i11 = i12;
        }
        if (SharePatchFileUtil.isLegalFile(file)) {
            ShareTinkerLog.i("Tinker.ParallelDex", "[+] File %s was found.", str);
            return true;
        }
        ShareTinkerLog.e("Tinker.ParallelDex", "[-] File %s does not exist after waiting for %s times.", str, Integer.valueOf(lArr.length));
        return false;
    }
}
