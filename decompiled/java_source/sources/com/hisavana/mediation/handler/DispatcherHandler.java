package com.hisavana.mediation.handler;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import be.i;
import be.o;
import com.cloud.hisavana.sdk.manager.b;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.hisavana.common.base.BaseBanner;
import com.hisavana.common.base.BaseInterstitial;
import com.hisavana.common.base.BaseNative;
import com.hisavana.common.base.BaseSplash;
import com.hisavana.common.base.BaseVideo;
import com.hisavana.common.base.LogSwitch;
import com.hisavana.common.bean.AdCache;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TInnerAdRequestBody;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBaseAdSummary;
import com.hisavana.common.interfacz.ICacheAd;
import com.hisavana.common.interfacz.Iad;
import com.hisavana.common.manager.AdCacheManager;
import com.hisavana.common.manager.RequestingAdManager;
import com.hisavana.common.mock.RecordTestInfo;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingUtil;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.common.utils.AdUtil;
import com.hisavana.common.utils.MediaLogUtil;
import com.hisavana.mediation.bean.CloudControlConfig;
import com.hisavana.mediation.config.TAdManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class DispatcherHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f33284a = "LoadAdManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CloudControlConfig.CodeSeat f33285b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f33286c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f33287d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i f33288e;

    public DispatcherHandler(CloudControlConfig.CodeSeat codeSeat, i iVar) {
        this.f33285b = codeSeat;
        this.f33286c = codeSeat == null ? -1 : codeSeat.getCodeSeatType().intValue();
        this.f33287d = codeSeat == null ? "" : codeSeat.getCodeSeatId();
        this.f33288e = iVar;
    }

    public static Bundle a(i iVar, Network network, int i11, CloudControlConfig.CodeSeat codeSeat) {
        Bundle bundle = new Bundle();
        bundle.putInt(TrackingKey.REQUEST_TYPE, i11);
        bundle.putInt(TrackingKey.PLATFORM, network != null ? network.getSource().intValue() : -1);
        String codeSeatId = TmcConstants.COLD_OPEN_TYPE;
        bundle.putString("app_id", network != null ? network.getApplicationId() : TmcConstants.COLD_OPEN_TYPE);
        if (network != null) {
            codeSeatId = network.getCodeSeatId();
        }
        bundle.putString(TrackingKey.CODE_SEAT_ID, codeSeatId);
        bundle.putDouble(TrackingKey.BIDDING_PRICE, network != null ? network.getPrice().doubleValue() : -1.0d);
        bundle.putInt("ad_type", network != null ? network.getAdt() : -1);
        bundle.putLong(TrackingKey.REQUEST_TS, System.currentTimeMillis());
        bundle.putString(TrackingKey.CLD_APP_ID, TAdManager.getAppId());
        bundle.putInt(TrackingKey.PRIORITY, iVar.E());
        bundle.putInt(TrackingKey.OPTIMIZE_STATUS, 1);
        bundle.putInt(TrackingKey.PRIORITY_CODE, iVar.D());
        Bundle bundleV = iVar.v();
        if (bundleV == null) {
            if (codeSeat != null) {
                bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, codeSeat.getCodeSeatId());
                bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, codeSeat.getTrafficGroupId());
                bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, codeSeat.getExperimentGroupId());
            }
            bundle.putString(TrackingKey.TRIGGER_ID, TrackingUtil.getTriggerId());
            bundle.putLong(TrackingKey.TRIGGER_TS, System.currentTimeMillis());
            return bundle;
        }
        try {
            bundle.putInt(TrackingKey.REQUEST_TIME, (int) (System.currentTimeMillis() - bundleV.getLong(TrackingKey.TRIGGER_TS)));
        } catch (Exception unused) {
        }
        bundle.putString(TrackingKey.TRIGGER_ID, bundleV.getString(TrackingKey.TRIGGER_ID));
        bundle.putLong(TrackingKey.TRIGGER_TS, bundleV.getLong(TrackingKey.TRIGGER_TS));
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, bundleV.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, bundleV.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putInt(TrackingKey.AD_TRIGGER_STATUS, bundleV.getInt(TrackingKey.AD_TRIGGER_STATUS));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, bundleV.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, bundleV.getString(TrackingKey.EXPERIMENT_GROUP_ID));
        bundle.putDouble(TrackingKey.PRICE_COEFFICIENT, network != null ? network.getShowPriceCoefficient().doubleValue() : 0.0d);
        return bundle;
    }

    public AdCache b() {
        AdCache cache = AdCacheManager.getCache(this.f33286c);
        return cache == null ? new AdCache() : cache;
    }

    public final Iad c(Context context, Network network, int i11, int i12) {
        if (network == null) {
            return null;
        }
        network.setAdt(this.f33286c);
        IBaseAdSummary iBaseAdSummaryF = o.a().f(network.getSource().intValue());
        if (iBaseAdSummaryF == null) {
            return null;
        }
        int i13 = this.f33286c;
        switch (i13) {
            case 1:
            case 6:
                BaseNative baseNative = iBaseAdSummaryF.getNative(context, network, i13);
                if (baseNative != null) {
                    baseNative.setChoicesPosition(this.f33288e.a());
                    baseNative.setAdmobMediaAspectRatio(this.f33288e.h());
                    if (i12 <= 0) {
                        i12 = 60;
                    }
                    baseNative.setTtl(i12);
                    baseNative.setAdCount(i11);
                    baseNative.setLoadStatus(0);
                    baseNative.setAdSource(network.getSource().intValue());
                    baseNative.setContainVulgarContent(this.f33288e.J());
                    baseNative.setAdLoadScenes(this.f33288e.z(), this.f33288e.B(), this.f33288e.x());
                    baseNative.setCurrActivityFullscreen(this.f33288e.K());
                    baseNative.setRecommendReqInfo(this.f33288e.G());
                }
                return baseNative;
            case 2:
                BaseBanner banner = iBaseAdSummaryF.getBanner(context, network, this.f33288e.r(), this.f33288e.t());
                if (banner != null) {
                    if (i12 <= 0) {
                        i12 = 60;
                    }
                    banner.setTtl(i12);
                    banner.setAdSource(network.getSource().intValue());
                    banner.setLoadStatus(0);
                    banner.setHideAdCloseView(this.f33288e.L());
                    banner.setContainVulgarContent(this.f33288e.J());
                    banner.setAdLoadScenes(this.f33288e.z(), this.f33288e.B(), this.f33288e.x());
                    banner.setCurrActivityFullscreen(this.f33288e.K());
                    banner.setCurrActivityFullscreen(this.f33288e.K());
                    banner.setBannerAdWidth(this.f33288e.o());
                    banner.setBannerAdMaxHeight(this.f33288e.l());
                    banner.setCloseDirectlyWithoutJumping(this.f33288e.I());
                }
                return banner;
            case 3:
                BaseInterstitial interstitial = iBaseAdSummaryF.getInterstitial(context, network);
                if (interstitial != null) {
                    if (i12 <= 0) {
                        i12 = 60;
                    }
                    interstitial.setTtl(i12);
                    interstitial.setAdSource(network.getSource().intValue());
                    interstitial.setLoadStatus(0);
                    interstitial.setContainVulgarContent(this.f33288e.J());
                    interstitial.setAdLoadScenes(this.f33288e.z(), this.f33288e.B(), this.f33288e.x());
                    interstitial.setCurrActivityFullscreen(this.f33288e.K());
                }
                return interstitial;
            case 4:
                BaseSplash splash = iBaseAdSummaryF.getSplash(context, network);
                if (splash != null) {
                    if (i12 <= 0) {
                        i12 = 240;
                    }
                    splash.setTtl(i12);
                    splash.setAdSource(network.getSource().intValue());
                    splash.setLoadStatus(0);
                    splash.setOrientation(this.f33288e.F());
                    splash.setSplashMode(this.f33288e.H());
                    splash.setContainVulgarContent(this.f33288e.J());
                    splash.setAdLoadScenes(this.f33288e.z(), this.f33288e.B(), this.f33288e.x());
                    splash.setCurrActivityFullscreen(this.f33288e.K());
                }
                return splash;
            case 5:
                BaseVideo video = iBaseAdSummaryF.getVideo(context, network);
                if (video != null) {
                    if (i12 <= 0) {
                        i12 = 60;
                    }
                    video.setTtl(i12);
                    video.setAdSource(network.getSource().intValue());
                    video.setLoadStatus(0);
                    video.setContainVulgarContent(this.f33288e.J());
                    video.setAdLoadScenes(this.f33288e.z(), this.f33288e.B(), this.f33288e.x());
                }
                return video;
            default:
                return null;
        }
    }

    public Iad d(Context context, CloudControlConfig.CodeSeat codeSeat, Network network) {
        Iad request;
        if (codeSeat == null || network == null || TextUtils.isEmpty(network.getCodeSeatId())) {
            MediaLogUtil.e("LoadAdManager", "create Executor, network or codeSeat of codeSeatId is empty");
            return null;
        }
        if (AdUtil.requestStatusOff() || (request = RequestingAdManager.getInstance().getRequest(codeSeat.getCodeSeatId(), network.getCodeSeatId())) == null) {
            return p(context, codeSeat, network);
        }
        AdLogUtil.Log().d("LoadAdManager", "*----> exist loading Ad id: " + request.getPlacementId());
        return request;
    }

    public CopyOnWriteArrayList f(Context context, List list, List list2, List list3, boolean z10) {
        Iad iadD;
        List<Network> arrayList = list3 == null ? new ArrayList() : list3;
        if (list != null && !list.isEmpty()) {
            arrayList.addAll(list);
        }
        q(arrayList);
        if (LogSwitch.isDebug) {
            AdLogUtil.Log().d("LoadAdManager", "*----> loadWaterfallAd ---- netWorks = " + arrayList.toString());
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        int iMax = Math.max(1, Math.min(n(), this.f33285b.getAdRequestCount().intValue()));
        if (!list2.isEmpty()) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                Network network = (Network) it.next();
                if (i(network, z10)) {
                    Iterator it2 = it;
                    int adNum = b().getAdNum(this.f33287d, network.getSource().intValue(), network.getCodeSeatId(), this.f33288e.J());
                    boolean zH = h(network);
                    if (iMax - adNum > 0 || zH) {
                        Iad iadD2 = d(context, this.f33285b, network);
                        if (iadD2 != null) {
                            copyOnWriteArrayList.add(iadD2);
                        }
                    } else {
                        AdLogUtil.Log().d("LoadAdManager", "*----> exist ad source:" + network.getSource() + " ,network codeSeat :" + network.getCodeSeatId() + ",need number <= 0");
                    }
                    it = it2;
                }
            }
        }
        boolean z11 = false;
        for (Network network2 : arrayList) {
            if (network2 != null) {
                if (z11) {
                    AdLogUtil.Log().d("LoadAdManager", "*----> exist higher ecpm ad in current waterfall.");
                } else {
                    int adNum2 = b().getAdNum(this.f33287d, network2.getSource().intValue(), network2.getCodeSeatId(), this.f33288e.J());
                    z11 = adNum2 > 0;
                    boolean zH2 = h(network2);
                    if (iMax - adNum2 <= 0 && !zH2) {
                        AdLogUtil.Log().d("LoadAdManager", "*----> exist ad source:" + network2.getSource() + " ,network codeSeat :" + network2.getCodeSeatId() + ",need number <= 0");
                    } else if (i(network2, z10) && (iadD = d(context, this.f33285b, network2)) != null) {
                        copyOnWriteArrayList.add(iadD);
                    }
                }
            }
        }
        return copyOnWriteArrayList;
    }

    public void g(CopyOnWriteArrayList copyOnWriteArrayList) {
        if (copyOnWriteArrayList == null) {
            return;
        }
        AdLogUtil.Log().d("LoadAdManager", "sort executer list");
        if (LogSwitch.isDebug) {
            StringBuilder sb2 = new StringBuilder();
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                Iad iad = (Iad) it.next();
                if (iad != null && iad.getNetwork() != null) {
                    sb2.append(iad.getNetwork().toString());
                }
            }
            AdLogUtil.Log().d("LoadAdManager", "*before* sort executer list are: " + sb2.toString());
        }
        try {
            ArrayList arrayList = new ArrayList(copyOnWriteArrayList);
            Collections.sort(arrayList, new Comparator<Iad>() { // from class: com.hisavana.mediation.handler.DispatcherHandler.2
                @Override // java.util.Comparator
                public int compare(Iad iad2, Iad iad3) {
                    if (iad2 == null || iad3 == null || iad2.getNetwork() == null || iad3.getNetwork() == null) {
                        return 0;
                    }
                    return -((int) ((iad2.getNetwork().getPrice().doubleValue() * 100.0d) - (iad3.getNetwork().getPrice().doubleValue() * 100.0d)));
                }
            });
            copyOnWriteArrayList.clear();
            copyOnWriteArrayList.addAll(arrayList);
        } catch (Exception e11) {
            AdLogUtil.Log().e("LoadAdManager", Log.getStackTraceString(e11));
        }
        if (LogSwitch.isDebug) {
            StringBuilder sb3 = new StringBuilder();
            Iterator it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                Iad iad2 = (Iad) it2.next();
                if (iad2 != null && iad2.getNetwork() != null) {
                    sb3.append(iad2.getNetwork().toString());
                }
            }
            AdLogUtil.Log().d("LoadAdManager", "*after* sort executer list are: " + sb3.toString());
        }
    }

    public final boolean h(Network network) {
        AdCache adCacheB;
        ICacheAd adBySourceAndUnitID;
        return (network == null || network.getAdt() == 6 || network.getSource().intValue() != 0 || b.f22711a.b() != 1 || (adCacheB = b()) == null || (adBySourceAndUnitID = adCacheB.getAdBySourceAndUnitID(this.f33287d, network.getSource().intValue(), this.f33288e.J())) == null || !adBySourceAndUnitID.isInternalAd()) ? false : true;
    }

    public final boolean i(Network network, boolean z10) {
        if (network == null) {
            return false;
        }
        if (z10 && network.getSource().intValue() == 5) {
            AdLogUtil.Log().e(ComConstants.IRON_SOURCE_TAG, "IronSource Do not preload  mLoadType = preload ---  network.getSource() = " + network.getSource());
            return false;
        }
        if (!z10 || network.getSource().intValue() != 14 || network.getAdt() != 2) {
            return true;
        }
        AdLogUtil.Log().e("LoadAdManager", "MAX Do not preload");
        return false;
    }

    public final boolean j(Iad iad, int i11, int i12) {
        AdLogUtil.Log().d("LoadAdManager", "*----> loadAd id: " + iad.getPlacementId() + ",EcpmPrice: " + iad.getEcpmPrice() + ",AdSource: " + iad.getAdSource());
        iad.setSupportFlag(this.f33288e.D());
        iad.setTrackingBundle(a(this.f33288e, iad.getNetwork(), i11, this.f33285b));
        iad.setOfflineAd(i11 == 5);
        iad.setRequestType(i11);
        iad.setRequestRound(i12);
        iad.setLoadStatus(1);
        iad.setPreload(i11 == 2);
        iad.loadAd();
        if (LogSwitch.isDebug) {
            RecordTestInfo.LogMsg(ComConstants.transferSourceToStr(iad.getAdSource()), RecordTestInfo.LOG_CODE5);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ad start load,adSource ");
        sb2.append(iad.getAdSource());
        sb2.append(",id ");
        sb2.append(iad.getNetwork() == null ? "" : iad.getNetwork().getCodeSeatId());
        MediaLogUtil.d("LoadAdManager", sb2.toString());
        return true;
    }

    public boolean k(Iad iad, int i11, int i12, TInnerAdRequestBody tInnerAdRequestBody) {
        return l(iad, i11, i12, tInnerAdRequestBody, false);
    }

    public boolean l(Iad iad, int i11, int i12, TInnerAdRequestBody tInnerAdRequestBody, boolean z10) {
        if (iad == null) {
            return false;
        }
        if (z10) {
            if (iad.getLoadStatus() == 0) {
                iad.addRequestBody(tInnerAdRequestBody);
                return j(iad, i11, i12);
            }
        } else {
            if (iad.getLoadStatus() == 0) {
                iad.addRequestBody(tInnerAdRequestBody);
                return j(iad, i11, i12);
            }
            if (iad.getLoadStatus() == 4) {
                iad.addRequestBody(tInnerAdRequestBody);
                AdLogUtil.Log().d("LoadAdManager", "*----> exist loading Ad id: " + iad.getPlacementId() + ",bind context for it");
                iad.setLoadStatus(1);
                Network network = iad.getNetwork();
                if (network != null && b().getAdNum(this.f33287d, network.getSource().intValue(), network.getCodeSeatId(), this.f33288e.J()) > 0 && tInnerAdRequestBody.getAdListener() != null) {
                    tInnerAdRequestBody.getAdListener().onLoad();
                    return true;
                }
                RequestingAdManager.getInstance().removeRequest(iad);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ad start load,adSource ");
                sb2.append(iad.getAdSource());
                sb2.append(",id ");
                sb2.append(iad.getNetwork() == null ? "" : iad.getNetwork().getCodeSeatId());
                MediaLogUtil.d("LoadAdManager", sb2.toString());
            }
        }
        return false;
    }

    public boolean m(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Iad iad = (Iad) it.next();
            if (iad != null) {
                int loadStatus = iad.getLoadStatus();
                if (loadStatus == 0 || loadStatus == 1) {
                    return false;
                }
                if (loadStatus == 2) {
                    return true;
                }
            }
        }
        return true;
    }

    public final int n() {
        return this.f33286c == 6 ? Integer.MAX_VALUE : 1;
    }

    public final Iad p(Context context, CloudControlConfig.CodeSeat codeSeat, Network network) {
        int iMax = Math.max(1, Math.min(n(), this.f33285b.getAdRequestCount().intValue()));
        Iad iadC = c(context, network, iMax, codeSeat.getCacheTimeout().intValue());
        if (iadC == null) {
            AdLogUtil.Log().e("LoadAdManager", "create execute:" + network.getSource() + " fail");
            MediaLogUtil.e("LoadAdManager", "create executor,source " + network.getSource() + ",id " + network.getCodeSeatId() + " fail");
            return null;
        }
        iadC.setEcpmPrice(network.getPrice().doubleValue());
        iadC.setAdUnit(this.f33287d);
        RecordTestInfo.record("add ad to list adSource:" + iadC.getAdSource() + ",network codeSeat:" + network.getCodeSeatId() + " request num:" + iMax);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("add ad executor to list,adSource ");
        sb2.append(iadC.getAdSource());
        sb2.append(",id ");
        sb2.append(network.getCodeSeatId());
        MediaLogUtil.d("LoadAdManager", sb2.toString());
        return iadC;
    }

    public final void q(List list) {
        Collections.sort(list, new Comparator<Network>() { // from class: com.hisavana.mediation.handler.DispatcherHandler.1
            @Override // java.util.Comparator
            public int compare(Network network, Network network2) {
                if (network == null || network2 == null) {
                    return 0;
                }
                int i11 = -((int) ((network.getPrice().doubleValue() * 100.0d) - (network2.getPrice().doubleValue() * 100.0d)));
                if (i11 == 0) {
                    if (DispatcherHandler.this.b().getAdNum(DispatcherHandler.this.f33287d, network.getSource().intValue(), network.getCodeSeatId(), DispatcherHandler.this.f33288e.J()) > 0) {
                        return -1;
                    }
                    if (DispatcherHandler.this.b().getAdNum(DispatcherHandler.this.f33287d, network2.getSource().intValue(), network2.getCodeSeatId(), DispatcherHandler.this.f33288e.J()) > 0) {
                        return 1;
                    }
                }
                return i11;
            }
        });
    }
}
