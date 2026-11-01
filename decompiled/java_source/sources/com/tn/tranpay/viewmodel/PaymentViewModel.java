package com.tn.tranpay.viewmodel;

import ai.a;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.tranpay.BillingParams;
import com.tn.tranpay.TranPay;
import com.tn.tranpay.TranPayConfiguration;
import com.tn.tranpay.bean.CreateOrderResultContent;
import com.tn.tranpay.bean.CurrencyInfoBean;
import com.tn.tranpay.bean.LoadConfigContent;
import com.tn.tranpay.bean.QueryOrderResultContent;
import com.tn.tranpay.d;
import com.tn.tranpay.device.TNDeviceHelper;
import com.tn.tranpay.helper.c;
import com.tn.tranpay.network.RetrofitClient;
import com.tn.tranpay.network.b;
import java.util.Locale;
import java.util.UUID;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class PaymentViewModel extends t0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private t1 f41687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f41688c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f41689d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f41690e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f41691f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f41692g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f41693h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f41694i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f41695j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private d f41696k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f41686a = LazyKt.b(new Function0<b>() { // from class: com.tn.tranpay.viewmodel.PaymentViewModel$iPaymentApi$2
        @Override // kotlin.jvm.functions.Function0
        public final b invoke() {
            return (b) RetrofitClient.f41655a.d().b(b.class);
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Gson f41697l = new Gson();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b0 f41698m = new b0();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final b0 f41699n = new b0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final b0 f41700o = new b0();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final b0 f41701p = new b0();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object B(String str, String str2, String str3, Continuation continuation) throws Throwable {
        PaymentViewModel$handleCancelPay$1 paymentViewModel$handleCancelPay$1;
        if (continuation instanceof PaymentViewModel$handleCancelPay$1) {
            paymentViewModel$handleCancelPay$1 = (PaymentViewModel$handleCancelPay$1) continuation;
            int i11 = paymentViewModel$handleCancelPay$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentViewModel$handleCancelPay$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentViewModel$handleCancelPay$1 = new PaymentViewModel$handleCancelPay$1(this, continuation);
            }
        } else {
            paymentViewModel$handleCancelPay$1 = new PaymentViewModel$handleCancelPay$1(this, continuation);
        }
        Object objD = paymentViewModel$handleCancelPay$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentViewModel$handleCancelPay$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objD);
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("txnId", str);
                jSONObject.put("bindToken", str3);
                jSONObject.put("reason", str2);
                c.a aVar = c.f41652a;
                String string = jSONObject.toString();
                Intrinsics.g(string, "json.toString()");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA == null) {
                    return null;
                }
                b bVarV = v();
                paymentViewModel$handleCancelPay$1.label = 1;
                objD = bVarV.d(requestBodyA, paymentViewModel$handleCancelPay$1);
                if (objD == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objD);
            }
            return (QueryOrderResultContent) objD;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            a.e(a.f619a, "CancelOrder error is " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x00bb A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:12:0x0029, B:45:0x0105, B:19:0x004e, B:28:0x0086, B:30:0x0092, B:36:0x00a2, B:39:0x00bb, B:40:0x00c0, B:42:0x00ee, B:33:0x009a, B:22:0x0055, B:24:0x006d), top: B:54:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00ee A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:12:0x0029, B:45:0x0105, B:19:0x004e, B:28:0x0086, B:30:0x0092, B:36:0x00a2, B:39:0x00bb, B:40:0x00c0, B:42:0x00ee, B:33:0x009a, B:22:0x0055, B:24:0x006d), top: B:54:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0104 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object C(String str, String str2, String str3, String str4, Continuation continuation) throws Throwable {
        PaymentViewModel$handleCashierPay$1 paymentViewModel$handleCashierPay$1;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        PaymentViewModel paymentViewModel;
        JSONObject jSONObject3;
        RequestBody requestBodyA;
        String mobileCode;
        if (continuation instanceof PaymentViewModel$handleCashierPay$1) {
            paymentViewModel$handleCashierPay$1 = (PaymentViewModel$handleCashierPay$1) continuation;
            int i11 = paymentViewModel$handleCashierPay$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentViewModel$handleCashierPay$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentViewModel$handleCashierPay$1 = new PaymentViewModel$handleCashierPay$1(this, continuation);
            }
        } else {
            paymentViewModel$handleCashierPay$1 = new PaymentViewModel$handleCashierPay$1(this, continuation);
        }
        Object objC = paymentViewModel$handleCashierPay$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentViewModel$handleCashierPay$1.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    jSONObject2 = (JSONObject) paymentViewModel$handleCashierPay$1.L$4;
                    jSONObject3 = (JSONObject) paymentViewModel$handleCashierPay$1.L$3;
                    str4 = (String) paymentViewModel$handleCashierPay$1.L$2;
                    str3 = (String) paymentViewModel$handleCashierPay$1.L$1;
                    paymentViewModel = (PaymentViewModel) paymentViewModel$handleCashierPay$1.L$0;
                    ResultKt.b(objC);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objC);
                }
                return (CreateOrderResultContent) objC;
            }
            ResultKt.b(objC);
            Result.Companion companion = Result.INSTANCE;
            jSONObject = new JSONObject();
            jSONObject.put("txnId", str);
            jSONObject.put("payMethod", str2);
            jSONObject2 = new JSONObject();
            if (str3 != null) {
                TranPayConfiguration tranPayConfiguration = TranPayConfiguration.f41490a;
                paymentViewModel$handleCashierPay$1.L$0 = this;
                paymentViewModel$handleCashierPay$1.L$1 = str3;
                paymentViewModel$handleCashierPay$1.L$2 = str4;
                paymentViewModel$handleCashierPay$1.L$3 = jSONObject;
                paymentViewModel$handleCashierPay$1.L$4 = jSONObject2;
                paymentViewModel$handleCashierPay$1.label = 1;
                Object objF2 = tranPayConfiguration.f(paymentViewModel$handleCashierPay$1);
                if (objF2 == objF) {
                    return objF;
                }
                paymentViewModel = this;
                objC = objF2;
                jSONObject3 = jSONObject;
            } else {
                paymentViewModel = this;
            }
            if (str4 != null) {
                jSONObject2.put("CNIC", str4);
            }
            jSONObject.put("payInput", jSONObject2);
            jSONObject.put("pfId", UUID.randomUUID().toString());
            jSONObject.put(UrlKt.KEY_MINI_GAID, TNDeviceHelper.f41530a.d());
            c.a aVar = c.f41652a;
            String string = jSONObject.toString();
            Intrinsics.g(string, "json.toString()");
            requestBodyA = aVar.a(string);
            if (requestBodyA != null) {
                return null;
            }
            b bVarV = paymentViewModel.v();
            paymentViewModel$handleCashierPay$1.L$0 = null;
            paymentViewModel$handleCashierPay$1.L$1 = null;
            paymentViewModel$handleCashierPay$1.L$2 = null;
            paymentViewModel$handleCashierPay$1.L$3 = null;
            paymentViewModel$handleCashierPay$1.L$4 = null;
            paymentViewModel$handleCashierPay$1.label = 2;
            objC = bVarV.c(requestBodyA, paymentViewModel$handleCashierPay$1);
            if (objC == objF) {
                return objF;
            }
            return (CreateOrderResultContent) objC;
            CurrencyInfoBean currencyInfoBean = (CurrencyInfoBean) objC;
            LoadConfigContent loadConfigContent = (LoadConfigContent) paymentViewModel.f41698m.f();
            if ((loadConfigContent == null || (mobileCode = loadConfigContent.getAreaCode()) == null) && (currencyInfoBean == null || (mobileCode = currencyInfoBean.getMobileCode()) == null)) {
                mobileCode = "";
            }
            jSONObject2.put("Phone", mobileCode + str3);
            jSONObject = jSONObject3;
            if (str4 != null) {
                jSONObject2.put("CNIC", str4);
            }
            jSONObject.put("payInput", jSONObject2);
            jSONObject.put("pfId", UUID.randomUUID().toString());
            jSONObject.put(UrlKt.KEY_MINI_GAID, TNDeviceHelper.f41530a.d());
            c.a aVar2 = c.f41652a;
            String string2 = jSONObject.toString();
            Intrinsics.g(string2, "json.toString()");
            requestBodyA = aVar2.a(string2);
            if (requestBodyA != null) {
                return null;
            }
            b bVarV2 = paymentViewModel.v();
            paymentViewModel$handleCashierPay$1.L$0 = null;
            paymentViewModel$handleCashierPay$1.L$1 = null;
            paymentViewModel$handleCashierPay$1.L$2 = null;
            paymentViewModel$handleCashierPay$1.L$3 = null;
            paymentViewModel$handleCashierPay$1.L$4 = null;
            paymentViewModel$handleCashierPay$1.label = 2;
            objC = bVarV2.c(requestBodyA, paymentViewModel$handleCashierPay$1);
            if (objC == objF) {
                return objF;
            }
            return (CreateOrderResultContent) objC;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            a.e(a.f619a, "CashierPay error is " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object D(String str, Continuation continuation) throws Throwable {
        PaymentViewModel$handleQuery$1 paymentViewModel$handleQuery$1;
        if (continuation instanceof PaymentViewModel$handleQuery$1) {
            paymentViewModel$handleQuery$1 = (PaymentViewModel$handleQuery$1) continuation;
            int i11 = paymentViewModel$handleQuery$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentViewModel$handleQuery$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentViewModel$handleQuery$1 = new PaymentViewModel$handleQuery$1(this, continuation);
            }
        } else {
            paymentViewModel$handleQuery$1 = new PaymentViewModel$handleQuery$1(this, continuation);
        }
        Object objA = paymentViewModel$handleQuery$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentViewModel$handleQuery$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objA);
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("txnId", str);
                c.a aVar = c.f41652a;
                String string = jSONObject.toString();
                Intrinsics.g(string, "json.toString()");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA == null) {
                    return null;
                }
                b bVarV = v();
                paymentViewModel$handleQuery$1.label = 1;
                objA = bVarV.a(requestBodyA, paymentViewModel$handleQuery$1);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            return (QueryOrderResultContent) objA;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            a.e(a.f619a, "Query error is " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
            return null;
        }
    }

    private final void E(BillingParams billingParams) {
        k.d(o0.a(y0.c()), null, null, new PaymentViewModel$loadConfig$1(this, billingParams, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object F(String str, String str2, Continuation continuation) throws Throwable {
        PaymentViewModel$loadConfigBean$1 paymentViewModel$loadConfigBean$1;
        if (continuation instanceof PaymentViewModel$loadConfigBean$1) {
            paymentViewModel$loadConfigBean$1 = (PaymentViewModel$loadConfigBean$1) continuation;
            int i11 = paymentViewModel$loadConfigBean$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentViewModel$loadConfigBean$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentViewModel$loadConfigBean$1 = new PaymentViewModel$loadConfigBean$1(this, continuation);
            }
        } else {
            paymentViewModel$loadConfigBean$1 = new PaymentViewModel$loadConfigBean$1(this, continuation);
        }
        Object objB = paymentViewModel$loadConfigBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentViewModel$loadConfigBean$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("txnId", str);
                if (str2 != null) {
                    jSONObject.put(TmcConstants.KEY_LANGUAGE, str2);
                } else {
                    try {
                        jSONObject.put(TmcConstants.KEY_LANGUAGE, r(TranPay.f41486a.d()).getLanguage().toString());
                    } catch (Exception e11) {
                        a.e(a.f619a, "Failed to get locale language: " + e11.getMessage(), null, 2, null);
                        jSONObject.put(TmcConstants.KEY_LANGUAGE, "en");
                    }
                }
                jSONObject.put(CampaignEx.JSON_KEY_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
                c.a aVar = c.f41652a;
                String string = jSONObject.toString();
                Intrinsics.g(string, "json.toString()");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA == null) {
                    return null;
                }
                b bVarV = v();
                paymentViewModel$loadConfigBean$1.label = 1;
                objB = bVarV.b(requestBodyA, paymentViewModel$loadConfigBean$1);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            return (LoadConfigContent) objB;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            a.e(a.f619a, "LoadConfigFailed error is " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
            return null;
        }
    }

    public static /* synthetic */ void H(PaymentViewModel paymentViewModel, String str, long j11, long j12, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j11 = 5000;
        }
        long j13 = j11;
        if ((i11 & 4) != 0) {
            j12 = 600000;
        }
        paymentViewModel.G(str, j13, j12);
    }

    private final void I(String str) {
        k.d(o0.a(y0.c()), null, null, new PaymentViewModel$queryOnce$1(this, str, null), 3, null);
    }

    public static /* synthetic */ void h(PaymentViewModel paymentViewModel, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        paymentViewModel.g(str, str2, str3);
    }

    public static /* synthetic */ void k(PaymentViewModel paymentViewModel, String str, String str2, String str3, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = null;
        }
        if ((i11 & 4) != 0) {
            str3 = null;
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        paymentViewModel.j(str, str2, str3, z10);
    }

    private final Locale r(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            Locale locale = configuration.getLocales().get(0);
            Intrinsics.g(locale, "{\n            configuration.locales[0]\n        }");
            return locale;
        }
        Locale locale2 = configuration.locale;
        Intrinsics.g(locale2, "{\n            configuration.locale\n        }");
        return locale2;
    }

    private final b v() {
        Object value = this.f41686a.getValue();
        Intrinsics.g(value, "<get-iPaymentApi>(...)");
        return (b) value;
    }

    public final String A() {
        return this.f41688c;
    }

    public final void G(String txnId, long j11, long j12) {
        Intrinsics.h(txnId, "txnId");
        this.f41687b = k.d(o0.a(y0.c()), null, null, new PaymentViewModel$query$1(j11, j12, this, txnId, null), 3, null);
    }

    public final void J() {
        t1 t1Var = this.f41687b;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        String str = this.f41688c;
        if (str != null) {
            I(str);
        }
    }

    public final void K(d dVar) {
        this.f41696k = dVar;
    }

    public final void L(boolean z10) {
        this.f41695j = z10;
    }

    public final void M(boolean z10) {
        this.f41694i = z10;
    }

    public final void N(String str) {
        this.f41689d = str;
    }

    public final void O(String str) {
        this.f41693h = str;
    }

    public final void P(String str) {
        this.f41688c = str;
    }

    public final void g(String txnId, String reason, String str) {
        Intrinsics.h(txnId, "txnId");
        Intrinsics.h(reason, "reason");
        k.d(o0.a(y0.c()), null, null, new PaymentViewModel$cancelPay$1(this, txnId, reason, str, null), 3, null);
    }

    public final void i() {
        t1 t1Var = this.f41687b;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
    }

    public final void j(String payMethod, String str, String str2, boolean z10) {
        Intrinsics.h(payMethod, "payMethod");
        this.f41690e = str;
        this.f41691f = str2;
        this.f41692g = z10;
        this.f41701p.n(Boolean.TRUE);
        k.d(o0.a(y0.c()), null, null, new PaymentViewModel$cashierPay$1(this, payMethod, str, str2, null), 3, null);
    }

    public final void l(BillingParams params) {
        Intrinsics.h(params, "params");
        E(params);
    }

    public final String m() {
        String mobileCode;
        String areaCode;
        LoadConfigContent loadConfigContent = (LoadConfigContent) this.f41698m.f();
        if (loadConfigContent != null && (areaCode = loadConfigContent.getAreaCode()) != null) {
            return areaCode;
        }
        CurrencyInfoBean currencyInfoBeanN = TranPayConfiguration.f41490a.n();
        return (currencyInfoBeanN == null || (mobileCode = currencyInfoBeanN.getMobileCode()) == null) ? "" : mobileCode;
    }

    public final boolean n() {
        return this.f41692g;
    }

    public final d o() {
        return this.f41696k;
    }

    public final String p() {
        return this.f41691f;
    }

    public final b0 q() {
        return this.f41698m;
    }

    public final b0 s() {
        return this.f41699n;
    }

    public final boolean t() {
        return this.f41695j;
    }

    public final boolean u() {
        return this.f41694i;
    }

    public final b0 w() {
        return this.f41701p;
    }

    public final String x() {
        return this.f41693h;
    }

    public final String y() {
        return this.f41690e;
    }

    public final b0 z() {
        return this.f41700o;
    }
}
