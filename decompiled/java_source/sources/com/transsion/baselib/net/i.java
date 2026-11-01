package com.transsion.baselib.net;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.blankj.utilcode.util.b0;
import com.therouter.TheRouter;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import java.io.IOException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
public final class i implements Interceptor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f43330b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f43331a = LazyKt.b(new Function0() { // from class: com.transsion.baselib.net.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return i.d();
        }
    });

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final String b() {
        String strValueOf = String.valueOf(System.currentTimeMillis());
        String strG = b0.g(strValueOf);
        lh.a.C0830a c0830a = lh.a.f68842a;
        Intrinsics.e(strG);
        return strValueOf + "," + c0830a.a(strG);
    }

    private final ILoginApi c() {
        return (ILoginApi) this.f43331a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi d() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Intrinsics.h(chain, "chain");
        Request request = chain.request();
        ILoginApi iLoginApiC = c();
        UserInfo userInfoI = iLoginApiC != null ? iLoginApiC.i() : null;
        if (userInfoI == null || TextUtils.isEmpty(userInfoI.getToken())) {
            request = request.newBuilder().header("X-Client-Token", b()).build();
        } else {
            String token = userInfoI.getToken();
            if (token != null) {
                request = request.newBuilder().header(HttpHeaders.AUTHORIZATION, tg.a.f76211a.a(token)).build();
            }
        }
        Response responseProceed = chain.proceed(request);
        ILoginApi iLoginApiC2 = c();
        if (iLoginApiC2 != null) {
            iLoginApiC2.h(responseProceed);
        }
        return responseProceed;
    }
}
