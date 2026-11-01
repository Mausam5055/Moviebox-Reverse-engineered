package com.transsion.rewardscenter.prize;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenter.R$layout;
import com.transsion.rewardscenter.R$mipmap;
import com.transsion.rewardscenter.ui.RewardsCenterFragment;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenter.utils.q;
import com.transsion.rewardscenterapi.DrawResult;
import java.util.HashMap;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
public final class k extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final wp.a f51004e;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51005a;

        static {
            int[] iArr = new int[PrizeButtonState.values().length];
            try {
                iArr[PrizeButtonState.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrizeButtonState.CLAIMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrizeButtonState.CLAIMING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f51005a = iArr;
        }
    }

    public k(wp.a config) {
        Intrinsics.h(config, "config");
        this.f51004e = config;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(PrizeButtonState prizeButtonState, Context context, k kVar, DrawResult drawResult, View it) {
        Intrinsics.h(it, "it");
        if (prizeButtonState == PrizeButtonState.ACTIVE) {
            if (m.f70474a.e()) {
                RewardsCenterFragment rewardsCenterFragment = (RewardsCenterFragment) kVar.f51004e.a().get();
                if (rewardsCenterFragment != null) {
                    rewardsCenterFragment.u1(drawResult);
                }
                kVar.C(drawResult);
            } else {
                String string = context.getString(R$string.no_network_toast);
                Intrinsics.g(string, "getString(...)");
                p.a(false, string);
            }
        }
        return Unit.f67061a;
    }

    private final PrizeButtonState B(DrawResult drawResult) {
        if (Intrinsics.c(drawResult.getClaimStatus(), "CLAIM_STATUS_TOP_UP")) {
            return PrizeButtonState.CLAIMING;
        }
        if (Intrinsics.c(drawResult.getClaimStatus(), "CLAIM_STATUS_UNCLAIM") && Intrinsics.c(drawResult.getNeedFill(), "LOTTERY_NEED_FILL_YES") && Intrinsics.c(drawResult.getFillStatus(), "FILL_STATUS_NO")) {
            return PrizeButtonState.ACTIVE;
        }
        return (Intrinsics.c(drawResult.getClaimStatus(), "CLAIM_STATUS_UNCLAIM") && Intrinsics.c(drawResult.getNeedFill(), "LOTTERY_NEED_FILL_NO")) ? PrizeButtonState.ACTIVE : PrizeButtonState.CLAIMED;
    }

    private final void C(DrawResult drawResult) {
        HashMap map = new HashMap();
        String prizeType = drawResult.getPrizeType();
        if (prizeType == null) {
            prizeType = "";
        }
        map.put(EventConstants.KEY_SOURCE, prizeType);
        q.a("prize_list", map);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PrizeItemType.ROW.getValue();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.prize_row_item;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, e item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        if (item instanceof e.c) {
            final DrawResult drawResultA = ((e.c) item).a();
            final Context context = helper.itemView.getContext();
            ej.f.a aVar = ej.f.f61882a;
            Intrinsics.e(context);
            aVar.m(context).g(drawResultA.getImgUrl()).d((ImageView) helper.getView(R$id.icon));
            int i11 = R$id.tv_title;
            String title = drawResultA.getTitle();
            if (title == null) {
                title = "";
            }
            helper.setText(i11, title);
            helper.setText(R$id.tv_count, "x 1");
            TextView textView = (TextView) helper.getView(R$id.btn_action);
            final PrizeButtonState prizeButtonStateB = B(drawResultA);
            int i12 = a.f51005a[prizeButtonStateB.ordinal()];
            if (i12 == 1) {
                textView.setBackgroundResource(R$mipmap.btn_claim_normal);
                textView.setText(context.getString(com.transsion.rewardscenter.R$string.prize_btn_claim));
                textView.setTextColor(context.getColor(R$color.white));
                textView.setEnabled(true);
                textView.setAlpha(1.0f);
            } else if (i12 == 2) {
                textView.setBackgroundResource(R$mipmap.btn_claim_done);
                textView.setText(context.getString(com.transsion.rewardscenter.R$string.prize_btn_claimed));
                textView.setTextColor(context.getColor(com.transsion.rewardscenter.R$color.prize_btn_claimed_text));
                textView.setEnabled(false);
                textView.setAlpha(1.0f);
            } else {
                if (i12 != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                textView.setBackgroundResource(R$mipmap.btn_claim_normal);
                textView.setText(context.getString(com.transsion.rewardscenter.R$string.prize_btn_Topping));
                textView.setTextColor(context.getColor(R$color.white));
                textView.setEnabled(false);
                textView.setAlpha(0.5f);
            }
            jg.c.c(textView, 0L, new Function1() { // from class: com.transsion.rewardscenter.prize.j
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return k.A(prizeButtonStateB, context, this, drawResultA, (View) obj);
                }
            }, 1, null);
        }
    }
}
