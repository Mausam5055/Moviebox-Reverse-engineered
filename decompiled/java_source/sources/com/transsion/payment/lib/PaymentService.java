package com.transsion.payment.lib;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.payment.lib.bean.HttpErrorBodyBean;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;
import retrofit2.HttpException;

/* JADX INFO: loaded from: classes6.dex */
public final class PaymentService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f47775a = LazyKt.b(new Function0() { // from class: com.transsion.payment.lib.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PaymentService.f();
        }
    });

    private final String b() {
        String simpleName = PaymentService.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final a c() {
        return (a) this.f47775a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a f() {
        return (a) zg.c.f79414e.a().h(a.class);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Continuation continuation) throws Throwable {
        PaymentService$getSkuList$1 paymentService$getSkuList$1;
        if (continuation instanceof PaymentService$getSkuList$1) {
            paymentService$getSkuList$1 = (PaymentService$getSkuList$1) continuation;
            int i11 = paymentService$getSkuList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentService$getSkuList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentService$getSkuList$1 = new PaymentService$getSkuList$1(this, continuation);
            }
        } else {
            paymentService$getSkuList$1 = new PaymentService$getSkuList$1(this, continuation);
        }
        Object objE = paymentService$getSkuList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentService$getSkuList$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objE);
                Result.Companion companion = Result.INSTANCE;
                a aVarC = c();
                String strA = vg.a.f77324a.a();
                paymentService$getSkuList$1.label = 1;
                objE = aVarC.e(strA, paymentService$getSkuList$1);
                if (objE == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objE);
            }
            return objE;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            if (!(thM457exceptionOrNullimpl instanceof HttpException)) {
                d.f47779a.b(b() + " --> getSkuList() --> error = " + thM457exceptionOrNullimpl.getMessage());
                return null;
            }
            HttpException httpException = (HttpException) thM457exceptionOrNullimpl;
            d.f47779a.b(b() + " --> getSkuList() --> code = " + httpException.code() + " -- message = " + httpException.message());
            return new BaseDto(String.valueOf(thM457exceptionOrNullimpl.getMessage()), String.valueOf(httpException.code()), null, "");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(String str, Continuation continuation) throws Throwable {
        PaymentService$orderCheck4Paynicorn$1 paymentService$orderCheck4Paynicorn$1;
        String message;
        String code;
        String reason;
        if (continuation instanceof PaymentService$orderCheck4Paynicorn$1) {
            paymentService$orderCheck4Paynicorn$1 = (PaymentService$orderCheck4Paynicorn$1) continuation;
            int i11 = paymentService$orderCheck4Paynicorn$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentService$orderCheck4Paynicorn$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentService$orderCheck4Paynicorn$1 = new PaymentService$orderCheck4Paynicorn$1(this, continuation);
            }
        } else {
            paymentService$orderCheck4Paynicorn$1 = new PaymentService$orderCheck4Paynicorn$1(this, continuation);
        }
        Object objA = paymentService$orderCheck4Paynicorn$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentService$orderCheck4Paynicorn$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objA);
                Result.Companion companion = Result.INSTANCE;
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("tradingOrderId", str);
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string, MediaType.INSTANCE.parse("application/json"));
                a aVarC = c();
                String strA = vg.a.f77324a.a();
                paymentService$orderCheck4Paynicorn$1.label = 1;
                objA = aVarC.a(strA, requestBodyCreate, paymentService$orderCheck4Paynicorn$1);
                if (objA == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objA);
            }
            return (BaseDto) objA;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            if (!(thM457exceptionOrNullimpl instanceof HttpException)) {
                d.f47779a.b(b() + " --> orderCheck4Paynicorn() --> it = " + thM457exceptionOrNullimpl);
                return null;
            }
            HttpErrorBodyBean httpErrorBodyBeanA = HttpErrorBodyBean.INSTANCE.a((HttpException) thM457exceptionOrNullimpl);
            String str2 = "";
            if (httpErrorBodyBeanA == null || (message = httpErrorBodyBeanA.getMessage()) == null) {
                message = "";
            }
            if (httpErrorBodyBeanA == null || (code = httpErrorBodyBeanA.getCode()) == null) {
                code = "";
            }
            if (httpErrorBodyBeanA != null && (reason = httpErrorBodyBeanA.getReason()) != null) {
                str2 = reason;
            }
            return new BaseDto(message, code, null, str2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(String str, String str2, String str3, String str4, Continuation continuation) throws Throwable {
        PaymentService$paymentOrderCheck$1 paymentService$paymentOrderCheck$1;
        if (continuation instanceof PaymentService$paymentOrderCheck$1) {
            paymentService$paymentOrderCheck$1 = (PaymentService$paymentOrderCheck$1) continuation;
            int i11 = paymentService$paymentOrderCheck$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentService$paymentOrderCheck$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentService$paymentOrderCheck$1 = new PaymentService$paymentOrderCheck$1(this, continuation);
            }
        } else {
            paymentService$paymentOrderCheck$1 = new PaymentService$paymentOrderCheck$1(this, continuation);
        }
        Object objC = paymentService$paymentOrderCheck$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentService$paymentOrderCheck$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objC);
                Result.Companion companion = Result.INSTANCE;
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("skuId", str);
                jsonObject.addProperty("purchaseToken", str2);
                jsonObject.addProperty("tradingOrderId", str3);
                jsonObject.addProperty("gpOrderId", str4);
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string, MediaType.INSTANCE.parse("application/json"));
                a aVarC = c();
                String strA = vg.a.f77324a.a();
                paymentService$paymentOrderCheck$1.label = 1;
                objC = aVarC.c(strA, requestBodyCreate, paymentService$paymentOrderCheck$1);
                if (objC == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objC);
            }
            return (BaseDto) objC;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            if (!(thM457exceptionOrNullimpl instanceof HttpException)) {
                d.f47779a.b(b() + " --> paymentOrderCheck() --> error = " + thM457exceptionOrNullimpl.getMessage());
                return null;
            }
            HttpException httpException = (HttpException) thM457exceptionOrNullimpl;
            d.f47779a.b(b() + " --> paymentOrderCheck() --> code = " + httpException.code() + " -- message = " + httpException.message());
            return new BaseDto(String.valueOf(thM457exceptionOrNullimpl.getMessage()), String.valueOf(httpException.code()), null, "");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(String str, String str2, Map map, Continuation continuation) throws Throwable {
        PaymentService$paymentOrderCreate4Gp$1 paymentService$paymentOrderCreate4Gp$1;
        if (continuation instanceof PaymentService$paymentOrderCreate4Gp$1) {
            paymentService$paymentOrderCreate4Gp$1 = (PaymentService$paymentOrderCreate4Gp$1) continuation;
            int i11 = paymentService$paymentOrderCreate4Gp$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentService$paymentOrderCreate4Gp$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentService$paymentOrderCreate4Gp$1 = new PaymentService$paymentOrderCreate4Gp$1(this, continuation);
            }
        } else {
            paymentService$paymentOrderCreate4Gp$1 = new PaymentService$paymentOrderCreate4Gp$1(this, continuation);
        }
        Object objB = paymentService$paymentOrderCreate4Gp$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentService$paymentOrderCreate4Gp$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("skuId", str);
                jsonObject.addProperty("cpFrontPage", str2);
                if (map != null) {
                    String string = new JSONObject(map).toString();
                    Intrinsics.g(string, "toString(...)");
                    jsonObject.addProperty("ext", string);
                }
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string2 = jsonObject.toString();
                Intrinsics.g(string2, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string2, MediaType.INSTANCE.parse("application/json"));
                a aVarC = c();
                String strA = vg.a.f77324a.a();
                paymentService$paymentOrderCreate4Gp$1.label = 1;
                objB = aVarC.b(strA, requestBodyCreate, paymentService$paymentOrderCreate4Gp$1);
                if (objB == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objB);
            }
            return (BaseDto) objB;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            if (!(thM457exceptionOrNullimpl instanceof HttpException)) {
                d.f47779a.b(b() + " --> paymentOrderCreate4Gp() --> error = " + thM457exceptionOrNullimpl.getMessage());
                return null;
            }
            HttpException httpException = (HttpException) thM457exceptionOrNullimpl;
            d.f47779a.b(b() + " --> paymentOrderCreate4Gp() --> code = " + httpException.code() + " -- message = " + httpException.message());
            return new BaseDto(String.valueOf(thM457exceptionOrNullimpl.getMessage()), String.valueOf(httpException.code()), null, "");
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(String str, Double d11, String str2, Map map, Continuation continuation) throws Throwable {
        PaymentService$paymentOrderCreate4Paynicorn$1 paymentService$paymentOrderCreate4Paynicorn$1;
        if (continuation instanceof PaymentService$paymentOrderCreate4Paynicorn$1) {
            paymentService$paymentOrderCreate4Paynicorn$1 = (PaymentService$paymentOrderCreate4Paynicorn$1) continuation;
            int i11 = paymentService$paymentOrderCreate4Paynicorn$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentService$paymentOrderCreate4Paynicorn$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentService$paymentOrderCreate4Paynicorn$1 = new PaymentService$paymentOrderCreate4Paynicorn$1(this, continuation);
            }
        } else {
            paymentService$paymentOrderCreate4Paynicorn$1 = new PaymentService$paymentOrderCreate4Paynicorn$1(this, continuation);
        }
        Object objD = paymentService$paymentOrderCreate4Paynicorn$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentService$paymentOrderCreate4Paynicorn$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objD);
                Result.Companion companion = Result.INSTANCE;
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("skuId", str);
                jsonObject.addProperty("payAmount", d11 != null ? d11.toString() : null);
                jsonObject.addProperty("cpFrontPage", str2);
                if (map != null) {
                    String string = new JSONObject(map).toString();
                    Intrinsics.g(string, "toString(...)");
                    jsonObject.addProperty("ext", string);
                }
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string2 = jsonObject.toString();
                Intrinsics.g(string2, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string2, MediaType.INSTANCE.parse("application/json"));
                a aVarC = c();
                String strA = vg.a.f77324a.a();
                paymentService$paymentOrderCreate4Paynicorn$1.label = 1;
                objD = aVarC.d(strA, requestBodyCreate, paymentService$paymentOrderCreate4Paynicorn$1);
                if (objD == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objD);
            }
            return (BaseDto) objD;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(Result.m454constructorimpl(ResultKt.a(th2)));
            if (thM457exceptionOrNullimpl == null) {
                throw new KotlinNothingValueException();
            }
            if (!(thM457exceptionOrNullimpl instanceof HttpException)) {
                d.f47779a.b(b() + " --> paymentOrderCreate4Paynicorn() --> error = " + thM457exceptionOrNullimpl.getMessage());
                return null;
            }
            HttpException httpException = (HttpException) thM457exceptionOrNullimpl;
            d.f47779a.b(b() + " --> paymentOrderCreate4Paynicorn() --> code = " + httpException.code() + " -- message = " + httpException.message());
            return new BaseDto(String.valueOf(thM457exceptionOrNullimpl.getMessage()), String.valueOf(httpException.code()), null, "");
        }
    }
}
