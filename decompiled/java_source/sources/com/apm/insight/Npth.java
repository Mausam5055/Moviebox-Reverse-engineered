package com.apm.insight;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import com.apm.insight.runtime.ConfigManager;
import com.apm.insight.runtime.l;
import com.meituan.android.walle.ChannelReader;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class Npth {
    private static boolean sInit;

    public static void addAttachLongUserData(AttachUserData attachUserData, CrashType crashType) {
        if (attachUserData != null) {
            e.b().b(attachUserData, crashType);
        }
    }

    public static void addAttachUserData(AttachUserData attachUserData, CrashType crashType) {
        if (attachUserData != null) {
            e.b().a(attachUserData, crashType);
        }
    }

    public static void addTags(Map<? extends String, ? extends String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        e.b().a(map);
    }

    public static void checkInnerNpth(boolean z10) {
        l.c(z10);
    }

    public static void dumpHprof(String str) {
        l.c(str);
    }

    public static void enableActivityDump(boolean z10) {
        e.e(z10);
    }

    public static void enableAnrInfo(boolean z10) {
        l.b(z10);
    }

    public static void enableLoopMonitor(boolean z10) {
        l.a(z10);
    }

    public static void enableMessageDump(boolean z10) {
        e.f(z10);
    }

    public static void enableNativeDump(boolean z10) {
        l.d(z10);
    }

    public static void enableThreadsBoost() {
        e.l();
    }

    public static ConfigManager getConfigManager() {
        return e.i();
    }

    public static boolean hasCrash() {
        return l.l();
    }

    public static boolean hasCrashWhenJavaCrash() {
        return l.m();
    }

    public static boolean hasCrashWhenNativeCrash() {
        return l.n();
    }

    public static synchronized void init(@NonNull Application application, @NonNull Context context, @NonNull ICommonParams iCommonParams, boolean z10, boolean z11, boolean z12, boolean z13, long j11) {
        if (sInit) {
            return;
        }
        sInit = true;
        l.a(application, context);
        e.a(application, context, iCommonParams);
        Map<String, Object> mapA = e.a().a();
        MonitorCrash monitorCrashInit = MonitorCrash.init(context, String.valueOf(com.apm.insight.l.c.AnonymousClass1.a(mapA.get("aid"), 4444)), com.apm.insight.l.c.AnonymousClass1.a(mapA.get("update_version_code"), 0), String.valueOf(mapA.get("app_version")));
        if (monitorCrashInit != null) {
            monitorCrashInit.config().setDeviceId(e.a().d()).setChannel(String.valueOf(mapA.get(ChannelReader.CHANNEL_KEY)));
        }
    }

    public static synchronized void init(@NonNull Context context, @NonNull ICommonParams iCommonParams) {
        init(context, iCommonParams, true, false, false);
    }

    public static synchronized void init(@NonNull Context context, @NonNull ICommonParams iCommonParams, boolean z10, boolean z11, boolean z12) {
        init(context, iCommonParams, z10, z10, z11, z12);
    }

    public static synchronized void init(@NonNull Context context, @NonNull ICommonParams iCommonParams, boolean z10, boolean z11, boolean z12, boolean z13) {
        init(context, iCommonParams, z10, z11, z12, z13, 0L);
    }

    public static synchronized void init(@NonNull Context context, @NonNull ICommonParams iCommonParams, boolean z10, boolean z11, boolean z12, boolean z13, long j11) {
        Application applicationH;
        Context baseContext = context;
        synchronized (Npth.class) {
            try {
                if (e.h() != null) {
                    applicationH = e.h();
                } else if (baseContext instanceof Application) {
                    applicationH = (Application) baseContext;
                    if (applicationH.getBaseContext() == null) {
                        throw new IllegalArgumentException("The Application passed in when init has not been attached, please pass a attachBaseContext as param and call Npth.setApplication(Application) before init.");
                    }
                } else {
                    try {
                        applicationH = (Application) context.getApplicationContext();
                        if (applicationH == null) {
                            throw new IllegalArgumentException("Can not get the Application instance since a baseContext was passed in when init, please call Npth.setApplication(Application) before init.");
                        }
                        if (applicationH.getBaseContext() != null) {
                            baseContext = applicationH.getBaseContext();
                        }
                    } catch (Throwable unused) {
                        throw new IllegalArgumentException("Can not get the Application instance since a baseContext was passed in when init, please call Npth.setApplication(Application) before init.");
                    }
                }
                init(applicationH, baseContext, iCommonParams, z10, z11, z12, z13, j11);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static synchronized void initMiniApp(@NonNull Context context, @NonNull ICommonParams iCommonParams) {
        e.o();
        init(context, iCommonParams, true, false, true, true);
    }

    public static synchronized void initMiniApp(@NonNull Context context, @NonNull ICommonParams iCommonParams, int i11, String str) {
        e.o();
        e.b(i11, str);
        init(context, iCommonParams, true, true, true, true);
    }

    public static boolean isANREnable() {
        return l.c();
    }

    public static boolean isInit() {
        return sInit;
    }

    public static boolean isJavaCrashEnable() {
        return l.b();
    }

    public static boolean isNativeCrashEnable() {
        return l.d();
    }

    public static boolean isRunning() {
        return l.i();
    }

    public static boolean isStopUpload() {
        return l.o();
    }

    public static void openANRMonitor() {
        l.g();
    }

    public static void openJavaCrashMonitor() {
        l.f();
    }

    public static boolean openNativeCrashMonitor() {
        return l.h();
    }

    public static void registerCrashCallback(ICrashCallback iCrashCallback, CrashType crashType) {
        l.a(iCrashCallback, crashType);
    }

    public static void registerOOMCallback(IOOMCallback iOOMCallback) {
        l.a(iOOMCallback);
    }

    public static void registerSdk(int i11, String str) {
        e.a(i11, str);
    }

    public static void removeAttachLongUserData(AttachUserData attachUserData, CrashType crashType) {
        if (attachUserData != null) {
            e.b().b(crashType, attachUserData);
        }
    }

    public static void removeAttachUserData(AttachUserData attachUserData, CrashType crashType) {
        if (attachUserData != null) {
            e.b().a(crashType, attachUserData);
        }
    }

    public static void reportDartError(String str) {
        l.a(str);
    }

    @Deprecated
    public static void reportError(String str) {
        l.b(str);
    }

    @Deprecated
    public static void reportError(@NonNull Throwable th2) {
        l.a(th2);
    }

    public static void setAlogFlushAddr(long j11) {
        l.k();
    }

    public static void setAlogFlushV2Addr(long j11) {
        l.a(j11);
    }

    public static void setAlogLogDirAddr(long j11) {
        l.b(j11);
    }

    public static void setAlogWriteAddr(long j11) {
    }

    public static void setApplication(Application application) {
        e.a(application);
    }

    @Deprecated
    public static void setAttachUserData(AttachUserData attachUserData, CrashType crashType) {
        if (attachUserData != null) {
            e.b().a(attachUserData, crashType);
        }
    }

    public static void setBusiness(String str) {
        if (str != null) {
            e.a(str);
        }
    }

    public static void setCrashFilter(ICrashFilter iCrashFilter) {
        e.b().a(iCrashFilter);
    }

    public static void setCrashWaitTime(long j11) {
        com.apm.insight.g.a.a(j11);
    }

    public static void setCurProcessName(String str) {
        com.apm.insight.l.a.a(str);
    }

    public static void stopAnr() {
        l.j();
    }

    public static void stopUpload() {
        l.p();
    }

    public static void unregisterCrashCallback(ICrashCallback iCrashCallback, CrashType crashType) {
        l.b(iCrashCallback, crashType);
    }

    public static void unregisterOOMCallback(IOOMCallback iOOMCallback, CrashType crashType) {
        l.b(iOOMCallback);
    }
}
