package com.transsion.baselib.report;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.meituan.android.walle.ChannelReader;
import com.transsion.mpush.core.config.PushMsgSource;
import com.transsion.startup.pref.consume.AppStartDotState;
import java.util.Calendar;
import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f43348a = new h();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f43349b = "cold";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f43350c = SystemClock.elapsedRealtime();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f43351d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f43352e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Uri f43353f;

    private h() {
    }

    private final int a(long j11) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j11);
        return (calendar.get(1) * 10000) + ((calendar.get(2) + 1) * 100) + calendar.get(5);
    }

    private final String d(Uri uri) {
        if (uri == null) {
            return "launch";
        }
        return Intrinsics.c(com.transsion.baselib.helper.b.f43264a.c(uri).getUtmSource(), PushMsgSource.SOURCE_PUSH) ? PushMsgSource.SOURCE_PUSH : "deeplink";
    }

    private final void g(long j11) {
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_SOURCE, f43351d);
        map.put(ChannelReader.CHANNEL_KEY, f43352e);
        map.put("duration", String.valueOf(j11));
        hj.i.f64505a.t("app_stop", map);
    }

    private final void h(String str) {
        f43351d = d(f43353f);
        String utmSource = com.transsion.baselib.helper.b.f43264a.c(f43353f).getUtmSource();
        if (utmSource == null) {
            utmSource = "";
        }
        f43352e = utmSource;
        f43353f = null;
        HashMap map = new HashMap();
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, str);
        map.put(EventConstants.KEY_SOURCE, f43351d);
        map.put(ChannelReader.CHANNEL_KEY, f43352e);
        hj.i iVar = hj.i.f64505a;
        iVar.t(AppStartDotState.APP_START, map);
        if (Intrinsics.c(f43351d, "launch")) {
            iVar.t("app_launch_channel", map);
            j(f43352e);
        }
    }

    private final void j(String str) {
        Long lX;
        try {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            bVar.b().putString("k_last_open_channel", str);
            String string = bVar.b().getString("k_last_open_time", "0");
            long jLongValue = (string == null || (lX = StringsKt.x(string)) == null) ? 0L : lX.longValue();
            if (!DateUtils.isToday(jLongValue)) {
                int i11 = bVar.b().getInt("k_open_day_count", 0);
                int iA = a(jLongValue);
                int iA2 = a(System.currentTimeMillis());
                int i12 = iA2 - iA == 1 ? i11 + 1 : 1;
                bVar.b().putInt("k_open_day_count", i12);
                lg.a.C0828a.f(lg.a.f68839a, "ReportLaunchManager", "openDayCount:" + i12 + ", lastDay:" + iA + ", curDay:" + iA2, false, 4, null);
                hj.i.f64505a.s("app_fg_alive", "app_perf", MapsKt.j(TuplesKt.a(EventConstants.KEY_SOURCE, f43351d), TuplesKt.a(ChannelReader.CHANNEL_KEY, str)));
            }
            bVar.b().putString("k_last_open_time", String.valueOf(System.currentTimeMillis()));
            bVar.b().putString("k_last_open_version", com.transsion.core.utils.a.c());
        } catch (Exception unused) {
        }
    }

    public final String b() {
        return f43352e;
    }

    public final Uri c() {
        return f43353f;
    }

    public final String e() {
        return TextUtils.isEmpty(f43351d) ? "launch" : f43351d;
    }

    public final void f(boolean z10) {
        if (z10) {
            f43349b = "warm";
            g(SystemClock.elapsedRealtime() - f43350c);
        } else {
            f43350c = SystemClock.elapsedRealtime();
            h(f43349b);
        }
    }

    public final void i(String shortUrl, String wholeUrl) {
        String queryParameter;
        String queryParameter2;
        Intrinsics.h(shortUrl, "shortUrl");
        Intrinsics.h(wholeUrl, "wholeUrl");
        String str = "";
        Uri uri = !Intrinsics.c(wholeUrl, "") ? Uri.parse(wholeUrl) : Uri.parse(shortUrl);
        f43351d = d(uri);
        String utmSource = com.transsion.baselib.helper.b.f43264a.c(uri).getUtmSource();
        if (utmSource == null) {
            utmSource = "";
        }
        f43352e = utmSource;
        HashMap map = new HashMap();
        map.put(EventConstants.KEY_SOURCE, f43351d);
        map.put(ChannelReader.CHANNEL_KEY, f43352e);
        if (uri == null || (queryParameter = uri.getQueryParameter("msgId")) == null) {
            queryParameter = "";
        }
        map.put("msgId", queryParameter);
        if (uri != null && (queryParameter2 = uri.getQueryParameter("msg_type")) != null) {
            str = queryParameter2;
        }
        map.put("msg_type", str);
        map.put("url", wholeUrl);
        map.put("surl", shortUrl);
        hj.i.f64505a.t("app_launch_channel", map);
        j(f43352e);
    }

    public final void k(Uri uri) {
        f43353f = uri;
    }
}
