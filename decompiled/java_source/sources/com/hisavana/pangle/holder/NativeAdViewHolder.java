package com.hisavana.pangle.holder;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.MediationImageLoader;

/* JADX INFO: loaded from: classes4.dex */
public class NativeAdViewHolder extends BaseNativeViewHolder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PAGNativeAdData f33386b;

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    protected View createChoicesView(Context context, TAdNativeInfo tAdNativeInfo) {
        PAGNativeAdData pAGNativeAdData = this.f33386b;
        if (pAGNativeAdData != null) {
            return pAGNativeAdData.getAdLogoView();
        }
        return null;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    protected View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        PAGNativeAdData pAGNativeAdData = this.f33386b;
        if (pAGNativeAdData != null) {
            return pAGNativeAdData.getMediaView();
        }
        return null;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        if (tAdNativeInfo == null || tAdNativeInfo.getNativeAdWrapper() == null || tAdNativeInfo.getNativeAdWrapper().getNativeAd() == null || !(tAdNativeInfo.getNativeAdWrapper().getNativeAd() instanceof PAGNativeAd)) {
            return null;
        }
        this.f33386b = ((PAGNativeAd) tAdNativeInfo.getNativeAdWrapper().getNativeAd()).getNativeAdData();
        return null;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    public View getIconView(Context context) {
        PAGNativeAdData pAGNativeAdData;
        if (context != null && (pAGNativeAdData = this.f33386b) != null && pAGNativeAdData.getIcon() != null && !TextUtils.isEmpty(this.f33386b.getIcon().getImageUrl())) {
            this.iconView = createIconView(context.getApplicationContext());
            MediationImageLoader.loadImage(this.f33386b.getIcon().getImageUrl(), (ImageView) this.iconView);
        }
        return this.iconView;
    }
}
