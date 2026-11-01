package vj;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import androidx.work.impl.utils.i;
import com.blankj.utilcode.util.ThreadUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.db.pslink.AppInstalledBean;
import com.transsion.mb.config.manager.ConfigBean;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import sm.f;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f77333a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SimpleDateFormat f77334b = new SimpleDateFormat("yyyyMMdd", Locale.US);

    private d() {
    }

    private final boolean c() {
        MMKV mmkvO = MMKV.o();
        Intrinsics.g(mmkvO, "defaultMMKV(...)");
        String str = f77334b.format(new Date());
        int iG = Intrinsics.c(mmkvO.l("app_exit_monitor_date", ""), str) ? mmkvO.g("app_exit_monitor_count", 0) : 0;
        if (iG >= 2) {
            return false;
        }
        mmkvO.v("app_exit_monitor_date", str);
        mmkvO.s("app_exit_monitor_count", iG + 1);
        return true;
    }

    private final void d(Context context) {
        Object next;
        Object objM454constructorimpl;
        String strE;
        ActivityManager activityManager = (ActivityManager) context.getSystemService(ActivityManager.class);
        if (activityManager == null) {
            return;
        }
        List historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(null, 0, 5);
        Intrinsics.g(historicalProcessExitReasons, "getHistoricalProcessExitReasons(...)");
        Iterator it = historicalProcessExitReasons.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (i.a(next).getReason() != 6);
        ApplicationExitInfo applicationExitInfoA = i.a(next);
        if (applicationExitInfoA == null) {
            return;
        }
        if (!c()) {
            lg.a.C0828a.f(lg.a.f68839a, "AppExitMonitor", "ANR report skipped: daily limit reached", false, 4, null);
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            InputStream traceInputStream = applicationExitInfoA.getTraceInputStream();
            if (traceInputStream != null) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(traceInputStream, Charsets.UTF_8), 8192);
                try {
                    strE = TextStreamsKt.e(bufferedReader);
                    CloseableKt.a(bufferedReader, null);
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(bufferedReader, th2);
                        throw th3;
                    }
                }
            } else {
                strE = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(strE);
        } catch (Throwable th4) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th4));
        }
        String str = (String) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
        String strE2 = str != null ? e(str) : "trace_unavailable";
        long j11 = 1024;
        long pss = applicationExitInfoA.getPss() / j11;
        long rss = applicationExitInfoA.getRss() / j11;
        lg.a.C0828a.f(lg.a.f68839a, "AppExitMonitor", "ANR detected | time=" + applicationExitInfoA.getTimestamp() + " desc=" + applicationExitInfoA.getDescription() + " pss=" + pss + "MB rss=" + rss + AppInstalledBean.APP_INSTALLED_BEAN_SOURCE_MB, false, 4, null);
        hj.i iVar = hj.i.f64505a;
        String description = applicationExitInfoA.getDescription();
        if (description == null) {
            description = "";
        }
        iVar.s("/app/exit_monitor", "app_perf", MapsKt.j(TuplesKt.a(TrackingKey.DESCRIPTION, description), TuplesKt.a("process", applicationExitInfoA.getProcessName()), TuplesKt.a("pss_mb", String.valueOf(pss)), TuplesKt.a("rss_mb", String.valueOf(rss)), TuplesKt.a("importance", String.valueOf(applicationExitInfoA.getImportance())), TuplesKt.a("trace", strE2)));
    }

    private final String e(String str) {
        String str2;
        List listA;
        Integer numValueOf = Integer.valueOf(StringsKt.o0(str, "\"main\"", 0, false, 6, null));
        if (numValueOf.intValue() < 0) {
            numValueOf = null;
        }
        if (numValueOf == null) {
            return StringsKt.y1(str, 1500);
        }
        int iIntValue = numValueOf.intValue();
        Integer numValueOf2 = Integer.valueOf(StringsKt.o0(str, "\n\n", iIntValue, false, 4, null));
        if (numValueOf2.intValue() <= 0) {
            numValueOf2 = null;
        }
        String strSubstring = str.substring(iIntValue, Math.min(numValueOf2 != null ? numValueOf2.intValue() : str.length(), iIntValue + 4500));
        Intrinsics.g(strSubstring, "substring(...)");
        MatchResult matchResultFind$default = Regex.find$default(new Regex("\\|\\s+state=(\\S+)"), strSubstring, 0, 2, null);
        if (matchResultFind$default == null || (listA = matchResultFind$default.a()) == null || (str2 = (String) listA.get(1)) == null) {
            str2 = UrlUtils.QUESTION_MARK;
        }
        String str3 = (String) SequencesKt.t(StringsKt.x0(strSubstring));
        if (str3 == null) {
            str3 = "";
        }
        return StringsKt.y1(str3 + " [state=" + str2 + "]\n" + SequencesKt.w(SequencesKt.p(SequencesKt.o(StringsKt.x0(strSubstring), 1), new Function1() { // from class: vj.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(d.f((String) obj));
            }
        }), "\n", null, null, 0, null, null, 62, null), 1500);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(String line) {
        Intrinsics.h(line, "line");
        String string = StringsKt.s1(line).toString();
        return StringsKt.W(string, "at ", false, 2, null) || StringsKt.W(string, "- ", false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Context context) {
        Object objM454constructorimpl;
        d dVar = f77333a;
        try {
            Result.Companion companion = Result.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            dVar.d(applicationContext);
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "AppExitMonitor", "AppExitMonitor init failed: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
    }

    public final void g(final Context context) {
        Intrinsics.h(context, "context");
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        ConfigBean configBeanD = f.d(f.f75407c.a(), "app_exit_monitor_enable", false, 2, null);
        if (Intrinsics.c(configBeanD != null ? configBeanD.getValue() : null, "false")) {
            return;
        }
        ThreadUtils.f().execute(new Runnable() { // from class: vj.b
            @Override // java.lang.Runnable
            public final void run() {
                d.h(context);
            }
        });
    }
}
