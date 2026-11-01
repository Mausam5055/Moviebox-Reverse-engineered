package com.hisavana.common.base;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.common.bean.AdActiveInfo;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.hisavana.sdk.manager.b;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.AdNativeInfo;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.interfacz.TAdditionalListener;
import com.hisavana.common.interfacz.WrapTAdAllianceListener;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.manager.RequestingAdManager;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.MediaLogUtil;
import com.hisavana.common.utils.RunTimer;
import i7.c;
import j7.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseAd implements Iad {
    private int adSource;
    private TAdditionalListener additionalListener;
    private volatile int expireReason;
    protected boolean isContainVulgarContent;
    protected boolean isOfflineAd;
    private boolean isPreload;
    protected String mAdUnit;
    protected WeakReference<Context> mContext;
    protected boolean mCurrActivityFullscreen;
    protected Map<String, Object> mExtInfo;
    protected String mGameName;
    protected String mGameScene;
    private long mImpressionTime;
    private int mLoadStatus;
    private long mLoadedTime;
    protected final Network mNetwork;
    private double maxPrice;
    private String mediatorSourceName;
    private String mediatorSourceUnitId;
    private long requestTime;
    protected int requestType;
    protected RunTimer runTimer;
    private String sceneId;
    private String sceneToken;
    public double secondPrice;
    protected long startTime;
    private int ttl;
    private boolean isTimeOut = false;
    private int supportHisavanaFlag = 0;
    protected int mAdCount = 1;
    private final String TAG = "BaseAd";
    private double price = 0.0d;
    protected boolean isLoaded = false;
    protected final List<WrapTAdAllianceListener> mListenerList = new CopyOnWriteArrayList();
    private int mRequestRound = -1;
    public final Bundle mBundle = new Bundle();
    protected String mRequestId = null;
    protected String mTriggerId = null;
    protected String mShowId = null;
    private boolean isDestroyed = false;
    protected RunTimer.TimeOutCallback timeOutCallback = new RunTimer.TimeOutCallback() { // from class: com.hisavana.common.base.BaseAd.1
        @Override // com.hisavana.common.utils.RunTimer.TimeOutCallback
        public void isTimeOut() {
            AdLogUtil.Log().d("BaseAd", "Load ad is time out" + BaseAd.this.getLogString());
            BaseAd.this.onTimeOut();
        }
    };

    public BaseAd(Context context, Network network) {
        this.mContext = new WeakReference<>(context);
        Preconditions.b(network);
        this.mNetwork = network;
    }

    private void adFailedToLoadTemp(TAdErrorCode tAdErrorCode) {
        RequestingAdManager.getInstance().removeRequest(this);
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Ad request has been destroyed or loaded,isLoaded = ");
        sb2.append(this.isLoaded);
        sb2.append(",isDestroyed = ");
        sb2.append(this.isDestroyed);
        sb2.append("( triggerId is ");
        sb2.append(this.mTriggerId);
        sb2.append(", code seat id is ");
        Network network = this.mNetwork;
        sb2.append(network == null ? "" : network.getCodeSeatId());
        sb2.append(" )");
        adLogUtilLog.d("BaseAd", sb2.toString());
        if (this.isLoaded) {
            return;
        }
        this.isLoaded = true;
        Bundle bundle = new Bundle();
        int errorCode = tAdErrorCode != null ? tAdErrorCode.getErrorCode() : 30003;
        bundle.putInt("error_code", errorCode != 0 ? errorCode : 30003);
        bundle.putString(TrackingKey.ERROR_MESSAGE, tAdErrorCode == null ? "null" : TAdErrorCode.simpleErrorMessage(tAdErrorCode.getErrorMessage()));
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        adReturnTracking(bundle);
        errorCallBack(tAdErrorCode);
        if (supportTimer()) {
            stopTimer();
        }
        destroyAd();
    }

    private void adLoadedTemp() {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Ad request has been destroyed or loaded,isLoaded = ");
        sb2.append(this.isLoaded);
        sb2.append(",isDestroyed = ");
        sb2.append(this.isDestroyed);
        sb2.append("( triggerId is ");
        sb2.append(this.mTriggerId);
        sb2.append(", code seat id is ");
        Network network = this.mNetwork;
        sb2.append(network == null ? "" : network.getCodeSeatId());
        sb2.append(" )");
        adLogUtilLog.d("BaseAd", sb2.toString());
        RequestingAdManager.getInstance().removeRequest(this);
        if (this.isLoaded) {
            return;
        }
        if (this.mNetwork != null) {
            MediaLogUtil.d("BaseAd", "loadSuccess adSource " + this.mNetwork.getSource() + " id " + this.mNetwork.getCodeSeatId() + " " + getLogString());
        }
        ArrayList arrayList = new ArrayList(this.mListenerList.size());
        arrayList.addAll(this.mListenerList);
        addDataToAdCache(null);
        Bundle bundle = new Bundle();
        bundle.putInt("error_code", 0);
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        adReturnTracking(bundle);
        this.isLoaded = true;
        this.mLoadedTime = System.currentTimeMillis();
        loadedCallBack(arrayList);
        if (supportTimer()) {
            stopTimer();
        }
    }

    private void adLoadedTemp(List<TAdNativeInfo> list) {
        AdLogUtil adLogUtilLog = AdLogUtil.Log();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Ad request has been destroyed or loaded,isLoaded = ");
        sb2.append(this.isLoaded);
        sb2.append(",isDestroyed = ");
        sb2.append(this.isDestroyed);
        sb2.append("( triggerId is ");
        sb2.append(this.mTriggerId);
        sb2.append(", code seat id is ");
        Network network = this.mNetwork;
        sb2.append(network == null ? "" : network.getCodeSeatId());
        sb2.append(" )");
        adLogUtilLog.d("BaseAd", sb2.toString());
        RequestingAdManager.getInstance().removeRequest(this);
        if (this.isLoaded) {
            return;
        }
        if (this.mNetwork != null) {
            MediaLogUtil.d("BaseAd", "loadSuccess adSource " + this.mNetwork.getSource() + " id " + this.mNetwork.getCodeSeatId() + " " + getLogString());
        }
        ArrayList arrayList = new ArrayList(this.mListenerList.size());
        arrayList.addAll(this.mListenerList);
        addDataToAdCache(list);
        Bundle bundle = new Bundle();
        bundle.putInt("error_code", 0);
        if (list != null && list.size() > 0) {
            TAdNativeInfo tAdNativeInfo = list.get(0);
            if (tAdNativeInfo.getEcpmPrice() > 0.0d) {
                this.price = tAdNativeInfo.getEcpmPrice();
            }
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        }
        adReturnTracking(bundle);
        this.isLoaded = true;
        this.mLoadedTime = System.currentTimeMillis();
        loadedCallBack(arrayList, list);
        if (supportTimer()) {
            stopTimer();
        }
    }

    private void addDataToAdCache(List<TAdNativeInfo> list) {
        double ecpmPrice;
        AdCache cache = AdCacheManager.getCache(getAdType());
        if (cache == null) {
            return;
        }
        if (getAdType() != 6 && this.adSource == 0 && b.f22711a.b() == 1) {
            ICacheAd adBySourceAndUnitID = cache.getAdBySourceAndUnitID(this.mAdUnit, this.adSource, this.isContainVulgarContent);
            double ecpmPrice2 = adBySourceAndUnitID == null ? -1.0d : adBySourceAndUnitID.getEcpmPrice();
            if (list == null) {
                ecpmPrice = this.price;
            } else {
                ecpmPrice = list.isEmpty() ? 0.0d : list.get(0).getEcpmPrice();
            }
            if (ecpmPrice2 >= ecpmPrice) {
                return;
            }
        }
        if (list == null) {
            cache.addCache(this.mAdUnit, this);
        } else {
            cache.addCaches(this.mAdUnit, list);
        }
    }

    private void addToContextParam(String str, Object obj) {
        if (obj == null) {
            return;
        }
        if (obj instanceof Integer) {
            this.mBundle.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof String) {
            this.mBundle.putString(str, (String) obj);
        } else if (obj instanceof Long) {
            this.mBundle.putLong(str, ((Long) obj).longValue());
        }
    }

    private void appendContextParam(Bundle bundle) {
        bundle.putString(TrackingKey.TRIGGER_ID, this.mBundle.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.mBundle.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt("ad_type", this.mBundle.getInt("ad_type"));
        bundle.putString(TrackingKey.CLD_APP_ID, this.mBundle.getString(TrackingKey.CLD_APP_ID));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putInt(TrackingKey.PLATFORM, this.mBundle.getInt(TrackingKey.PLATFORM));
        bundle.putString("app_id", this.mBundle.getString("app_id"));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putDouble(TrackingKey.BIDDING_PRICE, this.mBundle.getDouble(TrackingKey.BIDDING_PRICE));
        bundle.putInt(TrackingKey.PRIORITY, this.mBundle.getInt(TrackingKey.PRIORITY));
        bundle.putInt(TrackingKey.AD_COUNT, this.mBundle.getInt(TrackingKey.AD_COUNT));
        bundle.putInt(TrackingKey.IS_RETREATAD, this.mBundle.getInt(TrackingKey.IS_RETREATAD));
        bundle.putInt(TrackingKey.IS_DEFAULT_AD, 0);
        bundle.putLong(TrackingKey.REQUEST_TS, this.mBundle.getLong(TrackingKey.REQUEST_TS));
        bundle.putInt(TrackingKey.REQUEST_TIME, this.mBundle.getInt(TrackingKey.REQUEST_TIME));
        bundle.putString(TrackingKey.REQUEST_ID, this.mBundle.getString(TrackingKey.REQUEST_ID));
        bundle.putLong(TrackingKey.RETURN_TS, this.mBundle.getLong(TrackingKey.RETURN_TS));
        bundle.putInt(TrackingKey.RETURN_TIME, this.mBundle.getInt(TrackingKey.RETURN_TIME));
        bundle.putInt(TrackingKey.REQUEST_TYPE, this.mBundle.getInt(TrackingKey.REQUEST_TYPE));
        bundle.putInt(TrackingKey.BIDDING_TYPE, this.mBundle.getInt(TrackingKey.BIDDING_TYPE));
    }

    private void errorCallBack(TAdErrorCode tAdErrorCode) {
        for (WrapTAdAllianceListener wrapTAdAllianceListener : this.mListenerList) {
            if (wrapTAdAllianceListener != null) {
                wrapTAdAllianceListener.onError(tAdErrorCode);
            }
        }
    }

    private AdditionalInfo getBaseAdditionalInfo() {
        AdditionalInfo additionalInfo = new AdditionalInfo();
        additionalInfo.setPlacementId(this.mAdUnit);
        additionalInfo.setMcc(c.d());
        additionalInfo.setTriggerId(this.mBundle.getString(TrackingKey.TRIGGER_ID));
        additionalInfo.setTrafficGroupId(this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        additionalInfo.setExperimentGroupId(this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        additionalInfo.setSdkVersion(c.l());
        additionalInfo.setCollapsibleBanner(isCollapsible());
        return additionalInfo;
    }

    private double getBiddingPrice() {
        Network network = this.mNetwork;
        if (network == null) {
            return 0.0d;
        }
        int networkType = AdUtil.getNetworkType(network);
        if (networkType != 1) {
            return networkType != 3 ? this.mNetwork.getTempPrice() : this.mNetwork.getPrice().doubleValue();
        }
        return this.price;
    }

    private AdditionalInfo getShowAdditionalInfo(AdNativeInfo adNativeInfo) {
        AdditionalInfo baseAdditionalInfo = getBaseAdditionalInfo();
        Network network = this.mNetwork;
        if (network != null) {
            baseAdditionalInfo.setSource(network.getSource());
            baseAdditionalInfo.setApplicationId(this.mNetwork.getApplicationId());
            baseAdditionalInfo.setApplicationKey(this.mNetwork.getApplicationKey());
            baseAdditionalInfo.setCodeSeatId(this.mNetwork.getCodeSeatId());
            baseAdditionalInfo.setEcpm(Double.valueOf(this.mBundle.getDouble(TrackingKey.BIDDING_PRICE)));
            baseAdditionalInfo.setPrecision(isWaterFallExecutor() ? "estimated" : "exact");
            baseAdditionalInfo.setCurrency("USD");
            baseAdditionalInfo.setBidding(Boolean.valueOf(AdUtil.isBiddingNetwork(this.mNetwork)));
            baseAdditionalInfo.setMediatorSource(this.mediatorSourceName);
        }
        baseAdditionalInfo.setInternalAd(Boolean.valueOf(adNativeInfo == null ? isInternalAd() : adNativeInfo.isInternalAd()));
        return baseAdditionalInfo;
    }

    private boolean isWaterFallExecutor() {
        return AdUtil.isWaterFall(this.mNetwork);
    }

    private void loadedCallBack(List<WrapTAdAllianceListener> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (WrapTAdAllianceListener wrapTAdAllianceListener : list) {
            if (wrapTAdAllianceListener != null) {
                wrapTAdAllianceListener.onLoad();
            }
        }
    }

    private void loadedCallBack(List<WrapTAdAllianceListener> list, List<TAdNativeInfo> list2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (WrapTAdAllianceListener wrapTAdAllianceListener : list) {
            if (wrapTAdAllianceListener != null) {
                wrapTAdAllianceListener.onLoad(list2);
            }
        }
    }

    private void saveShowedValue(long j11) {
        if (this.mNetwork == null || j11 <= 0) {
            return;
        }
        a.e().q(this.mNetwork.getCodeSeatId(), j11);
        AdLogUtil.Log().w(ComConstants.AD_FLOW, ">>>>> codeSeatId: " + this.mNetwork.getCodeSeatId() + " | adType : " + this.mNetwork.getAdt() + " | valueMicros: " + j11);
    }

    public void adActivate(AdActiveInfo adActiveInfo) {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            AdditionalInfo clickAdditionalInfo = getClickAdditionalInfo(null);
            clickAdditionalInfo.setPackageName(adActiveInfo.getPackageName());
            clickAdditionalInfo.setImageUrl(adActiveInfo.getImageUrl());
            wrapTAdAllianceListener.onAdActivate(clickAdditionalInfo);
        }
    }

    public void adClicked(AdNativeInfo adNativeInfo) {
        logClick(adNativeInfo);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onNativeFeedClicked(getAdSource(), adNativeInfo, getClickAdditionalInfo(adNativeInfo));
        }
    }

    protected void adClosed() {
        logClose(null);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onClosed(getAdSource());
        }
    }

    protected void adClosed(TAdNativeInfo tAdNativeInfo) {
        logClose(tAdNativeInfo);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onClosed(tAdNativeInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void adFailedToLoad(TAdErrorCode tAdErrorCode) {
        adFailedToLoadTemp(tAdErrorCode);
    }

    public void adImpression(AdNativeInfo adNativeInfo) {
        if (LogSwitch.isDebug) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(RecordTestInfo.getLogMsg(adNativeInfo == null ? this : adNativeInfo));
            sb2.append("  isSupportFlag = ");
            sb2.append(this.supportHisavanaFlag);
            RecordTestInfo.LogMsg(sb2.toString(), RecordTestInfo.LOG_CODE12);
        }
        logImpression(adNativeInfo, true, TAdErrorCode.SUCCESS_MESSAGE);
        this.mImpressionTime = System.currentTimeMillis();
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onNativeFeedShow(getAdSource(), adNativeInfo, getShowAdditionalInfo(adNativeInfo));
        }
    }

    public void adLoaded() {
        adLoadedTemp();
    }

    public void adLoaded(List<TAdNativeInfo> list) {
        adLoadedTemp(list);
    }

    public void adReturnTracking(Bundle bundle) {
        Bundle bundle2;
        if (bundle == null || (bundle2 = this.mBundle) == null) {
            return;
        }
        if (bundle2.containsKey(TrackingKey.CLD_CONFIGURE_ID)) {
            this.mBundle.remove(TrackingKey.CLD_CONFIGURE_ID);
        }
        bundle.putString(TrackingKey.TRIGGER_ID, this.mBundle.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, this.mBundle.getLong(TrackingKey.TRIGGER_TS));
        bundle.putLong(TrackingKey.REQUEST_TS, this.mBundle.getLong(TrackingKey.REQUEST_TS));
        bundle.putInt(TrackingKey.REQUEST_TIME, (int) (this.mBundle.getLong(TrackingKey.REQUEST_TS) - this.mBundle.getLong(TrackingKey.TRIGGER_TS)));
        bundle.putString(TrackingKey.REQUEST_ID, this.mBundle.getString(TrackingKey.REQUEST_ID));
        bundle.putLong(TrackingKey.RETURN_TS, System.currentTimeMillis());
        bundle.putInt(TrackingKey.RETURN_TIME, (int) (System.currentTimeMillis() - this.mBundle.getLong(TrackingKey.REQUEST_TS)));
        this.mBundle.putLong(TrackingKey.RETURN_TS, System.currentTimeMillis());
        this.mBundle.putInt(TrackingKey.RETURN_TIME, (int) (System.currentTimeMillis() - this.mBundle.getLong(TrackingKey.REQUEST_TS)));
        bundle.putInt("ad_type", this.mBundle.getInt("ad_type"));
        bundle.putString(TrackingKey.CLD_APP_ID, this.mBundle.getString(TrackingKey.CLD_APP_ID));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putInt(TrackingKey.PLATFORM, this.mBundle.getInt(TrackingKey.PLATFORM));
        bundle.putString("app_id", this.mBundle.getString("app_id"));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CODE_SEAT_ID));
        double biddingPrice = getBiddingPrice();
        bundle.putDouble(TrackingKey.BIDDING_PRICE, biddingPrice);
        this.mBundle.putDouble(TrackingKey.BIDDING_PRICE, biddingPrice);
        RecordTestInfo.record("adReturnTracking code_seat_id:" + this.mBundle.getString(TrackingKey.CODE_SEAT_ID) + ",bidding_price:" + bundle.getDouble(TrackingKey.BIDDING_PRICE));
        bundle.putInt(TrackingKey.PRIORITY, this.mBundle.getInt(TrackingKey.PRIORITY));
        bundle.putInt(TrackingKey.AD_COUNT, this.mBundle.getInt(TrackingKey.AD_COUNT));
        bundle.putInt(TrackingKey.IS_RETREATAD, this.mBundle.getInt(TrackingKey.IS_RETREATAD));
        bundle.putInt(TrackingKey.IS_DEFAULT_AD, 0);
        bundle.putInt(TrackingKey.REQUEST_TYPE, this.mBundle.getInt(TrackingKey.REQUEST_TYPE));
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putString(TrackingKey.AD_TITLE, this.mBundle.getString(TrackingKey.AD_TITLE));
        bundle.putString(TrackingKey.AD_URL, this.mBundle.getString(TrackingKey.AD_URL));
        bundle.putString(TrackingKey.DESCRIPTION, this.mBundle.getString(TrackingKey.DESCRIPTION));
        bundle.putString("image_url", this.mBundle.getString("image_url"));
        bundle.putString("icon_url", this.mBundle.getString("icon_url"));
        bundle.putString("endcard_url", this.mBundle.getString("endcard_url"));
        bundle.putString("app_name", this.mBundle.getString("app_name"));
        bundle.putString("package_name", this.mBundle.getString("package_name"));
        bundle.putString(TrackingKey.NATIVE_INFO_LIST, this.mBundle.getString(TrackingKey.NATIVE_INFO_LIST));
        bundle.putString("download_url", this.mBundle.getString("download_url"));
        bundle.putInt(TrackingKey.IS_TIMEOUT, this.isTimeOut ? 1 : 0);
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        bundle.putLong(TrackingKey.IS_OFFLINE_AD, isOfflineAd() ? 1L : 0L);
        bundle.putLong(TrackingKey.AD_TRIGGER_STATUS, this.mBundle.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putInt(TrackingKey.REQUEST_ROUND, this.mBundle.getInt(TrackingKey.REQUEST_ROUND));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putInt(TrackingKey.OPTIMIZE_STATUS, this.mBundle.getInt(TrackingKey.OPTIMIZE_STATUS));
        bundle.putInt(TrackingKey.PRIORITY_CODE, this.mBundle.getInt(TrackingKey.PRIORITY_CODE));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, this.mediatorSourceName);
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, this.mediatorSourceUnitId);
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        bundle.putInt(TrackingKey.BIDDING_TYPE, this.mBundle.getInt(TrackingKey.BIDDING_TYPE));
        if (this.adSource == 0) {
            b bVar = b.f22711a;
            bundle.putInt(TrackingKey.EW_REQUEST_STRATEGY, bVar.b());
            bundle.putLong(TrackingKey.EW_STRATEGY_VAR_ID, bVar.a());
        }
        TrackingManager.trackingAdReturn(bundle);
    }

    protected void adTrackingRequest() {
        RecordTestInfo.record("adTrackingRequest code_seat_id:" + getPlacementId() + ",bidding_price:" + this.mBundle.getDouble(TrackingKey.BIDDING_PRICE));
        this.mBundle.putInt(TrackingKey.AD_COUNT, this.mAdCount);
        this.mBundle.putInt(TrackingKey.IS_RETREATAD, 0);
        this.mBundle.putInt(TrackingKey.IS_DEFAULT_AD, 0);
        if (TextUtils.isEmpty(this.mRequestId)) {
            this.mRequestId = DeviceUtil.o();
        }
        this.mTriggerId = this.mBundle.getString(TrackingKey.TRIGGER_ID);
        this.mBundle.putString(TrackingKey.REQUEST_ID, this.mRequestId);
        this.mBundle.putString(TrackingKey.CLD_CONFIGURE_ID, a.e().j("cloudControlVersion"));
        this.mBundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        this.mBundle.putInt(TrackingKey.REQUEST_ROUND, this.mRequestRound);
        Bundle bundle = this.mBundle;
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        this.mBundle.putInt(TrackingKey.IS_PRELOAD, this.isPreload ? 1 : 0);
        this.mBundle.putInt(TrackingKey.BIDDING_TYPE, AdUtil.isBiddingNetwork(this.mNetwork) || AdUtil.isQueryPriceNetwork(this.mNetwork) ? 1 : 2);
        if (this.adSource == 0) {
            Bundle bundle2 = this.mBundle;
            b bVar = b.f22711a;
            bundle2.putInt(TrackingKey.EW_REQUEST_STRATEGY, bVar.b());
            this.mBundle.putLong(TrackingKey.EW_STRATEGY_VAR_ID, bVar.a());
        }
        TrackingManager.trackingAdRequest(this.mBundle);
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void addRequestBody(TInnerAdRequestBody tInnerAdRequestBody) {
        if (tInnerAdRequestBody != null) {
            this.mListenerList.add(tInnerAdRequestBody.getAdListener());
            if (this.mListenerList.size() > 2) {
                this.mListenerList.remove(0);
            }
        }
    }

    public void admobShowPriceTracking(float f11, String str, int i11) {
        Bundle bundle = new Bundle();
        bundle.putString(TrackingKey.TRIGGER_ID, this.mBundle.getString(TrackingKey.TRIGGER_ID));
        bundle.putString(TrackingKey.REQUEST_ID, this.mBundle.getString(TrackingKey.REQUEST_ID));
        bundle.putString(TrackingKey.CLD_APP_ID, this.mBundle.getString(TrackingKey.CLD_APP_ID));
        bundle.putString("app_id", this.mBundle.getString("app_id"));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putFloat(TrackingKey.AD_VALUE, f11);
        bundle.putString(TrackingKey.ADVALUE_CURRENCY_CODE, str);
        bundle.putInt(TrackingKey.AD_VALUE_TYPE, i11);
        bundle.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.BIDDING_PRICE, network == null ? 0.0d : network.getPrice().doubleValue());
        Network network2 = this.mNetwork;
        bundle.putInt("ad_type", network2 == null ? 0 : network2.getAdt());
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, this.mediatorSourceName);
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, this.mediatorSourceUnitId);
        Network network3 = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network3 != null ? network3.getShowPriceCoefficient().doubleValue() : 0.0d);
        TrackingManager.trackingAdmobShowPrice(bundle);
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void destroyAd() {
        this.isDestroyed = true;
        detachContext();
        stopTimer();
        if (this.isLoaded) {
            return;
        }
        this.isLoaded = true;
        Bundle bundle = new Bundle();
        bundle.putInt("error_code", 30005);
        bundle.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.ERROR_REQUEST_OBJECT_IS_DESTROYED.getErrorMessage());
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mAdCount);
        adReturnTracking(bundle);
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void detachContext() {
        this.mListenerList.clear();
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public int getAdSource() {
        return this.adSource;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public String getAdUnit() {
        return this.mAdUnit;
    }

    protected AdditionalInfo getClickAdditionalInfo(AdNativeInfo adNativeInfo) {
        AdditionalInfo baseAdditionalInfo = getBaseAdditionalInfo();
        Network network = this.mNetwork;
        if (network != null) {
            baseAdditionalInfo.setSource(network.getSource());
            baseAdditionalInfo.setApplicationId(this.mNetwork.getApplicationId());
            baseAdditionalInfo.setApplicationKey(this.mNetwork.getApplicationKey());
            baseAdditionalInfo.setCodeSeatId(this.mNetwork.getCodeSeatId());
            baseAdditionalInfo.setEcpm(Double.valueOf(this.mBundle.getDouble(TrackingKey.BIDDING_PRICE)));
            baseAdditionalInfo.setPrecision(isWaterFallExecutor() ? "estimated" : "exact");
            baseAdditionalInfo.setCurrency("USD");
            baseAdditionalInfo.setBidding(Boolean.valueOf(AdUtil.isBiddingNetwork(this.mNetwork)));
            baseAdditionalInfo.setMediatorSource(this.mediatorSourceName);
        }
        baseAdditionalInfo.setInternalAd(Boolean.valueOf(adNativeInfo == null ? isInternalAd() : adNativeInfo.isInternalAd()));
        return baseAdditionalInfo;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public double getEcpmPrice() {
        return this.price;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public int getExpireReason() {
        return this.expireReason;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public String getExt() {
        return "";
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public String getFilterSource() {
        return "";
    }

    @Override // com.hisavana.common.interfacz.Iad
    public int getLoadStatus() {
        return this.mLoadStatus;
    }

    public String getLogString() {
        return "----- class name = " + getClass().getSimpleName() + " ----- mAdUnit = " + this.mAdUnit;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public String getMediatorSourceName() {
        return this.mediatorSourceName;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public String getMediatorSourceUnitId() {
        return this.mediatorSourceUnitId;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public Network getNetwork() {
        return this.mNetwork;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public String getPlacementId() {
        return this.mNetwork.getCodeSeatId();
    }

    @Override // com.hisavana.common.interfacz.Iad
    public long getRequestTime() {
        return this.requestTime;
    }

    protected int getSupportHisavanaFlag() {
        return this.supportHisavanaFlag;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public WrapTAdAllianceListener getTAdAllianceListener() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        AdLogUtil.Log().i("BaseAd", "Base Ad getTAdAllianceListener");
        return wrapTAdAllianceListener;
    }

    protected int getTimeOutTime() {
        return 30000;
    }

    public int getTtl() {
        return this.ttl;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public long getValidTimeLimit() {
        int i11 = this.ttl;
        if (i11 <= 0) {
            return Long.MAX_VALUE;
        }
        return (((long) i11) * 60000) - Math.abs(System.currentTimeMillis() - this.startTime);
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isAdxAd() {
        return false;
    }

    public boolean isCollapsible() {
        return false;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isEwAd() {
        return false;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isExpired() {
        boolean z10 = getValidTimeLimit() <= 0;
        if (z10) {
            setExpireReason(2);
        }
        return z10;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isIconAd() {
        Network network = this.mNetwork;
        return network != null && network.getAdt() == 6;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isInternalAd() {
        return false;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public boolean isMatchVulgarBrand() {
        return false;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public boolean isSupportRtBidding() {
        return false;
    }

    public boolean isSupportStopRequest() {
        return false;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void loadAd() {
        this.mRequestId = DeviceUtil.o();
        this.startTime = System.currentTimeMillis();
        if (supportTimer()) {
            startTimer();
        }
        adTrackingRequest();
        if (this.mNetwork != null) {
            MediaLogUtil.d("BaseAd", "loadAd adSource " + this.mNetwork.getSource() + " id " + this.mNetwork.getCodeSeatId() + " " + getLogString());
        }
        if (TextUtils.isEmpty(this.mAdUnit)) {
            return;
        }
        RequestingAdManager.getInstance().addRequest(this);
    }

    protected void logClick(TAdNativeInfo tAdNativeInfo) {
        Bundle bundle = new Bundle();
        appendContextParam(bundle);
        bundle.putInt(TrackingKey.REQUEST_TIME, this.mBundle.getInt(TrackingKey.REQUEST_TIME));
        bundle.putLong(TrackingKey.RETURN_TS, this.mBundle.getLong(TrackingKey.RETURN_TS));
        bundle.putInt(TrackingKey.RETURN_TIME, this.mBundle.getInt(TrackingKey.RETURN_TIME));
        bundle.putLong(TrackingKey.SHOW_TS, this.mBundle.getLong(TrackingKey.SHOW_TS));
        bundle.putLong(TrackingKey.SHOW_TIME, this.mBundle.getLong(TrackingKey.SHOW_TIME));
        bundle.putLong(TrackingKey.CLICK_TS, System.currentTimeMillis());
        bundle.putInt(TrackingKey.CLICK_TIME, (int) (System.currentTimeMillis() - this.mImpressionTime));
        bundle.putString(TrackingKey.AD_TITLE, this.mBundle.getString(TrackingKey.AD_TITLE));
        bundle.putString(TrackingKey.AD_URL, this.mBundle.getString(TrackingKey.AD_URL));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString(TrackingKey.DESCRIPTION, this.mBundle.getString(TrackingKey.DESCRIPTION));
        bundle.putString("image_url", this.mBundle.getString("image_url"));
        bundle.putString("icon_url", this.mBundle.getString("icon_url"));
        bundle.putString("endcard_url", this.mBundle.getString("app_name"));
        bundle.putString("app_name", this.mBundle.getString("app_name"));
        bundle.putString("package_name", this.mBundle.getString("package_name"));
        bundle.putString("download_url", this.mBundle.getString("download_url"));
        bundle.putInt(TrackingKey.SLOT_HEIGHT, this.mBundle.getInt(TrackingKey.SLOT_HEIGHT));
        bundle.putInt(TrackingKey.SLOT_WIDTH, this.mBundle.getInt(TrackingKey.SLOT_WIDTH));
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putInt(TrackingKey.REQUEST_TYPE, this.mBundle.getInt(TrackingKey.REQUEST_TYPE));
        bundle.putString(TrackingKey.REQUEST_ID, this.mBundle.getString(TrackingKey.REQUEST_ID));
        bundle.putInt(TrackingKey.CLICK_X, 0);
        bundle.putInt(TrackingKey.CLICK_Y, 0);
        bundle.putInt(TrackingKey.IS_EXPIRED, isExpired() ? 1 : 0);
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mBundle.getInt(TrackingKey.REQUEST_NUM));
        bundle.putInt(TrackingKey.AD_TRIGGER_STATUS, this.mBundle.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putInt(TrackingKey.IS_OFFLINE_AD, isOfflineAd() ? 1 : 0);
        bundle.putInt(TrackingKey.FILLING_AD_TYPE, this.mBundle.getInt(TrackingKey.FILLING_AD_TYPE));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putInt(TrackingKey.PRIORITY_CODE, this.mBundle.getInt(TrackingKey.PRIORITY_CODE));
        bundle.putDouble(TrackingKey.MAX_PRICE, this.mBundle.getDouble(TrackingKey.MAX_PRICE));
        bundle.putString("scene_id", this.sceneId);
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, tAdNativeInfo == null ? this.mediatorSourceName : tAdNativeInfo.getMediatorSourceName());
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, tAdNativeInfo == null ? this.mediatorSourceUnitId : tAdNativeInfo.getMediatorSourceUnitId());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        if (tAdNativeInfo == null) {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        } else {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        }
        String str = this.mGameName;
        if (str == null) {
            str = "";
        }
        bundle.putString(TrackingKey.GAME_NAME, str);
        String str2 = this.mGameScene;
        if (str2 == null) {
            str2 = "";
        }
        bundle.putString(TrackingKey.GAME_SCENE, str2);
        TrackingManager.trackingAdClick(bundle);
    }

    protected void logClose(TAdNativeInfo tAdNativeInfo) {
        Bundle bundle = new Bundle();
        appendContextParam(bundle);
        bundle.putInt(TrackingKey.REQUEST_TIME, this.mBundle.getInt(TrackingKey.REQUEST_TIME));
        bundle.putLong(TrackingKey.RETURN_TS, this.mBundle.getLong(TrackingKey.RETURN_TS));
        bundle.putInt(TrackingKey.RETURN_TIME, this.mBundle.getInt(TrackingKey.RETURN_TIME));
        bundle.putLong(TrackingKey.SHOW_TS, this.mBundle.getLong(TrackingKey.SHOW_TS));
        bundle.putLong(TrackingKey.SHOW_TIME, this.mBundle.getLong(TrackingKey.SHOW_TIME));
        bundle.putLong(TrackingKey.CLICK_TS, System.currentTimeMillis());
        bundle.putInt(TrackingKey.CLICK_TIME, (int) (System.currentTimeMillis() - this.mImpressionTime));
        bundle.putString(TrackingKey.AD_TITLE, this.mBundle.getString(TrackingKey.AD_TITLE));
        bundle.putString(TrackingKey.AD_URL, this.mBundle.getString(TrackingKey.AD_URL));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString(TrackingKey.DESCRIPTION, this.mBundle.getString(TrackingKey.DESCRIPTION));
        bundle.putString("image_url", this.mBundle.getString("image_url"));
        bundle.putString("icon_url", this.mBundle.getString("icon_url"));
        bundle.putString("endcard_url", this.mBundle.getString("endcard_url"));
        bundle.putString("app_name", this.mBundle.getString("app_name"));
        bundle.putString("package_name", this.mBundle.getString("package_name"));
        bundle.putString("download_url", this.mBundle.getString("download_url"));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putInt(TrackingKey.SLOT_HEIGHT, 0);
        bundle.putInt(TrackingKey.SLOT_WIDTH, 0);
        bundle.putInt(TrackingKey.CLICK_X, 0);
        bundle.putInt(TrackingKey.CLICK_Y, 0);
        bundle.putString("scene_id", this.sceneId);
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, tAdNativeInfo == null ? this.mediatorSourceName : tAdNativeInfo.getMediatorSourceName());
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, tAdNativeInfo == null ? this.mediatorSourceUnitId : tAdNativeInfo.getMediatorSourceUnitId());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        if (tAdNativeInfo == null) {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        } else {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        }
        String str = this.mGameName;
        if (str == null) {
            str = "";
        }
        bundle.putString(TrackingKey.GAME_NAME, str);
        String str2 = this.mGameScene;
        bundle.putString(TrackingKey.GAME_SCENE, str2 != null ? str2 : "");
        TrackingManager.trackingAdClose(bundle);
    }

    protected void logImpression(TAdNativeInfo tAdNativeInfo, boolean z10, TAdErrorCode tAdErrorCode) {
        Bundle bundle = new Bundle();
        appendContextParam(bundle);
        bundle.putLong(TrackingKey.SHOW_TS, System.currentTimeMillis());
        bundle.putLong(TrackingKey.SHOW_TIME, System.currentTimeMillis() - this.mLoadedTime);
        bundle.putString(TrackingKey.AD_TITLE, this.mBundle.getString(TrackingKey.AD_TITLE));
        bundle.putString(TrackingKey.AD_URL, this.mBundle.getString(TrackingKey.AD_URL));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString(TrackingKey.DESCRIPTION, this.mBundle.getString(TrackingKey.DESCRIPTION));
        bundle.putString("image_url", this.mBundle.getString("image_url"));
        bundle.putString("icon_url", this.mBundle.getString("icon_url"));
        bundle.putString("endcard_url", this.mBundle.getString("endcard_url"));
        bundle.putString("app_name", this.mBundle.getString("app_name"));
        bundle.putString("package_name", this.mBundle.getString("package_name"));
        bundle.putString("download_url", this.mBundle.getString("download_url"));
        bundle.putInt(TrackingKey.AD_TRIGGER_STATUS, this.mBundle.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putInt(TrackingKey.IS_OFFLINE_AD, isOfflineAd() ? 1 : 0);
        bundle.putInt(TrackingKey.FILLING_AD_TYPE, this.mBundle.getInt(TrackingKey.FILLING_AD_TYPE));
        bundle.putInt(TrackingKey.SLOT_HEIGHT, 0);
        bundle.putInt(TrackingKey.SLOT_WIDTH, 0);
        bundle.putString("scene_id", this.sceneId);
        bundle.putInt(TrackingKey.IS_EXPIRED, isExpired() ? 1 : 0);
        if (z10) {
            bundle.putInt(TrackingKey.SHOW_STATUS, 1);
            bundle.putInt(TrackingKey.FAIL_REASON, 0);
        } else {
            bundle.putInt(TrackingKey.SHOW_STATUS, 2);
            bundle.putInt(TrackingKey.FAIL_REASON, 2);
        }
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString(TrackingKey.REQUEST_ID, this.mBundle.getString(TrackingKey.REQUEST_ID));
        bundle.putInt(TrackingKey.REQUEST_NUM, this.mBundle.getInt(TrackingKey.REQUEST_NUM));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putInt(TrackingKey.OPTIMIZE_STATUS, this.mBundle.getInt(TrackingKey.OPTIMIZE_STATUS));
        bundle.putInt(TrackingKey.PRIORITY_CODE, this.mBundle.getInt(TrackingKey.PRIORITY_CODE));
        if (this.maxPrice == 0.0d) {
            this.maxPrice = this.mBundle.getDouble(TrackingKey.MAX_PRICE);
        }
        bundle.putDouble(TrackingKey.MAX_PRICE, this.maxPrice);
        bundle.putDouble(TrackingKey.ECPM, tAdNativeInfo == null ? this.price : tAdNativeInfo.getEcpmPrice());
        bundle.putString(TrackingKey.ECPM_PRECISION, isWaterFallExecutor() ? "estimated" : "exact");
        bundle.putString(TrackingKey.SHOW_ID, tAdNativeInfo == null ? this.mShowId : tAdNativeInfo.getShowId());
        bundle.putString(TrackingKey.SCENE_TOKEN, tAdNativeInfo == null ? this.sceneToken : tAdNativeInfo.getSceneToken());
        bundle.putString("error_code", tAdErrorCode == null ? null : String.valueOf(tAdErrorCode.getErrorCode()));
        bundle.putString(TrackingKey.ERROR_MESSAGE, tAdErrorCode == null ? null : TAdErrorCode.simpleErrorMessage(tAdErrorCode.getErrorMessage()));
        bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        bundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.mBundle.getInt(TrackingKey.IS_CONTAIN_VULGAR));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, tAdNativeInfo == null ? this.mediatorSourceName : tAdNativeInfo.getMediatorSourceName());
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, tAdNativeInfo == null ? this.mediatorSourceUnitId : tAdNativeInfo.getMediatorSourceUnitId());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        if (tAdNativeInfo == null) {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        } else {
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        }
        String str = this.mGameName;
        if (str == null) {
            str = "";
        }
        bundle.putString(TrackingKey.GAME_NAME, str);
        String str2 = this.mGameScene;
        if (str2 == null) {
            str2 = "";
        }
        bundle.putString(TrackingKey.GAME_SCENE, str2);
        if (this.adSource == 0) {
            b bVar = b.f22711a;
            bundle.putInt(TrackingKey.EW_REQUEST_STRATEGY, bVar.b());
            bundle.putLong(TrackingKey.EW_STRATEGY_VAR_ID, bVar.a());
        }
        TrackingManager.trackingImpression(bundle);
        addToContextParam(TrackingKey.SHOW_TS, Long.valueOf(bundle.getLong(TrackingKey.SHOW_TS)));
        addToContextParam(TrackingKey.SHOW_TIME, Long.valueOf(bundle.getLong(TrackingKey.SHOW_TIME)));
        addToContextParam(TrackingKey.SLOT_HEIGHT, Integer.valueOf(bundle.getInt(TrackingKey.SLOT_HEIGHT)));
        addToContextParam(TrackingKey.SLOT_WIDTH, Integer.valueOf(bundle.getInt(TrackingKey.SLOT_WIDTH)));
        addToContextParam(TrackingKey.SHOW_STATUS, Integer.valueOf(bundle.getInt(TrackingKey.SHOW_STATUS)));
        addToContextParam(TrackingKey.FAIL_REASON, Integer.valueOf(bundle.getInt(TrackingKey.FAIL_REASON)));
        this.mBundle.putDouble(TrackingKey.MAX_PRICE, bundle.getDouble(TrackingKey.MAX_PRICE));
    }

    public void logTrigerShow(TAdNativeInfo tAdNativeInfo) {
        trigerShow(tAdNativeInfo, "", "");
    }

    protected void logTrigerShow(String str, String str2) {
        trigerShow(null, str, str2);
    }

    protected void onAdShowError(TAdErrorCode tAdErrorCode) {
        onAdShowError(null, tAdErrorCode);
    }

    protected void onAdShowError(TAdNativeInfo tAdNativeInfo, TAdErrorCode tAdErrorCode) {
        logImpression(tAdNativeInfo, false, tAdErrorCode);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onShowError(tAdErrorCode);
        }
    }

    protected void onAdditionalShowed(long j11, String str, int i11) {
        saveShowedValue(j11);
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener == null) {
            return;
        }
        AdditionalInfo baseAdditionalInfo = getBaseAdditionalInfo();
        baseAdditionalInfo.setAdmobECPM(Double.valueOf(j11 / 1000000.0d));
        baseAdditionalInfo.setCurrencyCode(str);
        baseAdditionalInfo.setPrecisionType(Integer.valueOf(i11));
        Network network = this.mNetwork;
        if (network != null) {
            baseAdditionalInfo.setSource(network.getSource());
            baseAdditionalInfo.setApplicationId(this.mNetwork.getApplicationId());
            baseAdditionalInfo.setApplicationKey(this.mNetwork.getApplicationKey());
            baseAdditionalInfo.setCodeSeatId(this.mNetwork.getCodeSeatId());
            baseAdditionalInfo.setBidding(Boolean.valueOf(AdUtil.isBiddingNetwork(this.mNetwork)));
            baseAdditionalInfo.setMediatorSource(this.mediatorSourceName);
        }
        wrapTAdAllianceListener.onShowed(baseAdditionalInfo);
    }

    protected void onReward() {
        WrapTAdAllianceListener wrapTAdAllianceListener = this.mListenerList.isEmpty() ? null : this.mListenerList.get(0);
        if (wrapTAdAllianceListener != null) {
            wrapTAdAllianceListener.onRewarded();
        }
    }

    public void onTimeOut() {
        adFailedToLoad(TAdErrorCode.ERROR_AD_REQUEST_TIME_OUT);
        destroyAd();
    }

    public void post(Handler handler, Runnable runnable) {
        if (handler != null) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void setAdLoadScenes(String str, String str2, Map<String, Object> map) {
        this.mGameName = str;
        this.mGameScene = str2;
        this.mExtInfo = map;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setAdSource(int i11) {
        this.adSource = i11;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void setAdUnit(String str) {
        this.mAdUnit = str;
    }

    public void setContainVulgarContent(boolean z10) {
        this.isContainVulgarContent = z10;
    }

    public void setCurrActivityFullscreen(boolean z10) {
        this.mCurrActivityFullscreen = z10;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setEcpmPrice(double d11) {
        this.price = d11;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setExpireReason(int i11) {
        this.expireReason = i11;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setExt(String str) {
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void setLoadStatus(int i11) {
        this.mLoadStatus = i11;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setMaxPrice(double d11) {
        AdLogUtil.Log().d("Athena", "setMaxPrice " + d11);
        this.maxPrice = d11;
    }

    protected void setMediatorInfo(String str, String str2) {
        if (this.mNetwork == null) {
            return;
        }
        AdLogUtil.Log().d(ComConstants.AD_FLOW, ">>>>> sourceName: " + str + " | sourceUnitId: " + str2 + " | " + this.mNetwork.getCodeSeatId());
        this.mediatorSourceName = str;
        this.mediatorSourceUnitId = str2;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void setOfflineAd(boolean z10) {
        this.isOfflineAd = z10;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setPreload(boolean z10) {
        this.isPreload = z10;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void setRequestRound(int i11) {
        AdLogUtil.Log().d("BaseAd", "setRequestRound " + i11 + " " + getLogString());
        this.mRequestRound = i11;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void setRequestTime(long j11) {
        this.requestTime = j11;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setRequestType(int i11) {
        this.requestType = i11;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setSecondPrice(double d11) {
        AdLogUtil.Log().d("ssp_second_price", "*----> BaseAd setSecondPrice price" + d11 + getLogString());
        this.secondPrice = d11;
    }

    public void setShowId(String str) {
        this.mShowId = str;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void setSupportFlag(int i11) {
        this.supportHisavanaFlag = i11;
    }

    @Override // com.hisavana.common.interfacz.ICacheAd
    public void setTimeOut(boolean z10) {
        this.isTimeOut = z10;
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void setTrackingBundle(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        this.mBundle.putAll(bundle);
        this.mBundle.putDouble(TrackingKey.BIDDING_PRICE, this.mNetwork.getPrice().doubleValue());
    }

    public void setTtl(int i11) {
        this.ttl = i11;
    }

    protected void startTimer() {
        if (this.runTimer == null) {
            RunTimer runTimer = new RunTimer();
            this.runTimer = runTimer;
            runTimer.setScheduleTime(getTimeOutTime());
            this.runTimer.setTimeOutCallback(this.timeOutCallback);
        }
        this.runTimer.runTimerTask();
        AdLogUtil.Log().d("BaseAd", "启动广告请求超时监听...");
    }

    @Override // com.hisavana.common.interfacz.Iad
    public void stopLoader() {
        if (this.isLoaded) {
            return;
        }
        try {
            if (isSupportStopRequest()) {
                destroyAd();
            } else {
                detachContext();
                setLoadStatus(4);
            }
        } catch (Exception e11) {
            AdLogUtil.Log().e("BaseAd", Log.getStackTraceString(e11));
        }
    }

    protected void stopTimer() {
        RunTimer runTimer = this.runTimer;
        if (runTimer != null) {
            runTimer.cancelTimeTask();
            this.runTimer = null;
        }
    }

    protected boolean supportTimer() {
        return true;
    }

    protected void trigerShow(TAdNativeInfo tAdNativeInfo, String str, String str2) {
        String str3 = str2;
        Bundle bundle = new Bundle();
        appendContextParam(bundle);
        if (bundle.containsKey(TrackingKey.IS_DEFAULT_AD)) {
            bundle.remove(TrackingKey.IS_DEFAULT_AD);
        }
        bundle.putInt(TrackingKey.IS_TIMEOUT, this.mBundle.getInt(TrackingKey.IS_TIMEOUT));
        bundle.putString("error_code", this.mBundle.getString("error_code"));
        bundle.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.simpleErrorMessage(this.mBundle.getString(TrackingKey.ERROR_MESSAGE)));
        if (tAdNativeInfo != null) {
            bundle.putString(TrackingKey.AD_TITLE, tAdNativeInfo.getTitle());
            bundle.putString(TrackingKey.AD_URL, "");
            bundle.putString(TrackingKey.DESCRIPTION, tAdNativeInfo.getDescription());
            if (tAdNativeInfo.getIcon() != null) {
                bundle.putString("icon_url", tAdNativeInfo.getIcon().getUrl());
            }
            bundle.putString("endcard_url", "");
            bundle.putString("app_name", "");
            bundle.putString("package_name", "");
            bundle.putString("download_url", "");
            bundle.putString("scene_id", tAdNativeInfo.getSceneId());
            this.sceneId = tAdNativeInfo.getSceneId() == null ? "" : tAdNativeInfo.getSceneId();
            bundle.putString(TrackingKey.SCENE_TOKEN, tAdNativeInfo.getSceneToken());
            this.sceneToken = tAdNativeInfo.getSceneToken();
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, tAdNativeInfo.isInternalAd() ? 1 : 0);
        } else {
            bundle.putString("scene_id", str3);
            if (str3 == null) {
                str3 = "";
            }
            this.sceneId = str3;
            bundle.putString(TrackingKey.SCENE_TOKEN, str);
            this.sceneToken = str;
            bundle.putInt(TrackingKey.IS_INTERNAL_AD, isInternalAd() ? 1 : 0);
        }
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putInt(TrackingKey.FILLING_SOURCE, this.mBundle.getInt(TrackingKey.FILLING_SOURCE));
        bundle.putString(TrackingKey.REQUEST_ID, this.mBundle.getString(TrackingKey.REQUEST_ID));
        bundle.putInt(TrackingKey.AD_TRIGGER_STATUS, this.mBundle.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putInt(TrackingKey.IS_OFFLINE_AD, isOfflineAd() ? 1 : 0);
        bundle.putInt(TrackingKey.FILLING_AD_TYPE, this.mBundle.getInt(TrackingKey.FILLING_AD_TYPE));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putString(TrackingKey.SHOW_ID, tAdNativeInfo == null ? this.mShowId : tAdNativeInfo.getShowId());
        bundle.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
        bundle.putInt(TrackingKey.IS_CONTAIN_VULGAR, this.mBundle.getInt(TrackingKey.IS_CONTAIN_VULGAR));
        bundle.putString(TrackingKey.MEDIATOR_SOURCE, tAdNativeInfo == null ? this.mediatorSourceName : tAdNativeInfo.getMediatorSourceName());
        bundle.putString(TrackingKey.MEDIATOR_CODE_SEAT_ID, tAdNativeInfo == null ? this.mediatorSourceUnitId : tAdNativeInfo.getMediatorSourceUnitId());
        Network network = this.mNetwork;
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        TrackingManager.trackingTriggerShow(bundle);
        addToContextParam(TrackingKey.AD_TITLE, bundle.getString(TrackingKey.AD_TITLE));
        addToContextParam(TrackingKey.AD_URL, "");
        addToContextParam(TrackingKey.DESCRIPTION, bundle.getString(TrackingKey.DESCRIPTION));
        addToContextParam("image_url", bundle.getString("image_url"));
        addToContextParam("icon_url", bundle.getString("icon_url"));
        addToContextParam("endcard_url", "");
        addToContextParam("app_name", "");
        addToContextParam("package_name", "");
        addToContextParam("download_url", "");
        addToContextParam(TrackingKey.REQUEST_NUM, Integer.valueOf(this.mAdCount));
    }
}
