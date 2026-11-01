package com.transsion.home.tv.adapter;

import android.text.TextUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.tv.bean.CountryItem;
import com.transsion.home.tv.bean.ImageInfo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\nR$\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/transsion/home/tv/adapter/l;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/home/tv/bean/CountryItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/tv/bean/CountryItem;)V", "", "F", "Ljava/lang/String;", "C1", "()Ljava/lang/String;", "D1", "(Ljava/lang/String;)V", "selectedCountryCode", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class l extends BaseQuickAdapter {
    public static final int G = 8;

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private String selectedCountryCode;

    public l() {
        super(R$layout.item_tv_country, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, CountryItem item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        String countryCode = item.getCountryCode();
        boolean z10 = (countryCode == null || countryCode.length() == 0 || !Intrinsics.c(item.getCountryCode(), this.selectedCountryCode)) ? false : true;
        BLTextView bLTextView = (BLTextView) holder.getView(R$id.tvCountryName);
        String countryName = item.getCountryName();
        if (countryName == null) {
            countryName = "";
        }
        bLTextView.setText(countryName);
        bLTextView.setSelected(z10);
        holder.getView(R$id.ivSelected).setVisibility(z10 ? 0 : 8);
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.ivFlag);
        ImageInfo countryFlagImage = item.getCountryFlagImage();
        String url = countryFlagImage != null ? countryFlagImage.getUrl() : null;
        String str = url != null ? url : "";
        if (TextUtils.isEmpty(str)) {
            shapeableImageView.setImageResource(R$drawable.ic_tv_country_flag_default);
        } else {
            ej.f.f61882a.m(getContext()).g(str).l(str).i(R$drawable.ic_tv_country_flag_default).d(shapeableImageView);
        }
    }

    /* JADX INFO: renamed from: C1, reason: from getter */
    public final String getSelectedCountryCode() {
        return this.selectedCountryCode;
    }

    public final void D1(String str) {
        this.selectedCountryCode = str;
    }
}
