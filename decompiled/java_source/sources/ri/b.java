package ri;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.MBAd;
import com.transsion.ad.strategy.AppManager;
import com.transsion.ga.AthenaAnalytics;
import hj.i;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f74533a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicBoolean f74534b = new AtomicBoolean(false);

    private b() {
    }

    public final void a(String event, Map map, String str) {
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        if (!a.f74531a.a()) {
            oi.a.g(oi.a.f71022a, "Report_ad", "AdReportManager --> onReport() --> 业务线关闭埋点上报，不上报", 0, false, 4, null);
            return;
        }
        if (com.transsion.ad.scene.b.f42202a.i()) {
            oi.a.g(oi.a.f71022a, "Report_ad", "AdReportManager --> onReport() --> 广告数据上报链路已关闭，不上报", 0, false, 4, null);
            return;
        }
        AtomicBoolean atomicBoolean = f74534b;
        if (!atomicBoolean.get()) {
            Application applicationA = Utils.a();
            MBAd.a aVarC = MBAd.f41751a.c();
            AthenaAnalytics.Q(applicationA, "mb_ad", 6525, aVarC != null ? aVarC.l() : false, false);
            atomicBoolean.set(true);
            oi.a.c(oi.a.f71022a, "AdReportManager --> onReport() --> 广告埋点Athena初始化完成", 0, false, 6, null);
        }
        map.put("ad_vn", "4.3.3_2");
        map.put("biz_pkg", com.blankj.utilcode.util.c.e());
        map.put("biz_vc", Integer.valueOf(com.blankj.utilcode.util.c.f()));
        map.put("biz_vn", com.blankj.utilcode.util.c.h());
        i iVar = i.f64505a;
        if (str == null) {
            str = "";
        }
        iVar.v(event, map, str, 6525, AppManager.f42217a.a());
    }
}
