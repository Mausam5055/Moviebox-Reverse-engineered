package com.transsion.rewardscenter.redeem;

import android.content.res.ColorStateList;
import android.view.View;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.hisavana.sdk.common.util.n0;
import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.rewardscenter.R$drawable;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.R$mipmap;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenter.utils.q;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.SkuPoint;
import com.transsion.rewardscenterapi.TopUpType;
import com.transsion.rewardscenterapi.User;
import java.math.BigDecimal;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
public final class SkuItemProvider extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final wp.a f51009e;

    public SkuItemProvider(wp.a config) {
        Intrinsics.h(config, "config");
        this.f51009e = config;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(boolean z10, SkuItemProvider skuItemProvider, e eVar, SkuPoint skuPoint, View it) {
        Intrinsics.h(it, "it");
        if (!z10) {
            return Unit.f67061a;
        }
        if (!m.f70474a.e()) {
            String string = skuItemProvider.k().getString(R$string.no_network_toast);
            Intrinsics.g(string, "getString(...)");
            p.a(false, string);
            return Unit.f67061a;
        }
        Lottery lottery = (Lottery) skuItemProvider.f51009e.c().p().f();
        if (Intrinsics.c(lottery != null ? lottery.getActivityId() : null, "0") || ((e.b) eVar).a()) {
            skuItemProvider.C(skuPoint);
        } else {
            wp.a aVar = skuItemProvider.f51009e;
            com.transsion.rewardscenter.utils.f.c(aVar, TopUpType.REDEEM, aVar.c().l());
        }
        skuItemProvider.D(((e.b) eVar).a());
        return Unit.f67061a;
    }

    private final void C(SkuPoint skuPoint) {
        String skuId = skuPoint.getSkuId();
        if (skuId == null || k.d(this.f51009e.b(), null, null, new SkuItemProvider$redeem$1$1(this, skuId, null), 3, null) == null) {
            String string = k().getString(com.transsion.rewardscenter.R$string.redeem_failed_tips);
            Intrinsics.g(string, "getString(...)");
            p.a(false, string);
            Unit unit = Unit.f67061a;
        }
    }

    private final void D(boolean z10) {
        HashMap map = new HashMap();
        map.put("has_paid", z10 ? "1" : "0");
        map.put(EventConstants.KEY_SOURCE, "sku");
        q.a("redeem_rewards", map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final e item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof e.b) {
            final SkuPoint skuPointB = ((e.b) item).b();
            helper.setText(R$id.title, skuPointB.getDescription());
            helper.setText(R$id.point, "-" + n0.a(new BigDecimal(String.valueOf(skuPointB.getPrice()))).toPlainString());
            User userW = this.f51009e.c().w();
            final boolean z10 = ((double) (userW != null ? userW.getPoint() : 0)) >= skuPointB.getPrice();
            TextView textView = (TextView) helper.getView(R$id.action);
            if (z10) {
                textView.setEnabled(true);
                textView.setBackgroundResource(R$mipmap.ic_redeem_btn_bg_orange);
                textView.setBackgroundTintList(null);
                textView.setTextColor(k().getColor(R$color.white));
            } else {
                textView.setEnabled(false);
                textView.setBackgroundResource(R$drawable.shape_r6_tint);
                textView.setBackgroundTintList(ColorStateList.valueOf(k().getColor(com.transsion.rewardscenter.R$color.redeem_disable_bg)));
                textView.setTextColor(k().getColor(R$color.white_80));
            }
            jg.c.c(textView, 0L, new Function1() { // from class: com.transsion.rewardscenter.redeem.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SkuItemProvider.B(z10, this, item, skuPointB, (View) obj);
                }
            }, 1, null);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return RedeemType.SKU.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.redeem_sku_item;
    }
}
