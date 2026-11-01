package rm;

import android.os.Build;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.gson.JsonArray;
import com.transsion.mb.config.download.AppStartConfig;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.m;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.ServiceLoader;
import java.util.concurrent.Callable;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import lz.h;
import sm.f;
import sm.g;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f74567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static rm.b f74568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f74569d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Boolean f74573h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f74566a = new e();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f74570e = LazyKt.b(new Function0() { // from class: rm.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return e.i();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f74571f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f74572g = "wefeed-mobile-bff";

    /* JADX INFO: loaded from: classes6.dex */
    static final class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f74574a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f74575b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f74576c;

        a(String str, String str2, String str3) {
            this.f74574a = str;
            this.f74575b = str2;
            this.f74576c = str3;
        }

        @Override // lz.h
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final m apply(String str) {
            rm.a aVarK = e.f74566a.k();
            String str2 = this.f74574a;
            String str3 = this.f74575b;
            Intrinsics.e(str);
            return aVarK.a(str2, str3, str, this.f74576c);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    static final class b implements lz.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f74577a = new b();

        b() {
        }

        @Override // lz.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final boolean a(Integer t11, Throwable th2) {
            Intrinsics.h(t11, "t1");
            Intrinsics.h(th2, "<unused var>");
            lg.a.C0828a.f(lg.a.f68839a, "RequestConfig", "retry ing.. t1:" + t11.intValue(), false, 4, null);
            return Intrinsics.c(e.f74566a.l(), Boolean.TRUE) && t11.intValue() <= 1;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static final class c extends sg.a {
        c() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.C0828a.f(lg.a.f68839a, "RequestConfig", "onFailure code: " + str + "  message: " + str2, false, 4, null);
            e.f74569d = false;
            rm.b bVar = e.f74568c;
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(AppStartConfig appStartConfig) {
            Object objM454constructorimpl;
            Unit unit;
            super.c(appStartConfig);
            e.f74567b = true;
            e.f74569d = false;
            if (appStartConfig == null) {
                return;
            }
            lg.a.C0828a.f(lg.a.f68839a, "RequestConfig", "onSuccess:" + appStartConfig, false, 4, null);
            try {
                Result.Companion companion = Result.INSTANCE;
                JsonArray items = appStartConfig.getItems();
                if (items != null) {
                    f.f75407c.a().j(items);
                }
                String version = appStartConfig.getVersion();
                if (version != null) {
                    sm.d.f75403a.g().putString("configVersion", version);
                }
                rm.b bVar = e.f74568c;
                if (bVar != null) {
                    bVar.b();
                    unit = Unit.f67061a;
                } else {
                    unit = null;
                }
                objM454constructorimpl = Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            }
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl == null) {
                return;
            }
            lg.a.C0828a.f(lg.a.f68839a, "RequestConfig", "fail --> it = " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final rm.a i() {
        return (rm.a) zg.c.f79414e.a().h(rm.a.class);
    }

    private final String j() {
        if (f74571f.length() > 0) {
            return f74571f;
        }
        if (Build.VERSION.SDK_INT <= 23) {
            f74571f = IntegrationConstants.NAVIGATION_BAR_ALL_ACTION;
            return IntegrationConstants.NAVIGATION_BAR_ALL_ACTION;
        }
        try {
            ServiceLoader serviceLoaderLoad = ServiceLoader.load(g.class);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it = serviceLoaderLoad.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                linkedHashSet.addAll(((g) it.next()).a());
            }
            f74571f = CollectionsKt.s0(linkedHashSet, ",", null, null, 0, null, null, 62, null);
        } catch (Exception e11) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String message = e11.getMessage();
            if (message == null) {
                message = "";
            }
            lg.a.C0828a.l(c0828a, "CombinedRequestParam", message, false, 4, null);
            e11.printStackTrace();
            f74571f = IntegrationConstants.NAVIGATION_BAR_ALL_ACTION;
        }
        return f74571f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final rm.a k() {
        return (rm.a) f74570e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Boolean l() {
        if (f74573h == null) {
            f74573h = Boolean.valueOf(nh.m.f70474a.e());
        }
        return f74573h;
    }

    public static /* synthetic */ void p(e eVar, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = vg.a.f77324a.a();
        }
        if ((i11 & 2) != 0) {
            str2 = "wefeed-mobile-bff";
        }
        eVar.o(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String q() {
        return f74566a.j();
    }

    public final void h() {
        if (f74567b) {
            return;
        }
        p(this, null, f74572g, 1, null);
    }

    public final void m() {
        f74573h = Boolean.TRUE;
        h();
    }

    public final void n() {
        f74573h = Boolean.FALSE;
    }

    public final void o(String host, String path) {
        Intrinsics.h(host, "host");
        Intrinsics.h(path, "path");
        f74572g = path;
        if (f74569d) {
            lg.a.C0828a.f(lg.a.f68839a, "RequestConfig", "requestConfig ing...", false, 4, null);
            return;
        }
        f74569d = true;
        f74567b = false;
        String string = sm.d.f75403a.g().getString("configVersion", "");
        j.r(new Callable() { // from class: rm.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return e.q();
            }
        }).E(qz.a.c()).n(new a(path, host, string != null ? string : "")).f(sg.d.f75349a.e()).y(b.f74577a).subscribe(new c());
    }

    public final void r(rm.b configLoadListener) {
        Intrinsics.h(configLoadListener, "configLoadListener");
        f74568c = configLoadListener;
    }
}
