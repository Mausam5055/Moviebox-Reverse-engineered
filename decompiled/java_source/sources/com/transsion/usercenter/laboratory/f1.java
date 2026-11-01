package com.transsion.usercenter.laboratory;

import android.widget.LinearLayout;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/usercenter/laboratory/f1;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/usercenter/laboratory/g1;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/laboratory/g1;)V", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class f1 extends BaseQuickAdapter {
    public f1() {
        super(R$layout.item_national_information_layout, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, g1 item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        LinearLayout linearLayout = (LinearLayout) holder.getView(R$id.llRoot);
        if (item.b()) {
            linearLayout.setBackgroundResource(R$color.brand_trans_20);
        } else {
            linearLayout.setBackgroundResource(R$color.black_10);
        }
        holder.setText(R$id.tvCountry, "Country : " + item.a().getCountry());
        holder.setText(R$id.tvMcc, "Mcc : " + item.a().getMcc());
        holder.setText(R$id.tvIso, "Iso : " + item.a().getIso());
        holder.setText(R$id.tvCountryCode, "CountryCode : " + item.a().getCountryCode());
    }
}
