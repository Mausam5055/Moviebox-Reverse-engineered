package com.transsion.startup.pref.consume;

import android.app.ActivityManager;
import android.app.Application;
import android.os.SystemClock;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.miniapp.bridge.BluetoothBridge;
import com.transsion.baselib.report.h;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import my.f;

/* JADX INFO: loaded from: classes.dex */
public final class AppStartReport {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f54518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f54519c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AppStartReport f54517a = new AppStartReport();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map f54520d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List f54521e = new ArrayList();

    private AppStartReport() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map g() {
        long timestamp;
        try {
            Result.Companion companion = Result.INSTANCE;
            HashMap map = new HashMap();
            Map map2 = f54520d;
            AppStartDotState appStartDotState = (AppStartDotState) map2.get(AppStartDotState.APP_START);
            AppStartDotState appStartDotState2 = (AppStartDotState) map2.get(AppStartDotState.APP_END);
            AppStartDotState appStartDotState3 = (AppStartDotState) map2.get(AppStartDotState.MAIN_CREATE);
            AppStartDotState appStartDotState4 = (AppStartDotState) map2.get(AppStartDotState.TRENDING_END);
            long timestamp2 = appStartDotState3 != null ? appStartDotState3.getTimestamp() - (appStartDotState2 != null ? appStartDotState2.getTimestamp() : appStartDotState3.getTimestamp()) : 0L;
            Object obj = ((appStartDotState2 != null ? appStartDotState2.getTimestamp() : 0L) <= 0 || timestamp2 > 10000 || timestamp2 <= 0) ? "warm" : "cold";
            if (Intrinsics.c(obj, "warm")) {
                timestamp = appStartDotState4 != null ? appStartDotState4.getTimestamp() - (appStartDotState3 != null ? appStartDotState3.getTimestamp() : appStartDotState4.getTimestamp()) : 0L;
                map.put("act_app_gap", "0");
            } else {
                long timestamp3 = appStartDotState4 != null ? appStartDotState4.getTimestamp() - (appStartDotState != null ? appStartDotState.getTimestamp() : appStartDotState4.getTimestamp()) : 0L;
                map.put("act_app_gap", String.valueOf(timestamp2));
                timestamp = timestamp3;
            }
            if (timestamp <= 0) {
                return null;
            }
            map.put("total_time", String.valueOf(timestamp));
            map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, h.f43348a.e());
            map.put("model", obj);
            ih.b bVar = ih.b.f65241a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            ActivityManager.MemoryInfo memoryInfoK = bVar.k(applicationA);
            map.put("mem_size", String.valueOf(memoryInfoK.totalMem));
            map.put("low_memory", String.valueOf(memoryInfoK.lowMemory));
            Iterator it = DownloadSDCardUtil.f59894a.b().iterator();
            long jA = 0;
            while (it.hasNext()) {
                jA += ((f) it.next()).a();
            }
            map.put(BluetoothBridge.EXTEA_AVALIABLE, String.valueOf(jA));
            map.put("cpu_size", String.valueOf(Runtime.getRuntime().availableProcessors()));
            boolean z10 = f54519c;
            if (z10) {
                map.put("first_open", String.valueOf(z10));
            }
            final long timestamp4 = appStartDotState != null ? appStartDotState.getTimestamp() : 0L;
            Function1 function1 = new Function1() { // from class: com.transsion.startup.pref.consume.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return Long.valueOf(AppStartReport.h(timestamp4, (String) obj2));
                }
            };
            map.put(AppStartDotState.APP_START, "0");
            map.put(AppStartDotState.APP_END, String.valueOf(((Number) function1.invoke(AppStartDotState.APP_END)).longValue() - timestamp4));
            map.put(AppStartDotState.SPLASH_START, String.valueOf(((Number) function1.invoke(AppStartDotState.SPLASH_START)).longValue() - timestamp4));
            map.put(AppStartDotState.SPLASH_RESUME, String.valueOf(((Number) function1.invoke(AppStartDotState.SPLASH_RESUME)).longValue() - timestamp4));
            map.put(AppStartDotState.AD_LOADING, String.valueOf(((Number) function1.invoke(AppStartDotState.AD_LOADING)).longValue() - timestamp4));
            map.put(AppStartDotState.AD_END, String.valueOf(((Number) function1.invoke(AppStartDotState.AD_END)).longValue() - timestamp4));
            map.put(AppStartDotState.AD_RENDERING, String.valueOf(((Number) function1.invoke(AppStartDotState.AD_RENDERING)).longValue() - timestamp4));
            map.put(AppStartDotState.MAIN_CREATE, String.valueOf(((Number) function1.invoke(AppStartDotState.MAIN_CREATE)).longValue() - timestamp4));
            map.put(AppStartDotState.TRENDING_CREATE, String.valueOf(((Number) function1.invoke(AppStartDotState.TRENDING_CREATE)).longValue() - timestamp4));
            map.put(AppStartDotState.TRENDING_RENDER, String.valueOf(((Number) function1.invoke(AppStartDotState.TRENDING_RENDER)).longValue() - timestamp4));
            map.put(AppStartDotState.TRENDING_END, String.valueOf(((Number) function1.invoke(AppStartDotState.TRENDING_END)).longValue() - timestamp4));
            for (Pair pair : f54521e) {
                map.put("trace_" + ((String) pair.component1()), String.valueOf(((Number) pair.component2()).longValue() - timestamp4));
            }
            return map;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            if (Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2))) == null) {
                throw new KotlinNothingValueException();
            }
            f54517a.i("error error error --- failed to obtain device information");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long h(long j11, String dot) {
        Intrinsics.h(dot, "dot");
        AppStartDotState appStartDotState = (AppStartDotState) f54520d.get(dot);
        return appStartDotState != null ? appStartDotState.getTimestamp() : j11;
    }

    private final void i(String str) {
        Log.w("zxb_log_dot", str);
    }

    public final void f(AppStartDotState dot) {
        Intrinsics.h(dot, "dot");
        if (f54518b) {
            return;
        }
        Map map = f54520d;
        if (map.containsKey(dot.getState())) {
            return;
        }
        map.put(dot.getState(), dot);
        if (Intrinsics.c(dot.getState(), AppStartDotState.MAIN_CREATE)) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            f54519c = bVar.b().getBoolean("first_open", true);
            bVar.b().putBoolean("first_open", false);
        } else if (Intrinsics.c(dot.getState(), AppStartDotState.TRENDING_END)) {
            j();
        }
    }

    public final void j() {
        if (f54518b) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new AppStartReport$report$1(null), 3, null);
    }

    public final void k() {
        f54518b = false;
    }

    public final void l(String name) {
        Intrinsics.h(name, "name");
        if (f54518b) {
            return;
        }
        f54521e.add(TuplesKt.a(name, Long.valueOf(SystemClock.elapsedRealtime())));
    }
}
