package com.transsion.rewardscenter.redeem;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.rewardscenter.R$drawable;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.R$mipmap;
import com.transsion.rewardscenter.ui.RewardsCenterFragment;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenter.utils.q;
import com.transsion.rewardscenterapi.LotteryPrize;
import com.transsion.rewardscenterapi.TopUpType;
import com.transsion.rewardscenterapi.User;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
public final class LotteryItemProvider extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final wp.a f51006e;

    public LotteryItemProvider(wp.a config) {
        Intrinsics.h(config, "config");
        this.f51006e = config;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(boolean z10, LotteryItemProvider lotteryItemProvider, e eVar, LotteryPrize lotteryPrize, View it) {
        Intrinsics.h(it, "it");
        if (!z10) {
            return Unit.f67061a;
        }
        if (!m.f70474a.e()) {
            String string = lotteryItemProvider.k().getString(R$string.no_network_toast);
            Intrinsics.g(string, "getString(...)");
            p.a(false, string);
            return Unit.f67061a;
        }
        e.a aVar = (e.a) eVar;
        if (aVar.a()) {
            RewardsCenterFragment rewardsCenterFragment = (RewardsCenterFragment) lotteryItemProvider.f51006e.a().get();
            if (rewardsCenterFragment != null) {
                rewardsCenterFragment.showLoading();
            }
            String activityId = lotteryPrize.getActivityId();
            if (activityId == null || k.d(lotteryItemProvider.f51006e.b(), null, null, new LotteryItemProvider$convert$1$1$1(activityId, lotteryItemProvider, null), 3, null) == null) {
                lotteryItemProvider.f51006e.c().o().n(Boolean.FALSE);
                String string2 = lotteryItemProvider.k().getString(com.transsion.rewardscenter.R$string.redeem_failed_tips);
                Intrinsics.g(string2, "getString(...)");
                p.a(false, string2);
                Unit unit = Unit.f67061a;
            }
        } else {
            wp.a aVar2 = lotteryItemProvider.f51006e;
            com.transsion.rewardscenter.utils.f.c(aVar2, TopUpType.REDEEM, aVar2.c().l());
            Unit unit2 = Unit.f67061a;
        }
        lotteryItemProvider.C(aVar.a());
        return Unit.f67061a;
    }

    private final void C(boolean z10) {
        HashMap map = new HashMap();
        map.put("has_paid", z10 ? "1" : "0");
        map.put(EventConstants.KEY_SOURCE, "lottery");
        q.a("redeem_rewards", map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final e item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof e.a) {
            e.a aVar = (e.a) item;
            final LotteryPrize lotteryPrizeB = aVar.b();
            helper.setText(R$id.title, lotteryPrizeB.getPrizeName());
            helper.setText(R$id.point, "-" + lotteryPrizeB.getPointCost());
            ImageView imageView = (ImageView) helper.getView(R$id.icon);
            ej.f.a aVar2 = ej.f.f61882a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar2.m(context).g(aVar.b().getPrizeUrl()).i(R$mipmap.ic_redeem_lottery).d(imageView);
            User userW = this.f51006e.c().w();
            final boolean z10 = (userW != null ? userW.getPoint() : 0) >= lotteryPrizeB.getPointCost();
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
            jg.c.c(textView, 0L, new Function1() { // from class: com.transsion.rewardscenter.redeem.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LotteryItemProvider.B(z10, this, item, lotteryPrizeB, (View) obj);
                }
            }, 1, null);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return RedeemType.LOTTERY.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.redeem_lottery_item;
    }
}
