package com.cloud.hisavana.sdk.common.bean;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.ad.template.TemplateRenderEnum;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.q3;
import com.cloud.hisavana.sdk.u3;
import com.cloud.hisavana.sdk.z3;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class TaNativeInfo {
    private String acClickUrl;
    private String acImageUrl;
    private AdsDTO adItem;
    private String adSeatType;
    private int adType;
    private String advSeatType;
    private String appInfo;
    private double bidPrice;
    private String buttonText;
    private boolean clicked;
    private int codeSeatType;
    private String deeplinkUrl;
    private String descriptionText;
    private AdImage iconImage;
    private AdImage image;
    private boolean isACReady;
    private boolean isOfflineAd;
    private boolean isRegister;
    private boolean isTmplateAccessMode;
    private String materialStyle;
    private z3 nativeBridge;
    private String price;
    private String rating;
    private String requestId;
    private int sdkTypeSetStoreMark;
    private double secondPrice;
    private String sequenceId;
    private String sourceSize;
    private AdImage store;
    private int storeMarkTextColor;
    private int storeMarkTextSize;
    private String title;
    private String uuid;
    private String ver;
    private int hisavanaSource = 1;
    private boolean isAdShowed = false;
    private boolean isRewarded = false;
    private List<SSPWebRecommendInfo> recommendInfos = null;
    private boolean isUseRecommend = false;

    public void destroy() {
        z3 z3Var = this.nativeBridge;
        if (z3Var != null) {
            z3Var.a(this);
            this.nativeBridge = null;
        }
        h7.a.a(this);
    }

    public String getAcClickUrl() {
        String str = this.acClickUrl;
        return str == null ? "" : str;
    }

    public String getAcImageUrl() {
        return this.acImageUrl;
    }

    public String getAdCreateId() {
        AdsDTO adsDTO = this.adItem;
        return adsDTO == null ? "" : adsDTO.getAdCreativeId();
    }

    public int getAdFormat() {
        q3 q3VarP;
        try {
            z3 nativeBridge = getNativeBridge();
            if (nativeBridge == null || !(nativeBridge instanceof u3) || (q3VarP = ((u3) nativeBridge).p()) == null) {
                return 0;
            }
            return q3VarP.f().getAdFormat().intValue();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public AdsDTO getAdItem() {
        return this.adItem;
    }

    public String getAdSeatType() {
        AdsDTO adsDTO = this.adItem;
        return adsDTO == null ? "" : adsDTO.getAdSeatType();
    }

    public int getAdType() {
        return this.adType;
    }

    public String getAdvSeatType() {
        String str = this.advSeatType;
        return str == null ? "" : str;
    }

    public String getAppInfo() {
        return this.appInfo;
    }

    public double getBidPrice() {
        return this.bidPrice;
    }

    public String getButtonText() {
        String str = this.buttonText;
        return str == null ? "" : str;
    }

    public int getCodeSeatType() {
        return this.codeSeatType;
    }

    public String getCtatext() {
        return this.buttonText;
    }

    public String getDeeplinkUrl() {
        return this.deeplinkUrl;
    }

    public String getDescription() {
        return this.descriptionText;
    }

    public String getDescriptionText() {
        String str = this.descriptionText;
        return str == null ? "" : str;
    }

    public int getHisavanaSource() {
        return this.hisavanaSource;
    }

    public AdImage getIconImage() {
        return this.iconImage;
    }

    public AdImage getImage() {
        return this.image;
    }

    public String getMaterialStyle() {
        String str = this.materialStyle;
        return str == null ? "" : str;
    }

    public z3 getNativeBridge() {
        return this.nativeBridge;
    }

    public String getPackageName() {
        AdsDTO adsDTO = this.adItem;
        if (adsDTO == null) {
            return null;
        }
        if (!TextUtils.isEmpty(adsDTO.getPackageName())) {
            return this.adItem.getPackageName();
        }
        if (TextUtils.isEmpty(this.adItem.getPsPackageName())) {
            return null;
        }
        return this.adItem.getPsPackageName();
    }

    public String getPrice() {
        return this.price;
    }

    public int getPullNewestLive() {
        AdsDTO adsDTO = this.adItem;
        if (adsDTO == null) {
            return 0;
        }
        return adsDTO.getPullNewestLive().intValue();
    }

    public String getRating() {
        return this.rating;
    }

    public List<SSPWebRecommendInfo> getRecommendInfos() {
        return this.recommendInfos;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public int getSdkTypeSetStoreMark() {
        return this.sdkTypeSetStoreMark;
    }

    public double getSecondPrice() {
        return this.secondPrice;
    }

    public String getSequenceId() {
        return this.sequenceId;
    }

    public String getSourceSize() {
        return this.sourceSize;
    }

    public AdImage getStore() {
        return this.store;
    }

    public int getStoreMarkTextColor() {
        return this.storeMarkTextColor;
    }

    public int getStoreMarkTextSize() {
        return this.storeMarkTextSize;
    }

    @Nullable
    public TemplateRenderEnum getTemplateEnum() {
        if (!this.isTmplateAccessMode || TextUtils.isEmpty(this.materialStyle)) {
            return null;
        }
        return TemplateRenderEnum.findStrategyByCode(this.materialStyle);
    }

    public String getTitle() {
        return this.title;
    }

    public String getUuid() {
        return this.uuid;
    }

    public String getVer() {
        return this.ver;
    }

    public boolean isACReady() {
        return this.isACReady;
    }

    public boolean isAdShowed() {
        return this.isAdShowed;
    }

    public boolean isClicked() {
        return this.clicked;
    }

    public boolean isDefaultAd() {
        AdsDTO adsDTO = this.adItem;
        return adsDTO != null && adsDTO.getSource() == 4;
    }

    public boolean isMatchVulgarBrand() {
        AdsDTO adsDTO = this.adItem;
        return adsDTO != null && adsDTO.isMatchVulgarBrand();
    }

    public boolean isMaterialStyleValid() {
        return (TextUtils.isEmpty(this.materialStyle) || TemplateRenderEnum.findStrategyByCode(this.materialStyle) == null || !this.isTmplateAccessMode) ? false : true;
    }

    public boolean isMediaCached() {
        AdImage adImage = this.image;
        return adImage != null && adImage.isCached();
    }

    public boolean isOfflineAd() {
        return this.isOfflineAd;
    }

    public boolean isRegister() {
        return this.isRegister;
    }

    public boolean isRewarded() {
        return this.isRewarded;
    }

    public boolean isTmplateAccessMode() {
        return this.isTmplateAccessMode;
    }

    public boolean isUseRecommend() {
        return this.isUseRecommend;
    }

    public void setACReady(boolean z10) {
        this.isACReady = z10;
    }

    public void setAcClickUrl(String str) {
        this.acClickUrl = str;
    }

    public void setAcImageUrl(String str) {
        this.acImageUrl = str;
    }

    public void setAdItem(AdsDTO adsDTO) {
        this.adItem = adsDTO;
    }

    public void setAdSeatType(String str) {
        this.adSeatType = str;
    }

    public void setAdShowed(boolean z10) {
        this.isAdShowed = z10;
    }

    public void setAdType(int i11) {
        this.adType = i11;
    }

    public void setAdvSeatType(String str) {
        this.advSeatType = str;
    }

    public void setAppInfo(String str) {
        this.appInfo = str;
    }

    public void setBidPrice(double d11) {
        this.bidPrice = d11;
    }

    public void setButtonText(String str) {
        this.buttonText = str;
    }

    public void setClicked(boolean z10) {
        this.clicked = z10;
    }

    public void setCodeSeatType(int i11) {
        this.codeSeatType = i11;
    }

    public void setCtatext(String str) {
        this.buttonText = str;
    }

    public void setDeeplinkUrl(String str) {
        this.deeplinkUrl = str;
    }

    public void setDescription(String str) {
        this.descriptionText = str;
    }

    public void setDescriptionText(String str) {
        this.descriptionText = str;
    }

    public void setHisavanaSource(int i11) {
        this.hisavanaSource = i11;
    }

    public void setIconImage(AdImage adImage) {
        this.iconImage = adImage;
    }

    public void setImage(AdImage adImage) {
        this.image = adImage;
    }

    public void setMaterialStyle(String str) {
        this.materialStyle = str;
    }

    public void setNativeBridge(z3 z3Var) {
        this.nativeBridge = z3Var;
    }

    public void setOfflineAd(boolean z10) {
        this.isOfflineAd = z10;
    }

    public void setPrice(String str) {
        this.price = str;
    }

    public void setRating(String str) {
        this.rating = str;
    }

    public void setRecommendInfos(List<SSPWebRecommendInfo> list) {
        this.recommendInfos = list;
    }

    public void setRegister(boolean z10) {
        this.isRegister = z10;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setRewarded(boolean z10) {
        this.isRewarded = z10;
    }

    public void setSdkTypeSetStoreMark(int i11) {
        this.sdkTypeSetStoreMark = i11;
    }

    public void setSecondPrice(double d11) {
        this.secondPrice = d11;
    }

    public void setSequenceId(String str) {
        this.sequenceId = str;
    }

    public void setSourceSize(String str) {
        this.sourceSize = str;
    }

    public void setStore(AdImage adImage) {
        this.store = adImage;
    }

    public void setStoreMarkTextColor(int i11) {
        this.storeMarkTextColor = i11;
    }

    public void setStoreMarkTextSize(int i11) {
        this.storeMarkTextSize = i11;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTmplateAccessMode(boolean z10) {
        this.isTmplateAccessMode = z10;
    }

    public void setUseRecommend(boolean z10) {
        this.isUseRecommend = z10;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }
}
