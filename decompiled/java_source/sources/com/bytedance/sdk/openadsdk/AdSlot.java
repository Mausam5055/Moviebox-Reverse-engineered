package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.Zq;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Map;
import org.json.JSONObject;
import w5.c;

/* JADX INFO: loaded from: classes2.dex */
public class AdSlot {
    public static final int ANCHORED_BANNER = 2;
    public static final int FIX_BANNER = 1;
    public static final int INLINE_BANNER = 3;
    public static final int TYPE_BANNER = 1;
    public static final int TYPE_CACHED_SPLASH = 4;
    public static final int TYPE_FEED = 5;
    public static final int TYPE_FULL_SCREEN_VIDEO = 8;
    public static final int TYPE_INTERACTION_AD = 2;
    public static final int TYPE_OPEN_AD = 3;
    public static final int TYPE_REWARD_VIDEO = 7;
    private String Dq;
    private float EjP;
    private boolean Fmk;
    private float HiB;
    private boolean Jcg;
    private String RiZ;
    private String Sj;
    private String TEQ;
    private int TKC;
    private String TzV;
    private String Ym;
    private String Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f20930aa;
    private String dNu;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private int f20931dx;

    /* JADX INFO: renamed from: ib, reason: collision with root package name */
    private int f20932ib;
    private int kF;
    private int sP;
    private int sU;
    private boolean sef;
    private int uA;
    private boolean uP;
    private String uvD;
    private int vS;
    private Map<String, Object> wE;
    private int zR;

    public static class Builder {
        private String Dq;
        private boolean Fmk;
        private String Sj;
        private int TEQ;
        private String TzV;
        private float Ym;
        private String Zq;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private float f20933aa;
        private String dNu;

        /* JADX INFO: renamed from: dx, reason: collision with root package name */
        private int f20934dx;
        private String sef;
        private String uvD;
        private int sP = 640;
        private int TKC = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        private final boolean EjP = true;
        private int HiB = 1;
        private final String vS = "";
        private final int Jcg = 0;
        private String uA = "defaultUser";
        private boolean RiZ = true;
        private Map<String, Object> sU = null;
        private int zR = 1;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.Sj = this.Sj;
            adSlot.vS = this.HiB;
            adSlot.Jcg = true;
            adSlot.sP = this.sP;
            adSlot.TKC = this.TKC;
            float f11 = this.Ym;
            if (f11 <= 0.0f) {
                adSlot.EjP = this.sP;
                adSlot.HiB = this.TKC;
            } else {
                adSlot.EjP = f11;
                adSlot.HiB = this.f20933aa;
            }
            adSlot.Dq = "";
            adSlot.uA = 0;
            adSlot.TEQ = this.Dq;
            adSlot.Ym = this.uA;
            adSlot.f20930aa = this.TEQ;
            adSlot.Fmk = this.RiZ;
            adSlot.sef = this.Fmk;
            adSlot.Zq = this.sef;
            adSlot.uvD = this.Zq;
            adSlot.dNu = this.uvD;
            adSlot.TzV = this.dNu;
            adSlot.RiZ = this.TzV;
            adSlot.wE = this.sU;
            adSlot.f20932ib = this.f20934dx;
            adSlot.kF = this.zR;
            return adSlot;
        }

        public Builder isExpressAd(boolean z10) {
            this.Fmk = z10;
            return this;
        }

        public Builder setAdCount(int i11) {
            if (i11 <= 0) {
                i11 = 1;
            }
            if (i11 > 20) {
                i11 = 20;
            }
            this.HiB = i11;
            return this;
        }

        public Builder setAdId(String str) {
            this.Zq = str;
            return this;
        }

        public Builder setBannerType(int i11) {
            this.zR = i11;
            return this;
        }

        public Builder setCodeId(String str) {
            this.Sj = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.uvD = str;
            return this;
        }

        public Builder setDurationSlotType(int i11) {
            this.f20934dx = i11;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f11, float f12) {
            this.Ym = f11;
            this.f20933aa = f12;
            return this;
        }

        public Builder setExt(String str) {
            this.dNu = str;
            return this;
        }

        public Builder setImageAcceptedSize(int i11, int i12) {
            this.sP = i11;
            this.TKC = i12;
            return this;
        }

        public Builder setIsAutoPlay(boolean z10) {
            this.RiZ = z10;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.Dq = str;
            return this;
        }

        public Builder setNativeAdType(int i11) {
            this.TEQ = i11;
            return this;
        }

        public Builder setRequestExtraMap(Map<String, Object> map) {
            this.sU = map;
            return this;
        }

        @Deprecated
        public Builder setRewardAmount(int i11) {
            return this;
        }

        @Deprecated
        public Builder setRewardName(String str) {
            return this;
        }

        @Deprecated
        public Builder setSupportDeepLink(boolean z10) {
            return this;
        }

        public Builder setUserData(String str) {
            this.TzV = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.uA = str;
            return this;
        }

        public Builder withBid(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            if (Zq.EjP()) {
                c.a(str);
            }
            this.sef = str;
            return this;
        }
    }

    private AdSlot() {
        this.Fmk = true;
        this.sef = false;
        this.sU = 0;
        this.f20931dx = 0;
        this.zR = 0;
        this.kF = 1;
    }

    public static int getPosition(int i11) {
        if (i11 == 1) {
            return 2;
        }
        if (i11 != 2) {
            return (i11 == 3 || i11 == 4 || i11 == 7 || i11 == 8) ? 5 : 3;
        }
        return 4;
    }

    public static AdSlot getSlot(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Builder builder = new Builder();
        try {
            int iOptInt = jSONObject.optInt("mImgAcceptedWidth", 640);
            int iOptInt2 = jSONObject.optInt("mImgAcceptedHeight", Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE);
            double dOptDouble = jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
            double dOptDouble2 = jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
            builder.setCodeId(jSONObject.optString("mCodeId", null));
            builder.setAdCount(jSONObject.optInt("mAdCount", 1));
            builder.setIsAutoPlay(jSONObject.optBoolean("mIsAutoPlay"));
            builder.setImageAcceptedSize(iOptInt, iOptInt2);
            builder.setExpressViewAcceptedSize(Double.valueOf(dOptDouble).floatValue(), Double.valueOf(dOptDouble2).floatValue());
            builder.setSupportDeepLink(jSONObject.optBoolean("mSupportDeepLink", false));
            builder.setRewardName(jSONObject.optString("mRewardName", null));
            builder.setRewardAmount(jSONObject.optInt("mRewardAmount"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra", null));
            builder.setUserID(jSONObject.optString("mUserID", null));
            builder.setNativeAdType(jSONObject.optInt("mNativeAdType"));
            builder.isExpressAd(jSONObject.optBoolean("mIsExpressAd"));
            builder.withBid(jSONObject.optString("mBidAdm"));
            builder.setAdId(jSONObject.optString("mAdId"));
            builder.setCreativeId(jSONObject.optString("mCreativeId"));
            builder.setExt(jSONObject.optString("mExt"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra"));
            builder.setBannerType(jSONObject.optInt("mBannerType"));
        } catch (Exception unused) {
        }
        AdSlot adSlotBuild = builder.build();
        adSlotBuild.setDurationSlotType(jSONObject.optInt("mDurationSlotType"));
        return adSlotBuild;
    }

    public int getAdCount() {
        return this.vS;
    }

    public String getAdId() {
        return this.uvD;
    }

    public int getBannerType() {
        return this.kF;
    }

    public String getBidAdm() {
        return this.Zq;
    }

    public String getCodeId() {
        return this.Sj;
    }

    public String getCreativeId() {
        return this.dNu;
    }

    public int getDurationSlotType() {
        return this.f20932ib;
    }

    public float getExpressViewAcceptedHeight() {
        return this.HiB;
    }

    public float getExpressViewAcceptedWidth() {
        return this.EjP;
    }

    public String getExt() {
        return this.TzV;
    }

    public int getImgAcceptedHeight() {
        return this.TKC;
    }

    public int getImgAcceptedWidth() {
        return this.sP;
    }

    public int getIsRotateBanner() {
        return this.sU;
    }

    public String getMediaExtra() {
        return this.TEQ;
    }

    public int getNativeAdType() {
        return this.f20930aa;
    }

    @Nullable
    public Map<String, Object> getRequestExtraMap() {
        return this.wE;
    }

    @Deprecated
    public int getRewardAmount() {
        return this.uA;
    }

    @Deprecated
    public String getRewardName() {
        return this.Dq;
    }

    public int getRotateOrder() {
        return this.zR;
    }

    public int getRotateTime() {
        return this.f20931dx;
    }

    public String getUserData() {
        return this.RiZ;
    }

    public String getUserID() {
        return this.Ym;
    }

    public boolean isAutoPlay() {
        return this.Fmk;
    }

    public boolean isExpressAd() {
        return this.sef;
    }

    public boolean isPreload() {
        return this.uP;
    }

    public boolean isSupportDeepLink() {
        return this.Jcg;
    }

    public void setAdCount(int i11) {
        this.vS = i11;
    }

    public void setDurationSlotType(int i11) {
        this.f20932ib = i11;
    }

    public void setExpressViewAccepted(float f11, float f12) {
        this.EjP = f11;
        this.HiB = f12;
    }

    public void setIsRotateBanner(int i11) {
        this.sU = i11;
    }

    public void setNativeAdType(int i11) {
        this.f20930aa = i11;
    }

    public void setPreload(boolean z10) {
        this.uP = z10;
    }

    public void setRotateOrder(int i11) {
        this.zR = i11;
    }

    public void setRotateTime(int i11) {
        this.f20931dx = i11;
    }

    public void setUserData(String str) {
        this.RiZ = str;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.Sj);
            jSONObject.put("mAdCount", this.vS);
            jSONObject.put("mIsAutoPlay", this.Fmk);
            jSONObject.put("mImgAcceptedWidth", this.sP);
            jSONObject.put("mImgAcceptedHeight", this.TKC);
            jSONObject.put("mExpressViewAcceptedWidth", this.EjP);
            jSONObject.put("mExpressViewAcceptedHeight", this.HiB);
            jSONObject.put("mSupportDeepLink", this.Jcg);
            jSONObject.put("mRewardName", this.Dq);
            jSONObject.put("mRewardAmount", this.uA);
            jSONObject.put("mMediaExtra", this.TEQ);
            jSONObject.put("mUserID", this.Ym);
            jSONObject.put("mNativeAdType", this.f20930aa);
            jSONObject.put("mIsExpressAd", this.sef);
            jSONObject.put("mAdId", this.uvD);
            jSONObject.put("mCreativeId", this.dNu);
            jSONObject.put("mExt", this.TzV);
            jSONObject.put("mBidAdm", this.Zq);
            jSONObject.put("mUserData", this.RiZ);
            jSONObject.put("mDurationSlotType", this.f20932ib);
            jSONObject.put("mBannerType", this.kF);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return super.toString();
    }
}
