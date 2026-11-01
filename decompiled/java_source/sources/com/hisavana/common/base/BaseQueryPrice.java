package com.hisavana.common.base;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.hisavana.common.bean.Network;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.interfacz.QueryPriceListener;
import com.hisavana.common.tracking.TrackingKey;
import com.hisavana.common.tracking.TrackingManager;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseQueryPrice {
    private long mInquiryStartTime;
    protected QueryPriceListener mQueryPriceListener = null;
    private Network mNetwork = null;
    private int orientation = 1;
    protected final Handler mMainHandler = new Handler(Looper.getMainLooper());
    public final Bundle mBundle = new Bundle();

    private void fillParamsToBundle(Bundle bundle) {
        Bundle bundle2;
        if (bundle == null || (bundle2 = this.mBundle) == null) {
            return;
        }
        bundle.putString(TrackingKey.TRIGGER_ID, bundle2.getString(TrackingKey.TRIGGER_ID));
        bundle.putInt(TrackingKey.PLATFORM, this.mBundle.getInt(TrackingKey.PLATFORM));
        bundle.putString("app_id", this.mBundle.getString("app_id"));
        bundle.putString(TrackingKey.CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CODE_SEAT_ID));
        bundle.putString(TrackingKey.CLD_CODE_SEAT_ID, this.mBundle.getString(TrackingKey.CLD_CODE_SEAT_ID));
        bundle.putString(TrackingKey.CLD_APP_ID, this.mBundle.getString(TrackingKey.CLD_APP_ID));
        bundle.putInt("ad_type", this.mBundle.getInt("ad_type"));
        bundle.putInt(TrackingKey.IS_PRE_TRIGGER, this.mBundle.getInt(TrackingKey.IS_PRE_TRIGGER));
        bundle.putString(TrackingKey.TRAFFIC_GROUP_ID, this.mBundle.getString(TrackingKey.TRAFFIC_GROUP_ID));
        bundle.putString(TrackingKey.EXPERIMENT_GROUP_ID, this.mBundle.getString(TrackingKey.EXPERIMENT_GROUP_ID));
    }

    public void destroy() {
        this.mQueryPriceListener = null;
    }

    public Network getNetwork() {
        return this.mNetwork;
    }

    public int getOrientation() {
        return this.orientation;
    }

    public abstract void queryPrice(Context context, Network network);

    public abstract void setBannerSize(int i11);

    public void setNetwork(Network network) {
        this.mNetwork = network;
    }

    public void setOrientation(int i11) {
        this.orientation = i11;
    }

    public void setQueryPriceListener(QueryPriceListener queryPriceListener) {
        this.mQueryPriceListener = queryPriceListener;
    }

    public void setTrackingBundle(Bundle bundle) {
        this.mBundle.putAll(bundle);
    }

    public void trackingBiddingFailed(int i11, String str) {
        Bundle bundle = new Bundle();
        long jCurrentTimeMillis = System.currentTimeMillis();
        bundle.putLong(TrackingKey.INQUIRY_RETURN_TS, jCurrentTimeMillis);
        bundle.putLong(TrackingKey.INQUIRY_RETURN_TIME, jCurrentTimeMillis - this.mInquiryStartTime);
        bundle.putInt("error_code", i11);
        bundle.putDouble(TrackingKey.BIDDING_PRICE, 0.0d);
        bundle.putString(TrackingKey.ERROR_MESSAGE, TAdErrorCode.simpleErrorMessage(str));
        fillParamsToBundle(bundle);
        TrackingManager.trackingAdBiddingReturn(bundle);
    }

    public void trackingBiddingStart() {
        Bundle bundle = new Bundle();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mInquiryStartTime = jCurrentTimeMillis;
        bundle.putLong(TrackingKey.INQUIRY_REQUEST_TS, jCurrentTimeMillis);
        fillParamsToBundle(bundle);
        TrackingManager.trackingAdBidding(bundle);
    }

    public void trackingBiddingSuccess(double d11) {
        Bundle bundle = new Bundle();
        long jCurrentTimeMillis = System.currentTimeMillis();
        bundle.putLong(TrackingKey.INQUIRY_RETURN_TS, jCurrentTimeMillis);
        bundle.putInt("error_code", 0);
        bundle.putDouble(TrackingKey.BIDDING_PRICE, d11);
        bundle.putLong(TrackingKey.INQUIRY_RETURN_TIME, jCurrentTimeMillis - this.mInquiryStartTime);
        fillParamsToBundle(bundle);
        TrackingManager.trackingAdBiddingReturn(bundle);
    }
}
