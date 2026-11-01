package com.tn.tranpay.helper;

import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import com.tn.tranpay.bean.CurrencyInfoBean;
import com.tn.tranpay.device.TNDeviceHelper;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class PaymentMMKV {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PaymentMMKV f41644a = new PaymentMMKV();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f41645b = LazyKt.b(new Function0<MMKV>() { // from class: com.tn.tranpay.helper.PaymentMMKV$mmkv$2
        @Override // kotlin.jvm.functions.Function0
        public final MMKV invoke() {
            return MMKV.I("tran_pay");
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Gson f41646c = new Gson();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final SimpleDateFormat f41647d = new SimpleDateFormat("yyyyMMdd", Locale.getDefault());

    private PaymentMMKV() {
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(CurrencyInfoBean currencyInfoBean, Continuation continuation) throws Throwable {
        PaymentMMKV$cacheCurrencyInfoByIP$1 paymentMMKV$cacheCurrencyInfoByIP$1;
        PaymentMMKV paymentMMKV;
        if (continuation instanceof PaymentMMKV$cacheCurrencyInfoByIP$1) {
            paymentMMKV$cacheCurrencyInfoByIP$1 = (PaymentMMKV$cacheCurrencyInfoByIP$1) continuation;
            int i11 = paymentMMKV$cacheCurrencyInfoByIP$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentMMKV$cacheCurrencyInfoByIP$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentMMKV$cacheCurrencyInfoByIP$1 = new PaymentMMKV$cacheCurrencyInfoByIP$1(this, continuation);
            }
        } else {
            paymentMMKV$cacheCurrencyInfoByIP$1 = new PaymentMMKV$cacheCurrencyInfoByIP$1(this, continuation);
        }
        Object objJ = paymentMMKV$cacheCurrencyInfoByIP$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentMMKV$cacheCurrencyInfoByIP$1.label;
        if (i12 == 0) {
            ResultKt.b(objJ);
            IPHelper iPHelper = IPHelper.f41632a;
            paymentMMKV$cacheCurrencyInfoByIP$1.L$0 = this;
            paymentMMKV$cacheCurrencyInfoByIP$1.L$1 = currencyInfoBean;
            paymentMMKV$cacheCurrencyInfoByIP$1.label = 1;
            objJ = IPHelper.j(iPHelper, false, paymentMMKV$cacheCurrencyInfoByIP$1, 1, null);
            if (objJ == objF) {
                return objF;
            }
            paymentMMKV = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            currencyInfoBean = (CurrencyInfoBean) paymentMMKV$cacheCurrencyInfoByIP$1.L$1;
            paymentMMKV = (PaymentMMKV) paymentMMKV$cacheCurrencyInfoByIP$1.L$0;
            ResultKt.b(objJ);
        }
        String str = (String) objJ;
        if (str != null && !StringsKt.q0(str)) {
            try {
                paymentMMKV.h().putString("k_currency_info_ip_cache_" + str + "_" + f41647d.format(new Date()), f41646c.toJson(currencyInfoBean));
                ai.a.g(ai.a.f619a, "使用IP地址缓存货币信息: " + str, null, 2, null);
            } catch (Exception e11) {
                ai.a.e(ai.a.f619a, "缓存货币信息失败: " + e11.getMessage(), null, 2, null);
            }
            return Unit.f67061a;
        }
        ai.a aVar = ai.a.f619a;
        ai.a.e(aVar, "无法获取IP地址，使用设备ID作为fallback", null, 2, null);
        String strC = TNDeviceHelper.f41530a.c();
        try {
            paymentMMKV.h().putString("k_currency_info_ip_cache_device_" + strC + "_" + f41647d.format(new Date()), f41646c.toJson(currencyInfoBean));
            ai.a.g(aVar, "使用设备ID缓存货币信息: " + strC, null, 2, null);
        } catch (Exception e12) {
            ai.a.e(ai.a.f619a, "缓存货币信息失败: " + e12.getMessage(), null, 2, null);
        }
        return Unit.f67061a;
    }

    public final void b(String region, CurrencyInfoBean currencyInfo) {
        Intrinsics.h(region, "region");
        Intrinsics.h(currencyInfo, "currencyInfo");
        String str = "k_currency_info_cache_" + region;
        String str2 = "k_currency_info_cache_time_" + region;
        try {
            h().putString(str, f41646c.toJson(currencyInfo));
            h().putLong(str2, System.currentTimeMillis());
        } catch (Exception e11) {
            ai.a.e(ai.a.f619a, "缓存region货币信息失败: " + e11.getMessage(), null, 2, null);
        }
    }

    public final void c() {
        d();
        e();
    }

    public final void d() {
        int iV0;
        String str = f41647d.format(new Date());
        String[] strArrA = h().a();
        if (strArrA != null) {
            for (String key : strArrA) {
                Intrinsics.g(key, "key");
                if (StringsKt.W(key, "k_currency_info_ip_cache_", false, 2, null) && (iV0 = StringsKt.v0(key, "_", 0, false, 6, null)) != -1 && iV0 < key.length() - 1) {
                    String strSubstring = key.substring(iV0 + 1);
                    Intrinsics.g(strSubstring, "substring(...)");
                    if (!Intrinsics.c(strSubstring, str)) {
                        f41644a.h().M(key);
                        ai.a.g(ai.a.f619a, "清除过期IP缓存: " + key, null, 2, null);
                    }
                }
            }
        }
    }

    public final void e() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        String[] strArrA = h().a();
        if (strArrA != null) {
            for (String key : strArrA) {
                Intrinsics.g(key, "key");
                if (StringsKt.W(key, "k_currency_info_cache_time_", false, 2, null)) {
                    PaymentMMKV paymentMMKV = f41644a;
                    long j11 = paymentMMKV.h().getLong(key, 0L);
                    if (j11 > 0 && jCurrentTimeMillis - j11 > 2592000000L) {
                        paymentMMKV.h().M("k_currency_info_cache_" + StringsKt.I0(key, "k_currency_info_cache_time_"));
                        paymentMMKV.h().M(key);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(Continuation continuation) throws Throwable {
        PaymentMMKV$getCachedCurrencyInfoByIP$1 paymentMMKV$getCachedCurrencyInfoByIP$1;
        String str;
        PaymentMMKV paymentMMKV;
        if (continuation instanceof PaymentMMKV$getCachedCurrencyInfoByIP$1) {
            paymentMMKV$getCachedCurrencyInfoByIP$1 = (PaymentMMKV$getCachedCurrencyInfoByIP$1) continuation;
            int i11 = paymentMMKV$getCachedCurrencyInfoByIP$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                paymentMMKV$getCachedCurrencyInfoByIP$1.label = i11 - Integer.MIN_VALUE;
            } else {
                paymentMMKV$getCachedCurrencyInfoByIP$1 = new PaymentMMKV$getCachedCurrencyInfoByIP$1(this, continuation);
            }
        } else {
            paymentMMKV$getCachedCurrencyInfoByIP$1 = new PaymentMMKV$getCachedCurrencyInfoByIP$1(this, continuation);
        }
        Object obj = paymentMMKV$getCachedCurrencyInfoByIP$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = paymentMMKV$getCachedCurrencyInfoByIP$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            String str2 = f41647d.format(new Date());
            IPHelper iPHelper = IPHelper.f41632a;
            paymentMMKV$getCachedCurrencyInfoByIP$1.L$0 = this;
            paymentMMKV$getCachedCurrencyInfoByIP$1.L$1 = str2;
            paymentMMKV$getCachedCurrencyInfoByIP$1.label = 1;
            Object objJ = IPHelper.j(iPHelper, false, paymentMMKV$getCachedCurrencyInfoByIP$1, 1, null);
            if (objJ == objF) {
                return objF;
            }
            str = str2;
            obj = objJ;
            paymentMMKV = this;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) paymentMMKV$getCachedCurrencyInfoByIP$1.L$1;
            paymentMMKV = (PaymentMMKV) paymentMMKV$getCachedCurrencyInfoByIP$1.L$0;
            ResultKt.b(obj);
        }
        String str3 = (String) obj;
        if (str3 != null && !StringsKt.q0(str3)) {
            String str4 = "k_currency_info_ip_cache_" + str3 + "_" + str;
            String string = paymentMMKV.h().getString(str4, "");
            if (string != null && string.length() != 0) {
                try {
                    CurrencyInfoBean currencyInfoBean = (CurrencyInfoBean) f41646c.fromJson(string, CurrencyInfoBean.class);
                    ai.a.g(ai.a.f619a, "使用IP地址缓存: " + str3, null, 2, null);
                    return currencyInfoBean;
                } catch (Exception e11) {
                    ai.a.e(ai.a.f619a, "解析IP缓存失败: " + e11.getMessage(), null, 2, null);
                    paymentMMKV.h().M(str4);
                    return null;
                }
            }
        }
        String strC = TNDeviceHelper.f41530a.c();
        String str5 = "k_currency_info_ip_cache_device_" + strC + "_" + str;
        String string2 = paymentMMKV.h().getString(str5, "");
        if (string2 == null || string2.length() == 0) {
            return null;
        }
        try {
            CurrencyInfoBean currencyInfoBean2 = (CurrencyInfoBean) f41646c.fromJson(string2, CurrencyInfoBean.class);
            ai.a.g(ai.a.f619a, "使用设备ID fallback缓存: " + strC, null, 2, null);
            return currencyInfoBean2;
        } catch (Exception e12) {
            ai.a.e(ai.a.f619a, "解析设备ID缓存失败: " + e12.getMessage(), null, 2, null);
            paymentMMKV.h().M(str5);
            return null;
        }
    }

    public final CurrencyInfoBean g(String region) {
        Intrinsics.h(region, "region");
        String str = "k_currency_info_cache_" + region;
        String str2 = "k_currency_info_cache_time_" + region;
        long j11 = h().getLong(str2, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j11 == 0 || jCurrentTimeMillis - j11 > 2592000000L) {
            h().M(str);
            h().M(str2);
            return null;
        }
        String string = h().getString(str, "");
        if (string == null || string.length() == 0) {
            return null;
        }
        try {
            return (CurrencyInfoBean) f41646c.fromJson(string, CurrencyInfoBean.class);
        } catch (Exception e11) {
            ai.a.e(ai.a.f619a, "解析region缓存失败: " + e11.getMessage(), null, 2, null);
            h().M(str);
            h().M(str2);
            return null;
        }
    }

    public final MMKV h() {
        Object value = f41645b.getValue();
        Intrinsics.g(value, "<get-mmkv>(...)");
        return (MMKV) value;
    }
}
