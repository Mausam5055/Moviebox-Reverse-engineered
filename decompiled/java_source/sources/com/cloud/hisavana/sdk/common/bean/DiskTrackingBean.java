package com.cloud.hisavana.sdk.common.bean;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.util.a0;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010:\u001a\u00020;H\u0002J\u000e\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020>J\b\u0010?\u001a\u00020\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082D¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0004R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\u0004R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\b\"\u0004\b\u000f\u0010\u0004R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\b\"\u0004\b\u0018\u0010\u0004R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0000X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\b\"\u0004\b \u0010\u0004R\u001c\u0010!\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\b\"\u0004\b#\u0010\u0004R\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\b\"\u0004\b,\u0010\u0004R\u001a\u0010-\u001a\u00020.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\bR\u001c\u00104\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\b\"\u0004\b6\u0010\u0004R\u001a\u00107\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\b\"\u0004\b9\u0010\u0004¨\u0006@"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;", "", "trackingUrl", "", "(Ljava/lang/String;)V", "TAG", "adCreativeId", "getAdCreativeId", "()Ljava/lang/String;", "setAdCreativeId", "advertiserId", "getAdvertiserId", "setAdvertiserId", "codeSeatId", "getCodeSeatId", "setCodeSeatId", "createTime", "", "getCreateTime", "()J", "setCreateTime", "(J)V", "md5", "getMd5", "setMd5", "next", "getNext", "()Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;", "setNext", "(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V", "packageName", "getPackageName", "setPackageName", "requestId", "getRequestId", "setRequestId", "retryTimes", "Ljava/util/concurrent/atomic/AtomicInteger;", "getRetryTimes", "()Ljava/util/concurrent/atomic/AtomicInteger;", "setRetryTimes", "(Ljava/util/concurrent/atomic/AtomicInteger;)V", "showId", "getShowId", "setShowId", "showTrackingUrlsLogEnable", "", "getShowTrackingUrlsLogEnable", "()Z", "setShowTrackingUrlsLogEnable", "(Z)V", "getTrackingUrl", "triggerId", "getTriggerId", "setTriggerId", "uuid", "getUuid", "setUuid", "createMd5", "", "setData", CommonLogUtil.TAG_AD, "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "toString", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DiskTrackingBean {
    private String adCreativeId;
    private String advertiserId;
    private String codeSeatId;
    private long createTime;
    private String md5;
    private transient DiskTrackingBean next;
    private String packageName;
    private String requestId;
    private String showId;
    private boolean showTrackingUrlsLogEnable;
    private final String trackingUrl;
    private String triggerId;
    private final transient String TAG = "DiskTrackingBean";
    private AtomicInteger retryTimes = new AtomicInteger(0);
    private String uuid = "";

    public DiskTrackingBean(String str) {
        this.trackingUrl = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        createMd5();
        this.createTime = System.currentTimeMillis();
        this.retryTimes.set(0);
    }

    private final void createMd5() {
        String str = this.trackingUrl;
        if (str != null) {
            this.md5 = a0.c(str);
        }
    }

    public final String getAdCreativeId() {
        return this.adCreativeId;
    }

    public final String getAdvertiserId() {
        return this.advertiserId;
    }

    public final String getCodeSeatId() {
        return this.codeSeatId;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    public final String getMd5() {
        return this.md5;
    }

    public final DiskTrackingBean getNext() {
        return this.next;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final AtomicInteger getRetryTimes() {
        return this.retryTimes;
    }

    public final String getShowId() {
        return this.showId;
    }

    public final boolean getShowTrackingUrlsLogEnable() {
        return this.showTrackingUrlsLogEnable;
    }

    public final String getTrackingUrl() {
        return this.trackingUrl;
    }

    public final String getTriggerId() {
        return this.triggerId;
    }

    public final String getUuid() {
        return this.uuid;
    }

    public final void setAdCreativeId(String str) {
        this.adCreativeId = str;
    }

    public final void setAdvertiserId(String str) {
        this.advertiserId = str;
    }

    public final void setCodeSeatId(String str) {
        this.codeSeatId = str;
    }

    public final void setCreateTime(long j11) {
        this.createTime = j11;
    }

    public final void setData(AdsDTO ad2) {
        List<String> logEnable;
        Intrinsics.h(ad2, "ad");
        this.uuid = ad2.getUuid() + this.md5;
        this.showId = ad2.getUuid();
        AdxImpBean impBeanRequest = ad2.getImpBeanRequest();
        this.triggerId = impBeanRequest != null ? impBeanRequest.triggerId : null;
        AdxImpBean impBeanRequest2 = ad2.getImpBeanRequest();
        this.requestId = impBeanRequest2 != null ? impBeanRequest2.requestId : null;
        this.advertiserId = ad2.getAdvertiserId();
        AdxImpBean impBeanRequest3 = ad2.getImpBeanRequest();
        this.codeSeatId = impBeanRequest3 != null ? impBeanRequest3.pmid : null;
        this.adCreativeId = ad2.getAdCreativeId();
        String packageName = ad2.getPackageName();
        this.packageName = (packageName == null || packageName.length() == 0) ? ad2.getPackageName() : ad2.getPsPackageName();
        AdsProtocolBean.Ext ext = ad2.getExt();
        this.showTrackingUrlsLogEnable = (ext == null || (logEnable = ext.getLogEnable()) == null) ? false : logEnable.contains("showTrackingUrlsLogEnable");
    }

    public final void setMd5(String str) {
        this.md5 = str;
    }

    public final void setNext(DiskTrackingBean diskTrackingBean) {
        this.next = diskTrackingBean;
    }

    public final void setPackageName(String str) {
        this.packageName = str;
    }

    public final void setRequestId(String str) {
        this.requestId = str;
    }

    public final void setRetryTimes(AtomicInteger atomicInteger) {
        Intrinsics.h(atomicInteger, "<set-?>");
        this.retryTimes = atomicInteger;
    }

    public final void setShowId(String str) {
        this.showId = str;
    }

    public final void setShowTrackingUrlsLogEnable(boolean z10) {
        this.showTrackingUrlsLogEnable = z10;
    }

    public final void setTriggerId(String str) {
        this.triggerId = str;
    }

    public final void setUuid(String str) {
        Intrinsics.h(str, "<set-?>");
        this.uuid = str;
    }

    public String toString() {
        return "uuid:" + this.uuid + ",urls:" + this.trackingUrl;
    }
}
