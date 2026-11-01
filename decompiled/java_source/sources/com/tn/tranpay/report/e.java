package com.tn.tranpay.report;

import android.app.Application;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tn.tranpay.TranPay;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.push.PushConstants;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f41680a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f41681b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f41682c = 3560;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static f f41683d;

    private e() {
    }

    private final void b(String str, String str2, Map map) {
        f fVar = f41683d;
        if (fVar != null) {
            fVar.b(str, str2, map);
        }
    }

    private final String d(Map map) {
        String string = new JSONObject(map).toString();
        Intrinsics.g(string, "JSONObject(map).toString()");
        return string;
    }

    private final void h(final String str, final String str2, final String str3, final Map map) {
        ThreadSingleExecutor.f41659b.a().b(new Runnable() { // from class: com.tn.tranpay.report.d
            @Override // java.lang.Runnable
            public final void run() {
                e.i(str, str3, str2, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(String category, String event, String pageName, Map map) {
        Intrinsics.h(category, "$category");
        Intrinsics.h(event, "$event");
        Intrinsics.h(pageName, "$pageName");
        Intrinsics.h(map, "$map");
        ai.a.f619a.b(category + " event=" + event + "  pageName=" + pageName + " map=" + map, "Report");
        Bundle bundle = new Bundle();
        bundle.putString("page_name", pageName);
        e eVar = f41680a;
        bundle.putString("ext", eVar.d(map));
        eVar.j(event, bundle);
        eVar.b(pageName, event, map);
    }

    private final void j(String str, Bundle bundle) {
        Bundle bundleA;
        try {
            bundle.putString(PushConstants.PROVIDER_VAID, AthenaAnalytics.G(TranPay.f41486a.d()));
            f fVar = f41683d;
            if (fVar != null && (bundleA = fVar.a(str, bundle)) != null) {
                bundle = bundleA;
            }
            new yi.a(str, f41682c).c(bundle, null).b();
        } catch (Exception e11) {
            ai.a.f619a.d("event " + str + " exception " + e11, "Report");
        }
    }

    public final void c(Application context, String channel, boolean z10, boolean z11, f fVar) {
        Intrinsics.h(context, "context");
        Intrinsics.h(channel, "channel");
        AthenaAnalytics.Q(context, channel, f41682c, true, z11);
        AthenaAnalytics.d0(z10);
        f41683d = fVar;
        ai.a.f619a.f("init athena debug " + z10, "Report");
    }

    public final void e(String pageName, String event, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        h("reportClick", pageName, event, map);
    }

    public final void f(c logConfig) {
        Intrinsics.h(logConfig, "logConfig");
        HashMap mapG = logConfig.g();
        String strA = logConfig.a();
        if (strA == null) {
            strA = f41681b;
        }
        mapG.put(WebConstants.PAGE_FROM, strA);
        logConfig.g().put("duration", String.valueOf(SystemClock.elapsedRealtime() - logConfig.h()));
        logConfig.g().put("is_load_success", String.valueOf(logConfig.i()));
        String strE = logConfig.e();
        if (strE != null) {
            logConfig.g().put("ops", strE);
        }
        h("reportPT", logConfig.f(), "pt", logConfig.g());
        if (TextUtils.equals(f41681b, logConfig.f()) || !logConfig.b()) {
            return;
        }
        f41681b = logConfig.f();
    }

    public final void g(c logConfig) {
        Intrinsics.h(logConfig, "logConfig");
        HashMap mapG = logConfig.g();
        String strA = logConfig.a();
        if (strA == null) {
            strA = f41681b;
        }
        mapG.put(WebConstants.PAGE_FROM, strA);
        String strE = logConfig.e();
        if (strE != null) {
            logConfig.g().put("ops", strE);
        }
        h("reportPV", logConfig.f(), "pv", logConfig.g());
    }
}
