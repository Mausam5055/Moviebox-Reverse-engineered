package yx;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import com.transsion.ad.bidding.base.v;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.ad.ps.activate.PsActivateBean;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.MemberSource;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;
import ti.p;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f79085a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static PsActivateBean f79086b;

    /* JADX INFO: renamed from: yx.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0972a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f79087a;

        static {
            int[] iArr = new int[MemberSource.values().length];
            try {
                iArr[MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MemberSource.SOURCE_STREAM_RESOLUTION_TIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MemberSource.SOURCE_STREAM_RESOLUTION_START_PLAY_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f79087a = iArr;
        }
    }

    private a() {
    }

    private final boolean c(Activity activity) {
        if (v.f41893a.b()) {
            lg.a.C0828a.g(lg.a.f68839a, "ActivateAdManager --> canShow(" + activity.getClass().getSimpleName() + ") --> 当前Activity广告正在展示", false, 2, null);
            return false;
        }
        if (i()) {
            lg.a.C0828a.g(lg.a.f68839a, f() + " --> canShow(" + activity.getClass().getSimpleName() + ") --> 配置已关闭", false, 2, null);
            return false;
        }
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        String string = bVar.b().getString("activate_show_date", "");
        String strC = p.f76266a.c();
        if (!TextUtils.equals(string, strC)) {
            bVar.b().putInt("activate_show_times", 0);
            lg.a.C0828a.g(lg.a.f68839a, f() + " --> canShow(" + activity.getClass().getSimpleName() + ") --> 新的一天重置次数 --> curDate = " + strC + " --> lastShowDate = " + string, false, 2, null);
        }
        int i11 = bVar.b().getInt("activate_show_times", 0);
        int iH = h();
        if (i11 >= iH) {
            lg.a.C0828a.g(lg.a.f68839a, f() + " --> canShow(" + activity.getClass().getSimpleName() + ") --> 展示次数已达上限 --> showTimes = " + i11 + " --> limit = " + iH, false, 2, null);
            return false;
        }
        long jG = g();
        long j11 = bVar.b().getLong("activate_show_timestamp", 0L);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j12 = jElapsedRealtime - j11;
        if (j12 >= jG) {
            return true;
        }
        lg.a.C0828a.g(lg.a.f68839a, f() + " --> canShow(" + activity.getClass().getSimpleName() + ") --> 展示间隔未到 --> lastShowTimestamp = " + j11 + " --> cur = " + jElapsedRealtime + " --> interval = " + jG + " --> gap = " + j12, false, 2, null);
        return false;
    }

    private final String f() {
        String simpleName = a.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final SpannableStringBuilder a(Context context, String rawTitle) {
        Intrinsics.h(context, "context");
        Intrinsics.h(rawTitle, "rawTitle");
        String strO = o(rawTitle);
        String strP = p(j(), "notificationStyleTitle", strO);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strP);
        int iO0 = StringsKt.o0(strP, strO, 0, false, 6, null);
        spannableStringBuilder.setSpan(new StyleSpan(2), iO0, strO.length() + iO0, 33);
        return spannableStringBuilder;
    }

    public final SpannableStringBuilder b(Context context, String name, String fullText) {
        Intrinsics.h(context, "context");
        Intrinsics.h(name, "name");
        Intrinsics.h(fullText, "fullText");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fullText);
        int iO0 = StringsKt.o0(fullText, name, 0, false, 6, null);
        spannableStringBuilder.setSpan(new StyleSpan(2), iO0, name.length() + iO0, 33);
        return spannableStringBuilder;
    }

    public final void d(boolean z10) {
        PsActivateBean psActivateBean;
        lg.a.C0828a.g(lg.a.f68839a, "ActivateAdManager --> consumeActivateAd() --> 广告被消费 --> bestAd = " + f79086b, false, 2, null);
        if (z10 && (psActivateBean = f79086b) != null) {
            PSActivateManager.f42171a.a(psActivateBean);
        }
        f79086b = null;
    }

    public final PsActivateBean e(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (!c(activity)) {
            return null;
        }
        if (f79086b == null) {
            PsActivateBean psActivateBeanB = PSActivateManager.f42171a.b();
            f79086b = psActivateBeanB;
            if (psActivateBeanB != null) {
                q();
            }
        }
        return f79086b;
    }

    public final long g() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(Long.valueOf(new JSONObject(value).optLong("notificationStyleIntervalMinutes") * ((long) 60) * 1000));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = 1000L;
        }
        return ((Number) objM454constructorimpl).longValue();
    }

    public final int h() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(Integer.valueOf(new JSONObject(value).optInt("notificationStyleLimit")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = 3;
        }
        return ((Number) objM454constructorimpl).intValue();
    }

    public final boolean i() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(new JSONObject(value).optBoolean("notificationStyleOff")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final String j() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(new JSONObject(value).optString("notificationStyleTitle"));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : "");
    }

    public final boolean k(MemberSource sceneId) {
        Object objM454constructorimpl;
        String str;
        String value;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            int i11 = C0972a.f79087a[sceneId.ordinal()];
            String str2 = "";
            if (i11 == 1) {
                str = "activateDialogResolutionOff";
            } else if (i11 != 2) {
                str = i11 != 3 ? "" : "activateDialogNoResolutionOff";
            } else {
                str = "activateDialogTipResolutionOff";
            }
            ConfigBean configBeanC = sm.f.f75407c.a().c("activate_config", true);
            if (configBeanC != null && (value = configBeanC.getValue()) != null) {
                str2 = value;
            }
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(new JSONObject(str2).optBoolean(str)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.TRUE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final int l() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(Integer.valueOf(new JSONObject(value).optInt("installedGuideTipViewAutoCloseTime")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = 10;
        }
        return ((Number) objM454constructorimpl).intValue();
    }

    public final boolean m() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(new JSONObject(value).optBoolean("isAutoOpenApp")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final boolean n() {
        Object objM454constructorimpl;
        String value;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("activate_config", true);
            if (configBeanC == null || (value = configBeanC.getValue()) == null) {
                value = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(new JSONObject(value).optBoolean("isShowInstalledGuideTipView")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    public final String o(String text) {
        Intrinsics.h(text, "text");
        if (text.length() <= 10) {
            return text;
        }
        String strSubstring = text.substring(0, 9);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring + "…";
    }

    public final String p(String text, String placeholder, String target) {
        Intrinsics.h(text, "text");
        Intrinsics.h(placeholder, "placeholder");
        Intrinsics.h(target, "target");
        return StringsKt.c0(text, placeholder, false, 2, null) ? StringsKt.Q(text, placeholder, target, false, 4, null) : text;
    }

    public final void q() {
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        String string = bVar.b().getString("activate_show_date", "");
        p pVar = p.f76266a;
        if (!TextUtils.equals(string, pVar.c())) {
            bVar.b().putString("activate_show_date", pVar.c());
            bVar.b().putInt("activate_show_times", 0);
            lg.a.C0828a.g(lg.a.f68839a, "ActivateAdManager --> showActivateAd() --> 广告展示 --> bestAd = " + f79086b + " --> 日期重置", false, 2, null);
        }
        int i11 = bVar.b().getInt("activate_show_times", 0) + 1;
        bVar.b().putInt("activate_show_times", i11);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        bVar.b().putLong("activate_show_timestamp", jElapsedRealtime);
        lg.a.C0828a.g(lg.a.f68839a, "ActivateAdManager --> showActivateAd() --> 广告展示 --> bestAd = " + f79086b + " --> cur = " + jElapsedRealtime + " --> showTimes = " + i11, false, 2, null);
    }
}
