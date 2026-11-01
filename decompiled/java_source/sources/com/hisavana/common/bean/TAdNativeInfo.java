package com.hisavana.common.bean;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.common.bean.SSPWebRecommendInfo;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TAdNativeInfo implements ICacheAd {

    public static abstract class Image {
        public abstract boolean canUse();

        public abstract Drawable getDrawable();

        public abstract int getHeight();

        public abstract float getRatio();

        public abstract String getUrl();

        public abstract int getWidth();

        public abstract boolean isCached();

        public abstract void release();

        public abstract void setDrawable(Drawable drawable);
    }

    public abstract String getAdCallToAction();

    public abstract String getAdCreateId();

    public abstract String getAdData();

    public abstract int getAdFormat();

    public abstract String getAdId();

    public abstract String getAppInfo();

    public abstract String getBrand();

    public abstract String getDeepLink();

    public abstract String getDescription();

    public abstract String getDescription2();

    public abstract String getDisplay();

    @Override // com.hisavana.common.interfacz.ICacheAd
    public /* synthetic */ int getExpireReason() {
        return b.a(this);
    }

    public abstract int getFillSource();

    public abstract Image getIcon();

    public abstract Drawable getIconDrawable();

    public abstract List<Image> getImageList();

    public abstract double getMaxPrice();

    public abstract int getMime();

    public abstract NativeAdWrapper getNativeAdWrapper();

    public abstract String getPackageName();

    public abstract String getPkgs();

    @Override // com.hisavana.common.interfacz.ICacheAd
    public abstract String getPlacementId();

    public abstract int getPullNewestLive();

    public abstract String getRating();

    public abstract List<SSPWebRecommendInfo> getRecommendInfoList();

    public abstract String getSaleprice();

    public abstract String getSceneId();

    public abstract String getSceneToken();

    public abstract String getShowId();

    public abstract String getSocialContext();

    public abstract String getSourceSize();

    public abstract String getSponsoredTranslation();

    public abstract String getTitle();

    public abstract String getTriggerId();

    public abstract Long getTriggerTs();

    public abstract int getTtl();

    public abstract boolean isFromLocal();

    @Override // com.hisavana.common.interfacz.ICacheAd
    public abstract boolean isIconAd();

    public abstract boolean isIconValid();

    public abstract boolean isImageValid();

    public abstract boolean isMaterielValid();

    public abstract boolean isRelease();

    public abstract boolean isUseRecommend();

    public abstract void registerView(ViewGroup viewGroup, List<View> list);

    public abstract void release();

    @Override // com.hisavana.common.interfacz.ICacheAd
    public /* synthetic */ void setExpireReason(int i11) {
        b.b(this, i11);
    }

    public abstract void setFillSource(int i11);

    public abstract void setIconDrawable(Drawable drawable);

    public abstract void setNativeAdWrapper(NativeAdWrapper nativeAdWrapper);

    public abstract void setSceneId(String str);

    public abstract void setSceneToken(String str);

    public abstract void setShowId(String str);

    public abstract void setTriggerId(String str);

    public abstract void setTriggerTs(Long l11);

    public abstract void unregisterView();
}
