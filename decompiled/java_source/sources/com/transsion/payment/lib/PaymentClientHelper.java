package com.transsion.payment.lib;

import android.app.Application;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.blankj.utilcode.util.Utils;
import com.tencent.mmkv.MMKV;
import com.tn.tranpay.BillingParams;
import com.tn.tranpay.TranPay;
import com.tn.tranpay.TranPayClient;
import com.tn.tranpay.logger.LogLevel;
import com.transsion.payment.lib.bean.CreateOrderRes;
import com.transsion.payment.lib.bean.PrePayInfo;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Locale;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class PaymentClientHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PaymentClientHelper f47769a = new PaymentClientHelper();

    public static final class a implements com.tn.tranpay.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Function2 f47770a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function0 f47771b;

        a(Function2 function2, Function0 function0) {
            this.f47770a = function2;
            this.f47771b = function0;
        }

        @Override // com.tn.tranpay.d
        public void a(com.tn.tranpay.b result, com.tn.tranpay.c cVar) {
            Intrinsics.h(result, "result");
            d dVar = d.f47779a;
            dVar.a("onPurchasesUpdated " + result + ", " + cVar);
            if (com.tn.tranpay.a.f41505a.a(result.b()) && cVar != null) {
                dVar.a(PaymentClientHelper.f47769a.b() + " --> observe() --> paynicorn result --> 轮询Paynicorn支付结果 ....");
                this.f47771b.invoke();
                return;
            }
            PaymentClientHelper paymentClientHelper = PaymentClientHelper.f47769a;
            dVar.b(paymentClientHelper.b() + " --> realPay() --> paynicorn result is cancel");
            int iB = result.b();
            if (iB == 1) {
                this.f47770a.invoke(1002, "observe() --> 取消支付");
                return;
            }
            if (iB != 4) {
                this.f47770a.invoke(1004, "observe() --> 支付失败");
                return;
            }
            dVar.a(paymentClientHelper.b() + " --> processing--> paynicorn result --> 轮询Paynicorn支付结果 ....");
            this.f47770a.invoke(1003, "observe() --> 支付进行中");
        }
    }

    private PaymentClientHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String b() {
        String simpleName = PaymentClientHelper.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void c() {
        String upperCase;
        String str;
        String string;
        MMKV mmkvC = bh.a.f16469a.c();
        String upperCase2 = null;
        if (mmkvC == null || (string = mmkvC.getString("custom_local_iso", "")) == null) {
            upperCase = null;
        } else {
            upperCase = string.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
        }
        if (TextUtils.isEmpty(upperCase)) {
            String strG = ih.b.f65241a.g();
            if (strG != null) {
                upperCase2 = strG.toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase2, "toUpperCase(...)");
            }
            str = upperCase2;
        } else {
            str = upperCase;
        }
        yg.b.a aVar = yg.b.f79009a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        String strE = aVar.e(applicationA);
        if (strE == null) {
            strE = "gp";
        }
        String str2 = strE;
        TranPay tranPay = TranPay.f41486a;
        Application applicationA2 = Utils.a();
        Intrinsics.g(applicationA2, "getApp(...)");
        tranPay.b(applicationA2, "3100484", c.f47776a.b(), str2, (Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE & 16) != 0 ? LogLevel.INFO : LogLevel.DEBUG, (Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE & 32) != 0 ? false : false, (Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE & 64) != 0, (Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE & 128) != 0 ? null : str, (Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE & 256) != 0 ? com.tn.tranpay.e.f41537c.b() : null);
        tranPay.a(new PayLoggerPlugin());
    }

    public final void d(AppCompatActivity activity, final CreateOrderRes orderRequest, final b payCallback, final PaymentService paymentService) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(orderRequest, "orderRequest");
        Intrinsics.h(payCallback, "payCallback");
        Intrinsics.h(paymentService, "paymentService");
        d.f47779a.a(b() + " --> requestPay() --> 请求到数据 --> realPay() --> 打开端内WebView --> 展示收银台");
        PrePayInfo prePayInfo = orderRequest.getPrePayInfo();
        if ((prePayInfo != null ? prePayInfo.getOrderId() : null) == null || prePayInfo.getDescription() == null) {
            b.a.a(payCallback, 1001, "订单信息异常", false, null, 8, null);
            return;
        }
        payCallback.b(false);
        String price = prePayInfo.getPrice();
        if (price == null) {
            price = "0";
        }
        String str = price;
        String orderId = prePayInfo.getOrderId();
        String str2 = orderId == null ? "" : orderId;
        String description = prePayInfo.getDescription();
        String str3 = description == null ? "" : description;
        String txnId = orderRequest.getTxnId();
        String currency = prePayInfo.getCurrency();
        String referenceNo = prePayInfo.getReferenceNo();
        String str4 = referenceNo == null ? "" : referenceNo;
        String memo = prePayInfo.getMemo();
        Boolean payByLocalCurrency = prePayInfo.getPayByLocalCurrency();
        TranPayClient.f41488a.c(activity, new BillingParams(txnId, str, str2, str3, currency, str4, memo, null, null, false, payByLocalCurrency != null ? payByLocalCurrency.booleanValue() : false, 384, null), new com.tn.tranpay.d() { // from class: com.transsion.payment.lib.PaymentClientHelper$realPay$1
            @Override // com.tn.tranpay.d
            public void a(com.tn.tranpay.b result, com.tn.tranpay.c cVar) {
                Intrinsics.h(result, "result");
                d dVar = d.f47779a;
                dVar.a("onPurchasesUpdated " + result + ", " + cVar);
                if (com.tn.tranpay.a.f41505a.a(result.b()) && cVar != null) {
                    dVar.a(PaymentClientHelper.f47769a.b() + " --> realPay() --> paynicorn result --> 轮询Paynicorn支付结果 ....");
                    payCallback.b(true);
                    k.d(o0.a(y0.b()), null, null, new PaymentClientHelper$realPay$1$onPurchasesUpdated$1(payCallback, orderRequest, paymentService, null), 3, null);
                    return;
                }
                PaymentClientHelper paymentClientHelper = PaymentClientHelper.f47769a;
                dVar.b(paymentClientHelper.b() + " --> realPay() --> paynicorn result is cancel");
                payCallback.b(false);
                int iB = result.b();
                if (iB == 1) {
                    payCallback.a(1002, result.a(), false, orderRequest.getTradingOrderId());
                    return;
                }
                if (iB != 4) {
                    payCallback.a(1004, "observe() --> 支付失败", false, orderRequest.getTradingOrderId());
                    return;
                }
                dVar.a(paymentClientHelper.b() + " --> processing--> paynicorn result --> 轮询Paynicorn支付结果 ....");
                payCallback.a(1003, "orderCheck4Paynicorn() --> code = 400 -- 支付未完成", false, orderRequest.getTradingOrderId());
            }
        });
    }

    public final void e(AppCompatActivity appCompatActivity, CreateOrderRes createOrderRes, Function2 payFail, Function0 orderCheck4Paynicorn) {
        Intrinsics.h(payFail, "payFail");
        Intrinsics.h(orderCheck4Paynicorn, "orderCheck4Paynicorn");
        d.f47779a.a(b() + " --> requestPay() --> 请求到数据 --> realPay() --> 打开端内WebView --> 展示收银台");
        PrePayInfo prePayInfo = createOrderRes != null ? createOrderRes.getPrePayInfo() : null;
        if ((prePayInfo != null ? prePayInfo.getOrderId() : null) == null || prePayInfo.getDescription() == null) {
            payFail.invoke(1001, "realPay() --> 打开端内WebView --> 展示收银台 -- > activity == null");
            return;
        }
        String price = prePayInfo.getPrice();
        if (price == null) {
            price = "0";
        }
        String str = price;
        String orderId = prePayInfo.getOrderId();
        String str2 = orderId == null ? "" : orderId;
        String description = prePayInfo.getDescription();
        String str3 = description == null ? "" : description;
        String txnId = createOrderRes.getTxnId();
        String currency = prePayInfo.getCurrency();
        String referenceNo = prePayInfo.getReferenceNo();
        String memo = prePayInfo.getMemo();
        Boolean payByLocalCurrency = prePayInfo.getPayByLocalCurrency();
        BillingParams billingParams = new BillingParams(txnId, str, str2, str3, currency, referenceNo, memo, null, null, false, payByLocalCurrency != null ? payByLocalCurrency.booleanValue() : false, 384, null);
        if (appCompatActivity != null) {
            TranPayClient.f41488a.c(appCompatActivity, billingParams, new a(payFail, orderCheck4Paynicorn));
        }
    }
}
