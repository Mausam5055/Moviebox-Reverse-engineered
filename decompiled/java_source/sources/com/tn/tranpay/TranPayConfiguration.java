package com.tn.tranpay;

import com.tn.tranpay.bean.CurrencyInfoBean;
import com.tn.tranpay.helper.PaymentMMKV;
import com.tn.tranpay.network.BaseDto;
import com.tn.tranpay.network.RetrofitClient;
import com.tn.tranpay.report.h;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes4.dex */
public final class TranPayConfiguration {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f41491b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f41494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f41495f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f41497h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f41498i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f41499j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f41500k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f41501l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f41502m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static CurrencyInfoBean f41503n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TranPayConfiguration f41490a = new TranPayConfiguration();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f41492c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f41493d = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f41496g = true;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Lazy f41504o = LazyKt.b(new Function0<com.tn.tranpay.network.b>() { // from class: com.tn.tranpay.TranPayConfiguration$iPaymentApi$2
        @Override // kotlin.jvm.functions.Function0
        public final com.tn.tranpay.network.b invoke() {
            return (com.tn.tranpay.network.b) RetrofitClient.f41655a.d().b(com.tn.tranpay.network.b.class);
        }
    });

    private TranPayConfiguration() {
    }

    private final void E() {
        k.d(o0.a(y0.c()), null, null, new TranPayConfiguration$updateCurrencyInfo$1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(CurrencyInfoBean currencyInfoBean, Continuation continuation) throws Throwable {
        TranPayConfiguration$cacheCurrencyInfo$1 tranPayConfiguration$cacheCurrencyInfo$1;
        if (continuation instanceof TranPayConfiguration$cacheCurrencyInfo$1) {
            tranPayConfiguration$cacheCurrencyInfo$1 = (TranPayConfiguration$cacheCurrencyInfo$1) continuation;
            int i11 = tranPayConfiguration$cacheCurrencyInfo$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                tranPayConfiguration$cacheCurrencyInfo$1.label = i11 - Integer.MIN_VALUE;
            } else {
                tranPayConfiguration$cacheCurrencyInfo$1 = new TranPayConfiguration$cacheCurrencyInfo$1(this, continuation);
            }
        } else {
            tranPayConfiguration$cacheCurrencyInfo$1 = new TranPayConfiguration$cacheCurrencyInfo$1(this, continuation);
        }
        Object obj = tranPayConfiguration$cacheCurrencyInfo$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = tranPayConfiguration$cacheCurrencyInfo$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            String str = f41494e;
            if (str == null || str.length() == 0) {
                PaymentMMKV paymentMMKV = PaymentMMKV.f41644a;
                tranPayConfiguration$cacheCurrencyInfo$1.label = 1;
                if (paymentMMKV.a(currencyInfoBean, tranPayConfiguration$cacheCurrencyInfo$1) == objF) {
                    return objF;
                }
            } else {
                PaymentMMKV paymentMMKV2 = PaymentMMKV.f41644a;
                String str2 = f41494e;
                Intrinsics.e(str2);
                paymentMMKV2.b(str2, currencyInfoBean);
                ai.a.g(ai.a.f619a, "按region缓存货币信息: region=" + f41494e, null, 2, null);
            }
            return Unit.f67061a;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        ai.a.g(ai.a.f619a, "按IP+日期缓存货币信息", null, 2, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(boolean z10, Continuation continuation) throws Throwable {
        TranPayConfiguration$fetchAndUpdateCurrencyInfo$1 tranPayConfiguration$fetchAndUpdateCurrencyInfo$1;
        if (continuation instanceof TranPayConfiguration$fetchAndUpdateCurrencyInfo$1) {
            tranPayConfiguration$fetchAndUpdateCurrencyInfo$1 = (TranPayConfiguration$fetchAndUpdateCurrencyInfo$1) continuation;
            int i11 = tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.label = i11 - Integer.MIN_VALUE;
            } else {
                tranPayConfiguration$fetchAndUpdateCurrencyInfo$1 = new TranPayConfiguration$fetchAndUpdateCurrencyInfo$1(this, continuation);
            }
        } else {
            tranPayConfiguration$fetchAndUpdateCurrencyInfo$1 = new TranPayConfiguration$fetchAndUpdateCurrencyInfo$1(this, continuation);
        }
        Object objO = tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.label;
        if (i12 == 0) {
            ResultKt.b(objO);
            tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.Z$0 = z10;
            tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.label = 1;
            objO = o(tranPayConfiguration$fetchAndUpdateCurrencyInfo$1);
            if (objO == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = tranPayConfiguration$fetchAndUpdateCurrencyInfo$1.Z$0;
            ResultKt.b(objO);
        }
        BaseDto baseDto = (BaseDto) objO;
        if ((baseDto != null ? (CurrencyInfoBean) baseDto.getData() : null) == null) {
            if (z10) {
                h.f41685a.c(false);
            }
            ai.a.e(ai.a.f619a, "Failed to update currency info", null, 2, null);
            return null;
        }
        f41503n = (CurrencyInfoBean) baseDto.getData();
        if (z10) {
            h.f41685a.c(true);
        }
        ai.a.g(ai.a.f619a, "Currency info updated successfully: " + f41503n, null, 2, null);
        CurrencyInfoBean currencyInfoBean = f41503n;
        f41499j = currencyInfoBean != null ? currencyInfoBean.getCountryCode() : null;
        CurrencyInfoBean currencyInfoBean2 = f41503n;
        f41500k = currencyInfoBean2 != null ? currencyInfoBean2.getCurrency() : null;
        return f41503n;
    }

    private final Object i(Continuation continuation) {
        String str = f41494e;
        if (str == null || str.length() == 0) {
            return PaymentMMKV.f41644a.f(continuation);
        }
        PaymentMMKV paymentMMKV = PaymentMMKV.f41644a;
        String str2 = f41494e;
        Intrinsics.e(str2);
        return paymentMMKV.g(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x0098 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:14:0x0030, B:40:0x00a7, B:20:0x0040, B:33:0x008e, B:35:0x0098, B:30:0x007b), top: B:50:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00be  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x00be, please report this as an issue */
    public final Object o(Continuation continuation) throws Throwable {
        TranPayConfiguration$getCurrencyInfoBean$1 tranPayConfiguration$getCurrencyInfoBean$1;
        Object objM454constructorimpl;
        Throwable thM457exceptionOrNullimpl;
        BaseDto baseDto;
        CurrencyInfoBean currencyInfoBean;
        TranPayConfiguration tranPayConfiguration;
        BaseDto baseDto2;
        if (continuation instanceof TranPayConfiguration$getCurrencyInfoBean$1) {
            tranPayConfiguration$getCurrencyInfoBean$1 = (TranPayConfiguration$getCurrencyInfoBean$1) continuation;
            int i11 = tranPayConfiguration$getCurrencyInfoBean$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                tranPayConfiguration$getCurrencyInfoBean$1.label = i11 - Integer.MIN_VALUE;
            } else {
                tranPayConfiguration$getCurrencyInfoBean$1 = new TranPayConfiguration$getCurrencyInfoBean$1(this, continuation);
            }
        } else {
            tranPayConfiguration$getCurrencyInfoBean$1 = new TranPayConfiguration$getCurrencyInfoBean$1(this, continuation);
        }
        Object objI = tranPayConfiguration$getCurrencyInfoBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = tranPayConfiguration$getCurrencyInfoBean$1.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    ResultKt.b(objI);
                } else {
                    if (i12 == 2) {
                        ResultKt.b(objI);
                        baseDto = (BaseDto) objI;
                        currencyInfoBean = (CurrencyInfoBean) baseDto.getData();
                        if (currencyInfoBean != null) {
                            tranPayConfiguration = f41490a;
                            tranPayConfiguration$getCurrencyInfoBean$1.L$0 = baseDto;
                            tranPayConfiguration$getCurrencyInfoBean$1.label = 3;
                            if (tranPayConfiguration.d(currencyInfoBean, tranPayConfiguration$getCurrencyInfoBean$1) == objF) {
                                return objF;
                            }
                            baseDto2 = baseDto;
                        }
                        objM454constructorimpl = Result.m454constructorimpl(baseDto);
                        thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                        if (thM457exceptionOrNullimpl == null) {
                            return objM454constructorimpl;
                        }
                        ai.a.e(ai.a.f619a, "获取货币信息失败 [" + thM457exceptionOrNullimpl.getClass().getSimpleName() + "]: " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
                        if (!f41495f) {
                            return null;
                        }
                        thM457exceptionOrNullimpl.printStackTrace();
                        return null;
                    }
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    baseDto2 = (BaseDto) tranPayConfiguration$getCurrencyInfoBean$1.L$0;
                    ResultKt.b(objI);
                }
                baseDto = baseDto2;
                objM454constructorimpl = Result.m454constructorimpl(baseDto);
                thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl == null) {
                    return objM454constructorimpl;
                }
                ai.a.e(ai.a.f619a, "获取货币信息失败 [" + thM457exceptionOrNullimpl.getClass().getSimpleName() + "]: " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
                if (!f41495f) {
                    return null;
                }
                thM457exceptionOrNullimpl.printStackTrace();
                return null;
            }
            ResultKt.b(objI);
            PaymentMMKV.f41644a.c();
            tranPayConfiguration$getCurrencyInfoBean$1.label = 1;
            objI = i(tranPayConfiguration$getCurrencyInfoBean$1);
            if (objI == objF) {
                return objF;
            }
            CurrencyInfoBean currencyInfoBean2 = (CurrencyInfoBean) objI;
            if (currencyInfoBean2 != null) {
                ai.a.g(ai.a.f619a, "使用缓存的货币信息: " + currencyInfoBean2, null, 2, null);
                return new BaseDto(200, currencyInfoBean2);
            }
            Result.Companion companion = Result.INSTANCE;
            com.tn.tranpay.network.b bVarR = f41490a.r();
            String str = f41494e;
            tranPayConfiguration$getCurrencyInfoBean$1.label = 2;
            objI = bVarR.e(str, tranPayConfiguration$getCurrencyInfoBean$1);
            if (objI == objF) {
                return objF;
            }
            baseDto = (BaseDto) objI;
            currencyInfoBean = (CurrencyInfoBean) baseDto.getData();
            if (currencyInfoBean != null) {
                tranPayConfiguration = f41490a;
                tranPayConfiguration$getCurrencyInfoBean$1.L$0 = baseDto;
                tranPayConfiguration$getCurrencyInfoBean$1.label = 3;
                if (tranPayConfiguration.d(currencyInfoBean, tranPayConfiguration$getCurrencyInfoBean$1) == objF) {
                    return objF;
                }
                baseDto2 = baseDto;
                baseDto = baseDto2;
            }
            objM454constructorimpl = Result.m454constructorimpl(baseDto);
            thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
            if (thM457exceptionOrNullimpl == null) {
                return objM454constructorimpl;
            }
            ai.a.e(ai.a.f619a, "获取货币信息失败 [" + thM457exceptionOrNullimpl.getClass().getSimpleName() + "]: " + thM457exceptionOrNullimpl.getMessage(), null, 2, null);
            if (!f41495f) {
                return null;
            }
            thM457exceptionOrNullimpl.printStackTrace();
            return null;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final com.tn.tranpay.network.b r() {
        Object value = f41504o.getValue();
        Intrinsics.g(value, "<get-iPaymentApi>(...)");
        return (com.tn.tranpay.network.b) value;
    }

    public final void A(boolean z10) {
        f41496g = z10;
    }

    public final void B(String str) {
        f41494e = str;
    }

    public final void C() {
        E();
    }

    public final void D(BillingParams params) {
        Intrinsics.h(params, "params");
        f41497h = params.getOrderId();
        f41500k = params.getCurrency();
        f41501l = params.getAmount();
        f41498i = params.getTxnId();
    }

    public final Object f(Continuation continuation) {
        CurrencyInfoBean currencyInfoBean = f41503n;
        return currencyInfoBean == null ? e(false, continuation) : currencyInfoBean;
    }

    public final String g() {
        return f41501l;
    }

    public final String h() {
        return f41492c;
    }

    public final String j() {
        return f41493d;
    }

    public final String k() {
        return f41499j;
    }

    public final String l() {
        return f41491b;
    }

    public final String m() {
        return f41500k;
    }

    public final CurrencyInfoBean n() {
        return f41503n;
    }

    public final boolean p() {
        return f41495f;
    }

    public final boolean q() {
        return f41502m;
    }

    public final String s() {
        return f41497h;
    }

    public final String t() {
        return f41498i;
    }

    public final boolean u() {
        return f41496g;
    }

    public final void v(String str) {
        Intrinsics.h(str, "<set-?>");
        f41492c = str;
    }

    public final void w(String str) {
        Intrinsics.h(str, "<set-?>");
        f41493d = str;
    }

    public final void x(String str) {
        f41491b = str;
    }

    public final void y(boolean z10) {
        f41495f = z10;
    }

    public final void z(boolean z10) {
        f41502m = z10;
    }
}
