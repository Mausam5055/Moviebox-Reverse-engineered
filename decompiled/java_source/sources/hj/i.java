package hj;

import android.app.Application;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.transsion.base.report.athena.BrowseType;
import com.transsion.base.report.athena.ClickType;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.gslb.GslbSdk;
import com.transsion.push.PushConstants;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static j f64507c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f64505a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f64506b = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ExecutorService f64508d = Executors.newSingleThreadExecutor();

    public static final class a implements GslbSdk.InitListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f64509a;

        a(String str) {
            this.f64509a = str;
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitFail() {
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitSuccess(Map map) {
            Intrinsics.h(map, "map");
            lg.a.C0828a.f(lg.a.f68839a, "Report", "gslbSdk success did 11 " + this.f64509a + " map " + map, false, 4, null);
        }
    }

    public static final class b implements GslbSdk.InitListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f64510a;

        b(String str) {
            this.f64510a = str;
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitFail() {
        }

        @Override // com.transsion.gslb.GslbSdk.InitListener
        public void onInitSuccess(Map map) {
            Intrinsics.h(map, "map");
            lg.a.C0828a.f(lg.a.f68839a, "Report", "gslbSdk success did 22 " + this.f64510a + " map " + map, false, 4, null);
        }
    }

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A(Map map, String str, String str2) {
        Bundle bundle = new Bundle();
        i iVar = f64505a;
        bundle.putString("ext", iVar.o(map));
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("page_name", str);
        }
        if (J(iVar, str2, bundle, null, null, 12, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                lg.a.C0828a.f(lg.a.f68839a, "Report_ad", "reportEventV2() --> event = " + str2 + " --> bundle = " + bundle, false, 4, null);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(String str, Map map, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("page_name", str);
        i iVar = f64505a;
        bundle.putString("ext", iVar.o(map));
        if (J(iVar, str2, bundle, null, null, 12, null)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                lg.a.C0828a.f(lg.a.f68839a, "Report", "reportUIEvent() --> event=" + str2 + "  pageName=" + str + " map=" + map, false, 4, null);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        f64505a.g(str, str2, map);
    }

    private final boolean I(String str, Bundle bundle, Integer num, String str2) {
        Pair account;
        com.transsion.base.report.athena.sampler.c cVar = com.transsion.base.report.athena.sampler.c.f43010a;
        String strG = AthenaAnalytics.G(Utils.a());
        Intrinsics.g(strG, "getAppVAID(...)");
        if (cVar.b(str, bundle, strG)) {
            return false;
        }
        try {
            bundle.putString(PushConstants.PROVIDER_VAID, AthenaAnalytics.G(Utils.a()));
            j jVar = f64507c;
            Bundle bundleA = jVar != null ? jVar.a(str, bundle) : null;
            j jVar2 = f64507c;
            if (jVar2 != null && (account = jVar2.getAccount()) != null) {
                AthenaAnalytics.Z(((Number) account.getFirst()).shortValue(), (String) account.getSecond());
            }
            if (num != null) {
                if (!TextUtils.isEmpty(str2)) {
                    if (bundleA == null) {
                        bundleA = new Bundle();
                    }
                    bundleA.putString("biz_line", str2);
                }
                new yi.a(str, num.intValue()).c(bundleA, null).b();
            } else {
                new yi.a(str).c(bundleA, null).b();
            }
            return true;
        } catch (Exception e11) {
            lg.a.f68839a.i("report", "event " + str + " exception " + e11, true);
            return false;
        }
    }

    static /* synthetic */ boolean J(i iVar, String str, Bundle bundle, Integer num, String str2, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            num = null;
        }
        if ((i11 & 8) != 0) {
            str2 = null;
        }
        return iVar.I(str, bundle, num, str2);
    }

    private final void g(String str, String str2, Map map) {
        j jVar = f64507c;
        if (jVar != null) {
            jVar.b(str, str2, map);
        }
    }

    private final String[] j() {
        return new String[]{"dsu-a.shalltry.com"};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(int i11, String str) {
        lg.a.C0828a.f(lg.a.f68839a, "Report", "loginActive:userType" + i11 + ",userid:" + str, false, 4, null);
        HashMap map = new HashMap();
        map.put("userType", String.valueOf(i11));
        if (str == null) {
            str = "0";
        }
        map.put("userId", str);
        i iVar = f64505a;
        String strO = iVar.o(map);
        Bundle bundle = new Bundle();
        bundle.putString(NotificationCompat.CATEGORY_EVENT, "login_active");
        bundle.putString("ext", strO);
        J(iVar, "login_active", bundle, null, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(Map map, String str) {
        try {
            Result.Companion companion = Result.INSTANCE;
            lg.a.C0828a.f(lg.a.f68839a, "Report", "reportEvent event=" + str + " map=" + map + ' ', false, 4, null);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        Bundle bundle = new Bundle();
        i iVar = f64505a;
        bundle.putString("ext", iVar.o(map));
        J(iVar, str, bundle, null, null, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(Map map, String str, String str2, int i11, String str3) {
        Bundle bundle = new Bundle();
        String string = new JSONObject(map).toString();
        Intrinsics.g(string, "toString(...)");
        bundle.putString("ext", string);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("page_name", str);
        }
        if (f64505a.I(str2, bundle, Integer.valueOf(i11), str3)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                lg.a.C0828a.f(lg.a.f68839a, "Report_ad", "reportEventAd() --> appId = " + i11 + " -- bizLine = " + str3 + " -- event = " + str2 + " -- pageName = " + str + " -- bundle = " + bundle, false, 4, null);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(String str, Map map, int i11) {
        lg.a.C0828a.f(lg.a.f68839a, "Report", "reportEventByAppId event=" + str + " map=" + map + ' ', false, 4, null);
        Bundle bundle = new Bundle();
        i iVar = f64505a;
        bundle.putString("ext", iVar.o(map));
        iVar.h(str, bundle, i11);
    }

    public final void B(hj.b logConfig) {
        Intrinsics.h(logConfig, "logConfig");
        HashMap mapG = logConfig.g();
        String strA = logConfig.a();
        if (strA == null) {
            strA = f64506b;
        }
        mapG.put(WebConstants.PAGE_FROM, strA);
        logConfig.g().put("duration", String.valueOf(SystemClock.elapsedRealtime() - logConfig.h()));
        logConfig.g().put("is_load_success", String.valueOf(logConfig.i()));
        String strE = logConfig.e();
        if (strE != null) {
            logConfig.g().put("ops", strE);
        }
        F(logConfig.f(), "pt", logConfig.g());
        if (TextUtils.equals(f64506b, logConfig.f()) || !logConfig.b()) {
            return;
        }
        f64506b = logConfig.f();
    }

    public final void C(hj.b logConfig) {
        Intrinsics.h(logConfig, "logConfig");
        HashMap mapG = logConfig.g();
        String strA = logConfig.a();
        if (strA == null) {
            strA = f64506b;
        }
        mapG.put(WebConstants.PAGE_FROM, strA);
        String strE = logConfig.e();
        if (strE != null) {
            logConfig.g().put("ops", strE);
        }
        F(logConfig.f(), "pv", logConfig.g());
    }

    public final void D(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        F(pageName, BrowseType.DEFAULT.getType(), map);
    }

    public final void E(String pageName, Map map, BrowseType browseType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        Intrinsics.h(browseType, "browseType");
        F(pageName, browseType.getType(), map);
    }

    public final void F(final String pageName, final String event, final Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        try {
            map = MapsKt.u(map);
        } catch (Exception unused) {
        }
        f64508d.execute(new Runnable() { // from class: hj.f
            @Override // java.lang.Runnable
            public final void run() {
                i.G(pageName, map, event);
            }
        });
    }

    public final void H(String pageName, String event, long j11, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        map.put("duration", String.valueOf(j11));
        F(pageName, event, map);
    }

    public final boolean h(String event, Bundle bundle, int i11) {
        Intrinsics.h(event, "event");
        Intrinsics.h(bundle, "bundle");
        return J(this, event, bundle, Integer.valueOf(i11), null, 8, null);
    }

    public final String i() {
        return f64506b;
    }

    public final void k(Application context, boolean z10, j api, String channelId, int i11, boolean z11, String str, boolean z12) {
        String strValueOf;
        String strSubstring;
        Intrinsics.h(context, "context");
        Intrinsics.h(api, "api");
        Intrinsics.h(channelId, "channelId");
        String strH = ih.b.f65241a.h();
        if ((str != null ? str.length() : 0) >= 3) {
            if (str != null) {
                strSubstring = str.substring(0, 3);
                Intrinsics.g(strSubstring, "substring(...)");
            } else {
                strSubstring = null;
            }
            strValueOf = String.valueOf(strSubstring);
        } else {
            strValueOf = "";
        }
        if (z12) {
            GslbSdk.init(context, "404", strH, j(), new a(strH));
        } else if (TextUtils.equals("250", strValueOf)) {
            GslbSdk.init(context, "621", strH, j(), new b(strH));
        }
        AthenaAnalytics.e0(1);
        AthenaAnalytics.Q(context, channelId, i11, true, z11);
        AthenaAnalytics.d0(z10);
        AthenaAnalytics.D(true);
        AthenaAnalytics.c0(2000);
        AthenaAnalytics.f0();
        f64507c = api;
        lg.a.C0828a.f(lg.a.f68839a, "Report", "initSDK debug " + z10, false, 4, null);
    }

    public final void m(final int i11, final String str) {
        f64508d.execute(new Runnable() { // from class: hj.h
            @Override // java.lang.Runnable
            public final void run() {
                i.n(i11, str);
            }
        });
    }

    public final String o(Map map) {
        Intrinsics.h(map, "map");
        String string = new JSONObject(map).toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public final void p(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        F(pageName, ClickType.DEFAULT.getType(), map);
    }

    public final void q(String pageName, Map map, ClickType clickType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        Intrinsics.h(clickType, "clickType");
        F(pageName, clickType.getType(), map);
    }

    public final void r(String pageName, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(map, "map");
        F(pageName, "dialog_show", map);
    }

    public final void s(String pageName, String event, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        F(pageName, event, map);
    }

    public final void t(final String event, final Map map) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        try {
            map = MapsKt.u(map);
        } catch (Exception unused) {
        }
        f64508d.execute(new Runnable() { // from class: hj.e
            @Override // java.lang.Runnable
            public final void run() {
                i.u(map, event);
            }
        });
    }

    public final void v(final String event, Map map, final String pageName, final int i11, final String bizLine) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(bizLine, "bizLine");
        try {
            map = MapsKt.u(map);
        } catch (Exception unused) {
        }
        final Map map2 = map;
        f64508d.execute(new Runnable() { // from class: hj.d
            @Override // java.lang.Runnable
            public final void run() {
                i.w(map2, pageName, event, i11, bizLine);
            }
        });
    }

    public final void x(final String event, final Map map, final int i11) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        f64508d.execute(new Runnable() { // from class: hj.c
            @Override // java.lang.Runnable
            public final void run() {
                i.y(event, map, i11);
            }
        });
    }

    public final void z(final String event, final Map map, final String pageName) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        Intrinsics.h(pageName, "pageName");
        try {
            map = MapsKt.u(map);
        } catch (Exception unused) {
        }
        f64508d.execute(new Runnable() { // from class: hj.g
            @Override // java.lang.Runnable
            public final void run() {
                i.A(map, pageName, event);
            }
        });
    }
}
