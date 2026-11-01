package com.hisavana.mintegral.holder;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.hisavana.common.base.BaseNativeViewHolder;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.utils.MediationImageLoader;
import com.hisavana.mintegral.executer.MintegralNative;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.widget.MBAdChoice;

/* JADX INFO: loaded from: classes4.dex */
public class NativeAdViewHolder extends BaseNativeViewHolder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Campaign f33341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MBMediaView f33342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MintegralNative f33343d;

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    protected View createChoicesView(Context context, TAdNativeInfo tAdNativeInfo) {
        MBAdChoice mBAdChoice = new MBAdChoice(context);
        Campaign campaign = this.f33341b;
        if (campaign != null) {
            mBAdChoice.setCampaign(campaign);
        }
        return mBAdChoice;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    protected View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        this.f33342c = new MBMediaView(context);
        if (this.f33343d.getOnMBMediaViewListenerPlus() != null) {
            this.f33342c.setOnMediaViewListener(this.f33343d.getOnMBMediaViewListenerPlus());
        }
        return this.f33342c;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    public void destroy() {
        super.destroy();
        MBMediaView mBMediaView = this.f33342c;
        if (mBMediaView != null) {
            mBMediaView.destory();
        }
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        if (tAdNativeInfo == null || tAdNativeInfo.getNativeAdWrapper() == null || tAdNativeInfo.getNativeAdWrapper().getAdImpl() == null || !(tAdNativeInfo.getNativeAdWrapper().getAdImpl() instanceof MintegralNative) || tAdNativeInfo.getNativeAdWrapper().getNativeAd() == null || !(tAdNativeInfo.getNativeAdWrapper().getNativeAd() instanceof Campaign)) {
            return null;
        }
        this.f33343d = (MintegralNative) tAdNativeInfo.getNativeAdWrapper().getAdImpl();
        this.f33341b = (Campaign) tAdNativeInfo.getNativeAdWrapper().getNativeAd();
        return null;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    public View getIconView(Context context) {
        Campaign campaign;
        if (context != null && (campaign = this.f33341b) != null && !TextUtils.isEmpty(campaign.getIconUrl())) {
            this.iconView = createIconView(context.getApplicationContext());
            MediationImageLoader.loadImage(this.f33341b.getIconUrl(), (ImageView) this.iconView);
        }
        return this.iconView;
    }

    @Override // com.hisavana.common.base.BaseNativeViewHolder
    public void setNativeAd(TAdNativeInfo tAdNativeInfo) {
        Campaign campaign;
        MBMediaView mBMediaView = this.f33342c;
        if (mBMediaView == null || (campaign = this.f33341b) == null) {
            return;
        }
        mBMediaView.setNativeAd(campaign);
    }
}
