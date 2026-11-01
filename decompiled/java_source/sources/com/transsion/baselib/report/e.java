package com.transsion.baselib.report;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Debug;
import android.os.Process;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.therouter.TheRouter;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f43344a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f43345b = LazyKt.b(new Function0() { // from class: com.transsion.baselib.report.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.j();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Regex f43346c = new Regex("VmSize:\\s*(\\d+)\\s*kB");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Regex f43347d = new Regex("VmRSS:\\s*(\\d+)\\s*kB");

    private e() {
    }

    private final String d(long j11) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format(Locale.ENGLISH, "%.1f", Arrays.copyOf(new Object[]{Float.valueOf((j11 / 1024.0f) / 1024.0f)}, 1));
        Intrinsics.g(str, "format(...)");
        return str + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB;
    }

    private final void e(File file, Charset charset, Function1 function1) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            TextStreamsKt.c(new BufferedReader(new InputStreamReader(new FileInputStream(file), charset)), function1);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            thM457exceptionOrNullimpl.printStackTrace();
        }
    }

    static /* synthetic */ void f(e eVar, File file, Charset charset, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        eVar.e(file, charset, function1);
    }

    private final Debug.MemoryInfo h(Context context) {
        if (context == null) {
            return null;
        }
        Object systemService = context.getSystemService("activity");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
        ActivityManager activityManager = (ActivityManager) systemService;
        activityManager.getMemoryInfo(new ActivityManager.MemoryInfo());
        Debug.MemoryInfo[] processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()});
        Intrinsics.g(processMemoryInfo, "getProcessMemoryInfo(...)");
        return processMemoryInfo[0];
    }

    private final String i(int i11) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
        String str = String.format(Locale.ENGLISH, "%.1f", Arrays.copyOf(new Object[]{Float.valueOf(i11 / 1024.0f)}, 1));
        Intrinsics.g(str, "format(...)");
        return str + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi j() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    private final int k(Regex regex, String str) {
        List listA;
        String str2;
        MatchResult matchResultMatchEntire = regex.matchEntire(StringsKt.n1(str).toString());
        if (matchResultMatchEntire == null || (listA = matchResultMatchEntire.a()) == null || (str2 = (String) CollectionsKt.l0(listA, 1)) == null) {
            return 0;
        }
        return Integer.parseInt(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m(Bundle bundle, String line) {
        Intrinsics.h(line, "line");
        if (StringsKt.W(line, "VmSize", false, 2, null)) {
            if (bundle != null) {
                e eVar = f43344a;
                bundle.putString("vss", eVar.i(eVar.k(f43346c, line)));
            }
        } else if (StringsKt.W(line, "VmRSS", false, 2, null) && bundle != null) {
            e eVar2 = f43344a;
            bundle.putString("rss", eVar2.i(eVar2.k(f43347d, line)));
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(jb.b bVar, String line) {
        Intrinsics.h(line, "line");
        if (StringsKt.W(line, "VmSize", false, 2, null)) {
            e eVar = f43344a;
            bVar.c("vss", eVar.i(eVar.k(f43346c, line)));
        } else if (StringsKt.W(line, "VmRSS", false, 2, null)) {
            e eVar2 = f43344a;
            bVar.c("rss", eVar2.i(eVar2.k(f43347d, line)));
        }
        return Unit.f67061a;
    }

    public final ILoginApi g() {
        return (ILoginApi) f43345b.getValue();
    }

    public final void l(String event, final Bundle bundle, Context context) {
        Intrinsics.h(event, "event");
        FirebaseAnalytics firebaseAnalyticsA = jb.a.a(com.google.firebase.c.f31069a);
        Debug.MemoryInfo memoryInfoH = h(context);
        if (memoryInfoH != null) {
            if (bundle != null) {
                bundle.putString("max_heap", f43344a.d(Runtime.getRuntime().maxMemory()));
            }
            if (bundle != null) {
                bundle.putString("total_heap", f43344a.d(Runtime.getRuntime().totalMemory()));
            }
            if (bundle != null) {
                bundle.putString("free_heap", f43344a.d(Runtime.getRuntime().freeMemory()));
            }
            if (bundle != null) {
                bundle.putString("native_pss", f43344a.i(memoryInfoH.nativePss));
            }
            if (bundle != null) {
                bundle.putString("other_pss", f43344a.i(memoryInfoH.otherPss));
            }
            f(f43344a, new File("/proc/self/status"), null, new Function1() { // from class: com.transsion.baselib.report.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return e.m(bundle, (String) obj);
                }
            }, 1, null);
        }
        firebaseAnalyticsA.logEvent(event, bundle);
    }

    public final void n(String screenName, Long l11, Context context) {
        Intrinsics.h(screenName, "screenName");
        FirebaseAnalytics firebaseAnalyticsA = jb.a.a(com.google.firebase.c.f31069a);
        final jb.b bVar = new jb.b();
        bVar.c("screen_name", screenName);
        bVar.c("screen_class", screenName);
        if (l11 != null) {
            bVar.b("engagement_time_msec", l11.longValue());
            e eVar = f43344a;
            Debug.MemoryInfo memoryInfoH = eVar.h(context);
            if (memoryInfoH != null) {
                bVar.c("max_heap", eVar.d(Runtime.getRuntime().maxMemory()));
                bVar.c("total_heap", eVar.d(Runtime.getRuntime().totalMemory()));
                bVar.c("free_heap", eVar.d(Runtime.getRuntime().freeMemory()));
                bVar.c("native_pss", eVar.i(memoryInfoH.nativePss));
                bVar.c("other_pss", eVar.i(memoryInfoH.otherPss));
                f(eVar, new File("/proc/self/status"), null, new Function1() { // from class: com.transsion.baselib.report.d
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return e.o(bVar, (String) obj);
                    }
                }, 1, null);
            }
        }
        firebaseAnalyticsA.logEvent("screen_view", bVar.a());
    }

    public final void p(boolean z10) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(Utils.a());
        Intrinsics.g(firebaseAnalytics, "getInstance(...)");
        firebaseAnalytics.setAnalyticsCollectionEnabled(z10);
        FirebaseCrashlytics firebaseCrashlyticsA = nb.i.a(com.google.firebase.c.f31069a);
        firebaseCrashlyticsA.setCrashlyticsCollectionEnabled(z10);
        firebaseCrashlyticsA.setCustomKey("original_vs", "4.0.01.0813.02");
    }

    public final void q() {
        UserInfo userInfoI;
        ILoginApi iLoginApiG = g();
        String userId = (iLoginApiG == null || (userInfoI = iLoginApiG.i()) == null) ? null : userInfoI.getUserId();
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        String string = bVar.b().getString("firebase_id", "");
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(userId)) {
                userId = TextUtils.isEmpty(userId) ? ih.b.f65241a.h() : string;
            }
            bVar.b().putString("firebase_id", userId);
            string = userId;
        }
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(Utils.a());
        Intrinsics.g(firebaseAnalytics, "getInstance(...)");
        firebaseAnalytics.setUserId(string);
        FirebaseCrashlytics firebaseCrashlyticsA = nb.i.a(com.google.firebase.c.f31069a);
        if (string != null) {
            firebaseCrashlyticsA.setUserId(string);
        }
    }
}
