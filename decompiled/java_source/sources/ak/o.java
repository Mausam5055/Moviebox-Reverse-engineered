package ak;

import com.tencent.mmkv.MMKV;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f647b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f646a = new o();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f648c = "All";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f649d = "UN_GRADE";

    private o() {
    }

    private final boolean h() {
        String value;
        Boolean boolM1;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_key_kid_mode_ad_switch", false);
        if (configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) {
            return false;
        }
        return boolM1.booleanValue();
    }

    private final void k(String str) {
        f647b = str == null ? "" : str;
        MMKV mmkvB = com.transsion.baselib.report.launch.b.f43370a.b();
        if (str == null) {
            str = "";
        }
        mmkvB.putString("k_kids_mode_current_kid_id", str);
        n();
    }

    public final void a(String kidId) {
        Intrinsics.h(kidId, "kidId");
        if (!i()) {
            com.transsion.baselib.report.launch.b.f43370a.b().putInt("k_kids_mode_ugc_snapshot", g.f639a.b() ? 1 : 0);
        }
        if (!h()) {
            hi.b.f64466a.d(true);
        }
        g.f639a.e(true);
        k(kidId);
        n nVar = new n(kidId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = n.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, nVar, 0L);
    }

    public final void b() {
        hi.b.f64466a.d(false);
        k(null);
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
        int i11 = bVar.b().getInt("k_kids_mode_ugc_snapshot", -1);
        if (i11 != -1) {
            g.f639a.e(i11 == 1);
            bVar.b().putInt("k_kids_mode_ugc_snapshot", -1);
        }
        n nVar = new n(null);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = n.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, nVar, 0L);
    }

    public final String c() {
        return String.valueOf(w.f655a.b());
    }

    public final String d() {
        if (f647b == null) {
            String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_kids_mode_current_kid_id", "");
            f647b = string != null ? string : "";
        }
        String str = f647b;
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    public final String e() {
        return f649d;
    }

    public final String f() {
        return f648c;
    }

    public final boolean g() {
        return !h() && i();
    }

    public final boolean i() {
        String strD = d();
        return !(strD == null || strD.length() == 0);
    }

    public final boolean j() {
        String value;
        Boolean boolM1;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_key_kid_mode_feature_enable", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) {
            return false;
        }
        return boolM1.booleanValue();
    }

    public final void l(String str) {
        Intrinsics.h(str, "<set-?>");
        f649d = str;
    }

    public final void m(String str) {
        Intrinsics.h(str, "<set-?>");
        f648c = str;
    }

    public final void n() {
        yg.b.a aVar = yg.b.f79009a;
        String strD = d();
        if (strD == null) {
            strD = "";
        }
        aVar.b("X-Child-UID", strD);
    }
}
