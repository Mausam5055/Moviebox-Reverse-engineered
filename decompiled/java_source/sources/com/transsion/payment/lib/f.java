package com.transsion.payment.lib;

import android.app.Application;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.blankj.utilcode.util.Utils;
import com.transsion.payment.lib.bean.CreateOrderReq;
import com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog;
import com.transsion.payment.lib.strategy.GoogleStrategy;
import com.transsion.payment.lib.strategy.PaynicornStrategy;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f47794b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f47795c = LazyKt.b(new Function0() { // from class: com.transsion.payment.lib.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.d();
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.transsion.payment.lib.strategy.g f47796a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final f a() {
            return (f) f.f47795c.getValue();
        }
    }

    public f() {
        yg.b.a aVar = yg.b.f79009a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        String strE = aVar.e(applicationA);
        com.transsion.payment.lib.strategy.g googleStrategy = TextUtils.equals(strE, "gp") ? new GoogleStrategy() : new PaynicornStrategy();
        this.f47796a = googleStrategy;
        d.f47779a.a("PaymentManager() --> init{} --> channel = " + strE + " -- payStrategy = " + googleStrategy.getClass().getSimpleName());
    }

    private final String c() {
        String simpleName = f.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final f d() {
        return new f();
    }

    public final void e(AppCompatActivity activity, String productId, Double d11, String str, boolean z10, Map map, b payCallback, Function1 function1) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(productId, "productId");
        Intrinsics.h(payCallback, "payCallback");
        CreateOrderReq createOrderReq = new CreateOrderReq(productId, str, z10, map, d11);
        yg.b.a aVar = yg.b.f79009a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        String strE = aVar.e(applicationA);
        d.f47779a.a(c() + " --> requestPay() --> channel = " + strE + " --> orderReq = " + createOrderReq);
        if (TextUtils.equals(strE, "gp")) {
            com.transsion.payment.lib.strategy.g gVar = this.f47796a;
            if (gVar != null) {
                gVar.b(activity, createOrderReq, z10, payCallback, function1);
                return;
            }
            return;
        }
        PaynicornDuringThePaymentDialog paynicornDuringThePaymentDialog = new PaynicornDuringThePaymentDialog();
        paynicornDuringThePaymentDialog.S0(payCallback);
        paynicornDuringThePaymentDialog.U0(createOrderReq);
        paynicornDuringThePaymentDialog.T0(function1);
        paynicornDuringThePaymentDialog.k0(activity, "PaynicornDuringThePaymentDialog");
    }

    public final void g() {
        Application applicationA = Utils.a();
        com.transsion.payment.lib.strategy.g gVar = this.f47796a;
        if (gVar != null) {
            Intrinsics.e(applicationA);
            gVar.init(applicationA);
        }
    }
}
