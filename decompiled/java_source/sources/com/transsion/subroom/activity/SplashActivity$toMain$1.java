package com.transsion.subroom.activity;

import android.app.Application;
import android.net.Uri;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.therouter.TheRouter;
import com.transsion.baselib.helper.ReferrerBean;
import com.transsion.baselib.report.launch.RoomInstallReferrer;
import com.transsion.fissionapi.IFissionProvider;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subroom.activity.SplashActivity$toMain$1", f = "SplashActivity.kt", l = {300}, m = "invokeSuspend")
final class SplashActivity$toMain$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SplashActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SplashActivity$toMain$1(SplashActivity splashActivity, Continuation<? super SplashActivity$toMain$1> continuation) {
        super(2, continuation);
        this.this$0 = splashActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SplashActivity$toMain$1 splashActivity$toMain$1 = new SplashActivity$toMain$1(this.this$0, continuation);
        splashActivity$toMain$1.L$0 = obj;
        return splashActivity$toMain$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SplashActivity$toMain$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            RoomInstallReferrer roomInstallReferrer = RoomInstallReferrer.f43366a;
            this.label = 1;
            if (roomInstallReferrer.f(n0Var, this) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        yg.b.a aVar = yg.b.f79009a;
        Application application = this.this$0.getApplication();
        Intrinsics.g(application, "getApplication(...)");
        if (TextUtils.equals(aVar.e(application), "gp")) {
            RoomInstallReferrer roomInstallReferrer2 = RoomInstallReferrer.f43366a;
            Application application2 = this.this$0.getApplication();
            Intrinsics.g(application2, "getApplication(...)");
            roomInstallReferrer2.e(application2, new RoomInstallReferrer.a() { // from class: com.transsion.subroom.activity.SplashActivity$toMain$1.1
                @Override // com.transsion.baselib.report.launch.RoomInstallReferrer.a
                public void a(ReferrerBean referrer) {
                    String utmContent;
                    IFissionProvider iFissionProvider;
                    Intrinsics.h(referrer, "referrer");
                    if (TextUtils.isEmpty(referrer.getUtmContent())) {
                        return;
                    }
                    try {
                        if (Intrinsics.c(referrer.getUtmSource(), "fission-share") && (utmContent = referrer.getUtmContent()) != null && (iFissionProvider = (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0])) != null) {
                            iFissionProvider.a(utmContent);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    Uri uriG = com.transsion.baselib.helper.b.f43264a.g(Uri.parse(referrer.getUtmContent()));
                    if (uriG != null) {
                        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new SplashActivity$toMain$1$1$onResolved$2(uriG, null), 3, null);
                    }
                }
            });
        } else {
            RoomInstallReferrer roomInstallReferrer3 = RoomInstallReferrer.f43366a;
            Application application3 = this.this$0.getApplication();
            Intrinsics.g(application3, "getApplication(...)");
            roomInstallReferrer3.i(application3, TmcConstants.ROUTE_UNKNOWN, null);
        }
        return Unit.f67061a;
    }
}
