package com.transsion.baselib.report.launch;

import android.app.Application;
import android.content.pm.PackageInfo;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.transsion.athena.attribution.AttrConstant;
import com.transsion.athena.attribution.SpUtils;
import com.transsion.baselib.helper.ReferrerBean;
import com.transsion.ga.AthenaAnalytics;
import g5.d;
import hj.i;
import java.util.HashMap;
import java.util.UUID;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class RoomInstallReferrer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RoomInstallReferrer f43366a = new RoomInstallReferrer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g5.a f43367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f43368c;

    /* JADX INFO: loaded from: classes5.dex */
    public interface a {
        void a(ReferrerBean referrerBean);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b implements g5.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Application f43369a;

        b(Application application) {
            this.f43369a = application;
        }

        @Override // g5.c
        public void onInstallReferrerServiceDisconnected() {
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0038 A[PHI: r6
  0x0038: PHI (r6v4 g5.a) = (r6v3 g5.a), (r6v6 g5.a) binds: [B:19:0x004a, B:12:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // g5.c
        public void onInstallReferrerSetupFinished(int i11) {
            g5.a aVar;
            g5.a aVar2 = null;
            try {
                try {
                    try {
                        if (i11 == 0) {
                            RoomInstallReferrer roomInstallReferrer = RoomInstallReferrer.f43366a;
                            Application application = this.f43369a;
                            g5.a aVar3 = RoomInstallReferrer.f43367b;
                            if (aVar3 == null) {
                                Intrinsics.z("referrerClient");
                                aVar3 = null;
                            }
                            d dVarB = aVar3.b();
                            Intrinsics.g(dVarB, "getInstallReferrer(...)");
                            roomInstallReferrer.g(application, dVarB);
                        } else {
                            RoomInstallReferrer.f43366a.h(this.f43369a, String.valueOf(i11));
                        }
                        aVar = RoomInstallReferrer.f43367b;
                        if (aVar == null) {
                            Intrinsics.z("referrerClient");
                        } else {
                            aVar2 = aVar;
                        }
                    } catch (Exception unused) {
                        RoomInstallReferrer.f43366a.h(this.f43369a, "unknown err");
                        aVar = RoomInstallReferrer.f43367b;
                        if (aVar != null) {
                            aVar2 = aVar;
                        }
                    }
                    aVar2.a();
                } catch (Exception unused2) {
                }
            } catch (Throwable th2) {
                try {
                    g5.a aVar4 = RoomInstallReferrer.f43367b;
                    if (aVar4 == null) {
                        Intrinsics.z("referrerClient");
                    } else {
                        aVar2 = aVar4;
                    }
                    aVar2.a();
                } catch (Exception unused3) {
                }
                throw th2;
            }
        }
    }

    private RoomInstallReferrer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(Application application, d dVar) {
        String strD = dVar.d();
        lg.a.C0828a.f(lg.a.f68839a, "RoomInstallReferrer", "fetchInstallReferrer referrerUrl: " + strD, false, 4, null);
        k.d(o0.a(y0.b()), null, null, new RoomInstallReferrer$fetchInstallReferrer$1(application, strD, dVar, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(Application application, String str) {
        lg.a.C0828a.f(lg.a.f68839a, "RoomInstallReferrer", "fetchInstallReferrerErr msg: " + str, false, 4, null);
        k.d(o0.a(y0.b()), null, null, new RoomInstallReferrer$fetchInstallReferrerErr$1(application, null), 3, null);
    }

    private final void j(c cVar) {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object k(Continuation continuation) throws Throwable {
        RoomInstallReferrer$waitForPsReferrerResult$1 roomInstallReferrer$waitForPsReferrerResult$1;
        long jCurrentTimeMillis;
        if (continuation instanceof RoomInstallReferrer$waitForPsReferrerResult$1) {
            roomInstallReferrer$waitForPsReferrerResult$1 = (RoomInstallReferrer$waitForPsReferrerResult$1) continuation;
            int i11 = roomInstallReferrer$waitForPsReferrerResult$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                roomInstallReferrer$waitForPsReferrerResult$1.label = i11 - Integer.MIN_VALUE;
            } else {
                roomInstallReferrer$waitForPsReferrerResult$1 = new RoomInstallReferrer$waitForPsReferrerResult$1(this, continuation);
            }
        } else {
            roomInstallReferrer$waitForPsReferrerResult$1 = new RoomInstallReferrer$waitForPsReferrerResult$1(this, continuation);
        }
        Object obj = roomInstallReferrer$waitForPsReferrerResult$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = roomInstallReferrer$waitForPsReferrerResult$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            jCurrentTimeMillis = System.currentTimeMillis();
            String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_install_referrer", null);
            if (string != null && string.length() != 0) {
                return Unit.f67061a;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jCurrentTimeMillis = roomInstallReferrer$waitForPsReferrerResult$1.J$0;
            ResultKt.b(obj);
        }
        do {
            String string2 = SpUtils.getInstance(Utils.a()).getString(AttrConstant.KEY_PS_REF);
            if (string2 != null && string2.length() != 0) {
                lg.a.f68839a.c("SnowballReferrer", "get referrer: " + string2, true);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    android.support.v4.media.session.c.a(o.d(string2, c.class));
                    Intrinsics.e(null);
                    j(null);
                    Result.m454constructorimpl(Unit.f67061a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m454constructorimpl(ResultKt.a(th2));
                }
            } else if (System.currentTimeMillis() - jCurrentTimeMillis > 10000) {
                lg.a.f68839a.x("SnowballReferrer", "wait referrer timeout", true);
            } else {
                roomInstallReferrer$waitForPsReferrerResult$1.J$0 = jCurrentTimeMillis;
                roomInstallReferrer$waitForPsReferrerResult$1.label = 1;
            }
            return Unit.f67061a;
        } while (u0.a(500L, roomInstallReferrer$waitForPsReferrerResult$1) != objF);
        return objF;
    }

    public final void e(Application context, a lis) {
        Intrinsics.h(context, "context");
        Intrinsics.h(lis, "lis");
        g5.a aVar = null;
        String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("k_install_referrer", null);
        if (string != null && string.length() != 0) {
            lg.a.C0828a.f(lg.a.f68839a, "RoomInstallReferrer", "localReferrerUrl:" + string, false, 4, null);
            return;
        }
        f43368c = lis;
        try {
            g5.a aVarA = g5.a.c(context).a();
            f43367b = aVarA;
            if (aVarA == null) {
                Intrinsics.z("referrerClient");
            } else {
                aVar = aVarA;
            }
            aVar.d(new b(context));
        } catch (Exception unused) {
            h(context, "unknown err");
        }
    }

    public final Object f(n0 n0Var, Continuation continuation) {
        try {
            Result.Companion companion = Result.INSTANCE;
            AthenaAnalytics.Y(2570);
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        k.d(n0Var, null, null, new RoomInstallReferrer$checkSnowballInstallReferrer$3(null), 3, null);
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0046 A[Catch: Exception -> 0x0040, TryCatch #0 {Exception -> 0x0040, blocks: (B:3:0x000a, B:5:0x0033, B:7:0x0039, B:13:0x004c, B:14:0x0051, B:16:0x0057, B:17:0x005c, B:19:0x0092, B:20:0x00d3, B:22:0x00de, B:23:0x00e1, B:11:0x0046), top: B:27:0x000a }] */
    public final void i(Application context, String referrer, d dVar) {
        Intrinsics.h(context, "context");
        Intrinsics.h(referrer, "referrer");
        try {
            com.transsion.baselib.report.launch.b.f43370a.b().putString("k_install_referrer", referrer);
            HashMap map = new HashMap();
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            ReferrerBean referrerBeanD = com.transsion.baselib.helper.b.f43264a.d(referrer);
            String utmSource = referrerBeanD.getUtmSource();
            if (utmSource == null) {
                utmSource = referrerBeanD.getUtmSource();
            } else {
                if (utmSource.length() == 0) {
                    utmSource = yg.b.f79009a.e(context);
                }
                if (utmSource == null) {
                    utmSource = referrerBeanD.getUtmSource();
                }
            }
            if (utmSource != null) {
                bh.a.f16469a.e(utmSource);
            }
            String utmCampaign = referrerBeanD.getUtmCampaign();
            if (utmCampaign != null) {
                bh.a.f16469a.g(utmCampaign);
            }
            bh.a.C0148a c0148a = bh.a.f16469a;
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            c0148a.f(string);
            map.put("install_time", String.valueOf(packageInfo.lastUpdateTime));
            map.put("install_version", packageInfo.versionName);
            map.put("install_referrer", referrer);
            map.put("install_store", yg.b.f79009a.e(context));
            if (dVar != null) {
                map.put("referrer_click_timestamp_seconds", String.valueOf(dVar.f()));
                map.put("install_begin_timestamp_seconds", String.valueOf(dVar.b()));
                map.put("google_play_instant", String.valueOf(dVar.a()));
                map.put("referrer_click_timestamp_server_seconds", String.valueOf(dVar.g()));
                map.put("install_begin_timestamp_server_seconds", String.valueOf(dVar.g()));
            }
            i.f64505a.t("app_install", map);
            a aVar = f43368c;
            if (aVar != null) {
                aVar.a(referrerBeanD);
            }
            f43368c = null;
        } catch (Exception e11) {
            lg.a.C0828a.e(lg.a.f68839a, "RoomInstallReferrer", "", e11, false, 8, null);
        }
    }
}
