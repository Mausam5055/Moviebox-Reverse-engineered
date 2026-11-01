package com.hisavana.mintegral.bidding;

import android.content.Context;
import android.os.Looper;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.cloud.sdk.commonutil.util.e;
import com.hisavana.common.base.BaseQueryPrice;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.constant.ComConstants;
import com.hisavana.common.interfacz.IBidWithNotify;
import com.hisavana.common.utils.AdLogUtil;
import com.hisavana.mintegral.check.ExistsCheck;
import com.hisavana.mintegral.check.MBridgeSDKManager;
import com.mbridge.msdk.mbbid.out.BannerBidRequestParams;
import com.mbridge.msdk.mbbid.out.BidListennning;
import com.mbridge.msdk.mbbid.out.BidLossCode;
import com.mbridge.msdk.mbbid.out.BidManager;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.mbbid.out.SplashBidRequestParams;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class MintegralBidding extends BaseQueryPrice {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f33289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f33290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f33291c;

    /* JADX INFO: renamed from: com.hisavana.mintegral.bidding.MintegralBidding$2, reason: invalid class name */
    class AnonymousClass2 implements BidListennning {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f33295a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Network f33296b;

        AnonymousClass2(long j11, Network network) {
            this.f33295a = j11;
            this.f33296b = network;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            if (((BaseQueryPrice) MintegralBidding.this).mQueryPriceListener != null) {
                ((BaseQueryPrice) MintegralBidding.this).mQueryPriceListener.onQueryPriceFailed();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Network network) {
            if (((BaseQueryPrice) MintegralBidding.this).mQueryPriceListener != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(network);
                ((BaseQueryPrice) MintegralBidding.this).mQueryPriceListener.onQueryPriceSuccess(arrayList);
            }
        }

        @Override // com.mbridge.msdk.mbbid.out.BidListennning
        public void onFailed(String str) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f33295a;
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "*---->mintegral bidding request fail --- : " + this.f33296b.getCodeSeatId() + " | " + str + ",time use:" + jCurrentTimeMillis);
            if (this.f33296b == null) {
                return;
            }
            MintegralBidding.this.trackingBiddingFailed(TAdErrorCode.CODE_REQUEST_BIDDING_FAILED, str);
            Preconditions.d(new Preconditions.a() { // from class: com.hisavana.mintegral.bidding.b
                @Override // com.cloud.sdk.commonutil.util.Preconditions.a
                public final void onRun() {
                    this.f33303a.c();
                }
            });
        }

        @Override // com.mbridge.msdk.mbbid.out.BidListennning
        public void onSuccessed(BidResponsed bidResponsed) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f33295a;
            if (bidResponsed == null || this.f33296b == null) {
                return;
            }
            Double dValueOf = Double.valueOf(0.0d);
            try {
                dValueOf = Double.valueOf(Double.parseDouble(bidResponsed.getPrice()) * 100.0d);
            } catch (Exception unused) {
                AdLogUtil.Log().e(ExistsCheck.MINTEGRAL_TAG, "*----> mintegral bidding success ---,price is:" + dValueOf + ",id:" + this.f33296b.getCodeSeatId() + ",time use:" + jCurrentTimeMillis);
            }
            MintegralBidding.this.trackingBiddingSuccess(dValueOf.doubleValue());
            this.f33296b.setPrice(dValueOf);
            this.f33296b.setBidInfo(new BidWithNotify(bidResponsed));
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "*----> mintegral bidding success ---,price is:" + dValueOf + ",id:" + this.f33296b.getCodeSeatId());
            final Network network = this.f33296b;
            Preconditions.d(new Preconditions.a() { // from class: com.hisavana.mintegral.bidding.a
                @Override // com.cloud.sdk.commonutil.util.Preconditions.a
                public final void onRun() {
                    this.f33301a.d(network);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class BidWithNotify implements IBidWithNotify {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final BidResponsed f33298a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f33299b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f33300c = System.currentTimeMillis();

        BidWithNotify(BidResponsed bidResponsed) {
            this.f33298a = bidResponsed;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            this.f33298a.sendLossNotice(e.a(), BidLossCode.bidPriceNotHighest());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            this.f33298a.sendWinNotice(e.a());
            this.f33299b = true;
        }

        @Override // com.hisavana.common.interfacz.IBidWithNotify
        public String getPayload() {
            if (this.f33298a == null) {
                return "";
            }
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "mintegral getPayload" + this.f33298a.getBidToken());
            return this.f33298a.getBidToken();
        }

        @Override // com.hisavana.common.interfacz.IBidWithNotify
        public boolean isExpired() {
            return Math.abs(System.currentTimeMillis() - this.f33300c) > ((long) ComConstants.BID_PRICE_CACHE_TIME);
        }

        @Override // com.hisavana.common.interfacz.IBidWithNotify
        public void notifyLoss() {
            if (this.f33299b || this.f33298a == null) {
                return;
            }
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "notify mintegral bidding failed");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.f23167a.g(new Runnable() { // from class: com.hisavana.mintegral.bidding.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f33304a.c();
                    }
                });
            } else {
                this.f33298a.sendLossNotice(e.a(), BidLossCode.bidPriceNotHighest());
            }
        }

        @Override // com.hisavana.common.interfacz.IBidWithNotify
        public void notifyWin() {
            if (this.f33298a == null) {
                return;
            }
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "notify mintegral bidding win");
            if (Looper.myLooper() == Looper.getMainLooper()) {
                HSScopeHelper.f23167a.g(new Runnable() { // from class: com.hisavana.mintegral.bidding.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f33305a.d();
                    }
                });
            } else {
                this.f33298a.sendWinNotice(e.a());
                this.f33299b = true;
            }
        }
    }

    private void b() {
        int i11 = this.f33289a;
        if (i11 == 1) {
            this.f33290b = 100;
            this.f33291c = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        } else if (i11 == 2) {
            this.f33290b = 250;
            this.f33291c = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        } else if (i11 != 3) {
            this.f33290b = 50;
            this.f33291c = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        } else {
            this.f33290b = 90;
            this.f33291c = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        }
    }

    @Override // com.hisavana.common.base.BaseQueryPrice
    public void destroy() {
        this.mQueryPriceListener = null;
    }

    @Override // com.hisavana.common.base.BaseQueryPrice
    public void queryPrice(Context context, final Network network) {
        if (network == null || context == null) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ExistsCheck.initAdSource(network.getApplicationId(), network.getApplicationKey(), new MBridgeSDKManager.MBridgeSDKInitializeListener() { // from class: com.hisavana.mintegral.bidding.MintegralBidding.1
            @Override // com.hisavana.mintegral.check.MBridgeSDKManager.MBridgeSDKInitializeListener
            public void onInitializeFailure(String str) {
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "init onError message：" + str);
            }

            @Override // com.hisavana.mintegral.check.MBridgeSDKManager.MBridgeSDKInitializeListener
            public void onInitializeSuccess(String str, String str2) {
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "onInitializeSuccess，init time " + jCurrentTimeMillis2);
                MintegralBidding.this.startQueryPrice(network);
            }
        });
    }

    @Override // com.hisavana.common.base.BaseQueryPrice
    public void setBannerSize(int i11) {
        this.f33289a = i11;
    }

    public void startQueryPrice(Network network) {
        BidManager bidManager;
        if (network == null) {
            return;
        }
        int adt = network.getAdt();
        if (adt == 2) {
            b();
            bidManager = new BidManager(new BannerBidRequestParams("", network.getCodeSeatId(), this.f33291c, this.f33290b));
        } else if (adt != 4) {
            bidManager = new BidManager("", network.getCodeSeatId());
        } else {
            AdLogUtil.Log().d(ExistsCheck.MINTEGRAL_TAG, "*---->mintegral bidding getOrientation() --- :" + getOrientation());
            bidManager = new BidManager(new SplashBidRequestParams("", network.getCodeSeatId(), true, getOrientation(), 30, 30));
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        trackingBiddingStart();
        bidManager.setBidListener(new AnonymousClass2(jCurrentTimeMillis, network));
        bidManager.bid();
    }
}
