package com.transsion.usercenter.setting.labelsfeedback;

import com.google.gson.JsonObject;
import com.therouter.TheRouter;
import com.transsion.baselib.net.LaunchWithErrorHandlerKt;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class UploadInit {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f57419b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UploadInit f57418a = new UploadInit();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f57420c = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.labelsfeedback.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UploadInit.i();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f57421d = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.labelsfeedback.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UploadInit.h();
        }
    });

    private UploadInit() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ILoginApi e() {
        return (ILoginApi) f57421d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final yw.a f() {
        return (yw.a) f57420c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi h() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final yw.a i() {
        return (yw.a) zg.c.f79414e.a().h(yw.a.class);
    }

    public final void g() {
        if (f57419b) {
            return;
        }
        f57419b = true;
        cw.c.f60931a.e(new cw.b() { // from class: com.transsion.usercenter.setting.labelsfeedback.UploadInit$init$1
            @Override // cw.b
            public String a() {
                return yg.b.f79009a.c();
            }

            @Override // cw.b
            public String b() {
                return new ng.a().a(0, System.currentTimeMillis());
            }

            @Override // cw.b
            public List c() {
                return CollectionsKt.o("oneroom-db", "oneroom-subtitle-db", "mb-ad-plans-db");
            }

            @Override // cw.b
            public String d() {
                mg.c.a aVar = mg.c.f69560a;
                return aVar.c(aVar.b());
            }

            @Override // cw.b
            public void e(Function1 callback) {
                Intrinsics.h(callback, "callback");
                LaunchWithErrorHandlerKt.d(o0.a(y0.b()), new UploadInit$init$1$getLogsConfig$1(callback, null), null, 2, null);
            }

            @Override // cw.b
            public Object f(Function1 function1, Function1 function2, Continuation continuation) {
                LaunchWithErrorHandlerKt.c(o0.a(y0.b()), new UploadInit$init$1$getTstToken$2(function1, function2, null), new UploadInit$init$1$getTstToken$3(function2, null));
                return Unit.f67061a;
            }

            @Override // cw.b
            public String g() {
                UserInfo userInfoI;
                String userId;
                ILoginApi iLoginApiE = UploadInit.f57418a.e();
                return (iLoginApiE == null || (userInfoI = iLoginApiE.i()) == null || (userId = userInfoI.getUserId()) == null) ? "" : userId;
            }

            @Override // cw.b
            public void h(JsonObject json, Function1 callback) {
                Intrinsics.h(json, "json");
                Intrinsics.h(callback, "callback");
                LaunchWithErrorHandlerKt.c(o0.a(y0.b()), new UploadInit$init$1$reportUploadLogsResult$1(json, callback, null), new UploadInit$init$1$reportUploadLogsResult$2(callback, null));
            }
        });
    }
}
