package com.transsion.payment.lib.strategy;

import android.app.Application;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.b0;
import com.transsion.payment.lib.PaymentClientHelper;
import com.transsion.payment.lib.PaymentService;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.bean.CreateOrderRes;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class PaynicornStrategy implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b0 f47815a = new b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f47816b = LazyKt.b(new Function0() { // from class: com.transsion.payment.lib.strategy.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PaynicornStrategy.j();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private n0 f47817c = o0.a(y0.b());

    /* JADX INFO: Access modifiers changed from: private */
    public final PaymentService i() {
        return (PaymentService) this.f47816b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PaymentService j() {
        return new PaymentService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(AppCompatActivity appCompatActivity, CreateOrderRes createOrderRes, com.transsion.payment.lib.b bVar) {
        PaymentClientHelper.f47769a.d(appCompatActivity, createOrderRes, bVar, i());
    }

    @Override // com.transsion.payment.lib.strategy.g
    public void a(Boolean bool, com.transsion.payment.lib.b bVar, Function0 function0) {
        g();
    }

    @Override // com.transsion.payment.lib.strategy.g
    public void b(AppCompatActivity activity, CreateOrderReq orderRequest, boolean z10, com.transsion.payment.lib.b payCallback, Function1 function1) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(orderRequest, "orderRequest");
        Intrinsics.h(payCallback, "payCallback");
        com.transsion.payment.lib.d.f47779a.a(h() + " --> requestPay() --> 请求接口创建订单....");
        payCallback.b(true);
        k.d(this.f47817c, null, null, new PaynicornStrategy$requestPay$1(this, orderRequest, activity, payCallback, function1, null), 3, null);
    }

    public void g() {
        k.d(this.f47817c, null, null, new PaynicornStrategy$fetchSkuList$1(this, null), 3, null);
    }

    public String h() {
        return g.a.a(this);
    }

    @Override // com.transsion.payment.lib.strategy.g
    public void init(Application application) {
        Intrinsics.h(application, "application");
        PaymentClientHelper.f47769a.c();
    }
}
