package com.transsion.member.promotion;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.therouter.TheRouter;
import com.transsion.member.R$string;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.SkuPromotionItem;
import com.transsion.memberapi.SkuPromotionSku;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f46691a = new i();

    public static final class a implements com.transsion.payment.lib.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SkuPromotionItem f46692a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f46693b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f46694c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function0 f46695d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Context f46696e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ Function0 f46697f;

        a(SkuPromotionItem skuPromotionItem, String str, String str2, Function0 function0, Context context, Function0 function1) {
            this.f46692a = skuPromotionItem;
            this.f46693b = str;
            this.f46694c = str2;
            this.f46695d = function0;
            this.f46696e = context;
            this.f46697f = function1;
        }

        @Override // com.transsion.payment.lib.b
        public void a(Integer num, String str, boolean z10, String str2) {
            lg.a.C0828a.l(lg.a.f68839a, "premium_", "Payment failed " + str + ", " + num, false, 4, null);
            if (num != null && num.intValue() == -30) {
                com.tn.lib.widget.toast.core.h.f41479a.l(((AppCompatActivity) this.f46696e).getString(R$string.member_pay_pending));
            } else if (num != null && num.intValue() == 1003) {
                i.f46691a.d(num, str, str2 == null ? "" : str2, this.f46692a, this.f46694c, this.f46693b);
                com.tn.lib.widget.toast.core.h.f41479a.l(((AppCompatActivity) this.f46696e).getString(R$string.member_pay_processing));
            } else {
                i.f46691a.d(num, str, str2 == null ? "" : str2, this.f46692a, this.f46694c, this.f46693b);
                com.tn.lib.widget.toast.core.h.f41479a.l(((AppCompatActivity) this.f46696e).getString(R$string.member_pay_failed));
            }
            Function0 function0 = this.f46697f;
            if (function0 != null) {
            }
        }

        @Override // com.transsion.payment.lib.b
        public void b(boolean z10) {
        }

        @Override // com.transsion.payment.lib.b
        public void c(int i11, String balance, String str) {
            Intrinsics.h(balance, "balance");
            i.f46691a.e(this.f46692a, str, this.f46693b, this.f46694c);
            IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
            if (iPremiumApi != null) {
                iPremiumApi.g(null);
            }
            Function0 function0 = this.f46695d;
            if (function0 != null) {
            }
        }
    }

    private i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(Integer num, String str, String str2, SkuPromotionItem skuPromotionItem, String str3, String str4) {
        String skuId;
        SkuPromotionSku sku;
        HashMap map = new HashMap();
        map.put("opt_type", "pay_result");
        map.put("result_type", "result_fail");
        map.put("fail_code", String.valueOf(num));
        if (str == null) {
            str = "";
        }
        map.put("fail_message", str);
        if (skuPromotionItem == null || (sku = skuPromotionItem.getSku()) == null || (skuId = sku.getSkuId()) == null) {
            skuId = "";
        }
        map.put("sku_id", skuId);
        if (str2 == null) {
            str2 = "";
        }
        map.put("order_id", str2);
        map.put("trace_id", str4);
        hj.i iVar = hj.i.f64505a;
        if (str3 == null) {
            str3 = "";
        }
        iVar.s(str3, "purchase", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(SkuPromotionItem skuPromotionItem, String str, String str2, String str3) {
        String skuId;
        SkuPromotionSku sku;
        HashMap map = new HashMap();
        map.put("opt_type", "pay_result");
        map.put("result_type", "result_success");
        if (skuPromotionItem == null || (sku = skuPromotionItem.getSku()) == null || (skuId = sku.getSkuId()) == null) {
            skuId = "";
        }
        map.put("sku_id", skuId);
        if (str == null) {
            str = "";
        }
        map.put("order_id", str);
        map.put("trace_id", str2);
        hj.i iVar = hj.i.f64505a;
        if (str3 == null) {
            str3 = "";
        }
        iVar.s(str3, "purchase", map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g(String str, SkuPromotionItem skuPromotionItem, String str2, String str3, String str4, String orderId) {
        SkuPromotionSku sku;
        String skuId;
        Intrinsics.h(orderId, "orderId");
        com.transsion.baselib.helper.f.f43269a.a(str == null ? "" : str, str2, orderId, str3, (skuPromotionItem == null || (sku = skuPromotionItem.getSku()) == null || (skuId = sku.getSkuId()) == null) ? "" : skuId, str4);
        return Unit.f67061a;
    }

    public final void f(Context context, final SkuPromotionItem skuPromotionItem, final String str, final String str2, final String str3, final String traceId, Function0 function0, Function0 function1) {
        String marketingActivityId;
        SkuPromotionSku sku;
        SkuPromotionSku sku2;
        String skuId;
        Intrinsics.h(traceId, "traceId");
        Double discountPrice = null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (skuPromotionItem == null || (marketingActivityId = skuPromotionItem.getMarketingActivityId()) == null) {
                marketingActivityId = "";
            }
            linkedHashMap.put("marketingActivityId", marketingActivityId);
            com.transsion.payment.lib.f fVarA = com.transsion.payment.lib.f.f47794b.a();
            String str4 = (skuPromotionItem == null || (sku2 = skuPromotionItem.getSku()) == null || (skuId = sku2.getSkuId()) == null) ? "" : skuId;
            if (skuPromotionItem != null && (sku = skuPromotionItem.getSku()) != null) {
                discountPrice = sku.getDiscountPrice();
            }
            fVarA.e(appCompatActivity, str4, discountPrice, null, false, linkedHashMap, new a(skuPromotionItem, traceId, str, function0, context, function1), new Function1() { // from class: com.transsion.member.promotion.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return i.g(str, skuPromotionItem, str3, traceId, str2, (String) obj);
                }
            });
        }
    }
}
