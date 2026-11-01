package com.transsion.push.utils;

import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import com.blankj.utilcode.util.Utils;
import com.meituan.android.walle.ChannelReader;
import com.therouter.TheRouter;
import com.transsion.lib.push.R$mipmap;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.push.api.IPushProvider;
import com.transsion.sunflower.FSNConfig;
import com.transsion.sunflower.FSNManager;
import java.lang.reflect.Type;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static FSNConfig f50936b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f50935a = new k();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f50937c = LazyKt.b(new Function0() { // from class: com.transsion.push.utils.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return k.k();
        }
    });

    private k() {
    }

    private final Intent f(String str) {
        Object objM454constructorimpl;
        if (str == null) {
            return null;
        }
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        if (iPushProvider != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            Intent intentA = iPushProvider.a(applicationA);
            intentA.addFlags(603979776);
            intentA.setAction("android.intent.action.VIEW");
            intentA.setData(Uri.parse(str).buildUpon().appendQueryParameter(ChannelReader.CHANNEL_KEY, "alive").build());
            return intentA;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Uri uri = Uri.parse(str);
            Intrinsics.g(uri, "parse(...)");
            objM454constructorimpl = Result.m454constructorimpl(ak.k.m(uri).n());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (Intent) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
    }

    private final void g() {
        if (f50936b == null) {
            j().t(h());
        }
    }

    private final FSNConfig h() {
        String value;
        Object objM454constructorimpl;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_dauupupup_config", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null) {
            value = "";
        }
        lg.a.C0828a.f(lg.a.f68839a, "qqqq", "getAppConfig: json:" + value, false, 4, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl((FSNConfig) com.blankj.utilcode.util.o.e(value, com.blankj.utilcode.util.o.h(FSNConfig.class, new Type[0])));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        FSNConfig fSNConfig = null;
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        FSNConfig fSNConfig2 = (FSNConfig) objM454constructorimpl;
        FSNConfig fSNConfigI = i();
        if (fSNConfig2 != null && fSNConfigI != null) {
            fSNConfig2.setEnable(fSNConfigI.getEnable() && fSNConfig2.getEnable());
            fSNConfig = fSNConfig2;
        }
        f50936b = fSNConfig;
        return fSNConfig;
    }

    private final FSNConfig i() {
        String value;
        ConfigBean configBeanC = sm.f.f75407c.a().c("dauupupup_config", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null) {
            value = "";
        }
        lg.a.C0828a.f(lg.a.f68839a, "qqqq", "getAppConfigB: json:" + value, false, 4, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            return (FSNConfig) com.blankj.utilcode.util.o.e(value, com.blankj.utilcode.util.o.h(FSNConfig.class, new Type[0]));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Object objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
            if (Result.m460isFailureimpl(objM454constructorimpl)) {
                objM454constructorimpl = null;
            }
            return (FSNConfig) objM454constructorimpl;
        }
    }

    private final FSNManager j() {
        return (FSNManager) f50937c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FSNManager k() {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        com.transsion.sunflower.d dVar = new com.transsion.sunflower.d(applicationA);
        dVar.n(R$mipmap.ic_notification_logo);
        dVar.m(com.blankj.utilcode.util.c.j());
        dVar.k(new Function0() { // from class: com.transsion.push.utils.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(k.l());
            }
        });
        dVar.q(new Function0() { // from class: com.transsion.push.utils.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(k.m());
            }
        });
        k kVar = f50935a;
        dVar.l(kVar.h());
        FSNConfig fSNConfigB = dVar.b();
        dVar.r(kVar.f(fSNConfigB != null ? fSNConfigB.getDeepLink() : null));
        dVar.o(new Function1() { // from class: com.transsion.push.utils.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return k.n((String) obj);
            }
        });
        dVar.p(new Function1() { // from class: com.transsion.push.utils.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return k.o((String) obj);
            }
        });
        return dVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean l() {
        return com.transsion.baselib.report.l.f43359a.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m() {
        return com.transsion.baselib.report.l.f43359a.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(String msg) {
        Intrinsics.h(msg, "msg");
        lg.a.C0828a.f(lg.a.f68839a, "qqqq", "sendFSI failed- msg:" + msg, false, 4, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(String msg) {
        Intrinsics.h(msg, "msg");
        lg.a.C0828a.f(lg.a.f68839a, "qqqq", "sendFSI show- msg:" + msg, false, 4, null);
        com.transsion.push.helper.g.f50863a.a(msg);
        return Unit.f67061a;
    }

    public final void p(String str) {
        g();
        j().n(str);
    }

    public final void q() {
        g();
        j().o();
    }
}
