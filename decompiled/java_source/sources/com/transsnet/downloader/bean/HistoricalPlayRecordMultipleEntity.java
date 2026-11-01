package com.transsnet.downloader.bean;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsnet.downloader.viewmodel.a0;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import n6.a;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0010!\n\u0002\b\t\b\u0086\b\u0018\u0000 ?2\u00020\u00012\u00020\u0002:\u0001@B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J>\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u0015J\u0010\u0010\u001b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u001b\u0010\u0011J\u001a\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cHÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\"\u0010\u0004\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010!\u001a\u0004\b\"\u0010\u0011\"\u0004\b#\u0010$R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010%\u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010(R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010)\u001a\u0004\b*\u0010\u0015\"\u0004\b+\u0010,R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010-\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u00100R\"\u00101\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b1\u00103\"\u0004\b4\u00105R\"\u00106\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00102\u001a\u0004\b6\u00103\"\u0004\b7\u00105R\u001d\u00109\u001a\b\u0012\u0004\u0012\u00020\u0000088\u0006¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0014\u0010>\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010\u0011¨\u0006A"}, d2 = {"Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;", "Ljava/io/Serializable;", "Ln6/a;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;", "historical", "", CampaignEx.JSON_KEY_TITLE, "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nonAdDelegate", "<init>", "(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "", "setSeriesDownloadBean2Entity", "()V", "component1", "()I", "component2", "()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;", "component3", "()Ljava/lang/String;", "component4", "()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "copy", "(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "I", "getType", "setType", "(I)V", "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;", "getHistorical", "setHistorical", "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;)V", "Ljava/lang/String;", "getTitle", "setTitle", "(Ljava/lang/String;)V", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "getNonAdDelegate", "setNonAdDelegate", "(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V", "isCheck", "Z", "()Z", "setCheck", "(Z)V", "isSeriesAllCheck", "setSeriesAllCheck", "", "seriesList", "Ljava/util/List;", "getSeriesList", "()Ljava/util/List;", "getItemType", "itemType", "Companion", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class HistoricalPlayRecordMultipleEntity implements Serializable, a {
    public static final int ITEM_TYPE_AD = 3;
    public static final int ITEM_TYPE_CONTENT = 2;
    public static final int ITEM_TYPE_HEADER = 1;
    private HistoricalPlayRecordBean historical;
    private boolean isCheck;
    private boolean isSeriesAllCheck;
    private BiddingNativeManager nonAdDelegate;
    private final List<HistoricalPlayRecordMultipleEntity> seriesList;
    private String title;
    private int type;

    public HistoricalPlayRecordMultipleEntity(int i11, HistoricalPlayRecordBean historicalPlayRecordBean, String str, BiddingNativeManager biddingNativeManager) {
        this.type = i11;
        this.historical = historicalPlayRecordBean;
        this.title = str;
        this.nonAdDelegate = biddingNativeManager;
        this.isSeriesAllCheck = true;
        this.seriesList = new ArrayList();
    }

    public /* synthetic */ HistoricalPlayRecordMultipleEntity(int i11, HistoricalPlayRecordBean historicalPlayRecordBean, String str, BiddingNativeManager biddingNativeManager, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i12 & 2) != 0 ? null : historicalPlayRecordBean, (i12 & 4) != 0 ? null : str, (i12 & 8) != 0 ? null : biddingNativeManager);
    }

    public static /* synthetic */ HistoricalPlayRecordMultipleEntity copy$default(HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity, int i11, HistoricalPlayRecordBean historicalPlayRecordBean, String str, BiddingNativeManager biddingNativeManager, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = historicalPlayRecordMultipleEntity.type;
        }
        if ((i12 & 2) != 0) {
            historicalPlayRecordBean = historicalPlayRecordMultipleEntity.historical;
        }
        if ((i12 & 4) != 0) {
            str = historicalPlayRecordMultipleEntity.title;
        }
        if ((i12 & 8) != 0) {
            biddingNativeManager = historicalPlayRecordMultipleEntity.nonAdDelegate;
        }
        return historicalPlayRecordMultipleEntity.copy(i11, historicalPlayRecordBean, str, biddingNativeManager);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final HistoricalPlayRecordBean getHistorical() {
        return this.historical;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final HistoricalPlayRecordMultipleEntity copy(int type, HistoricalPlayRecordBean historical, String title, BiddingNativeManager nonAdDelegate) {
        return new HistoricalPlayRecordMultipleEntity(type, historical, title, nonAdDelegate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HistoricalPlayRecordMultipleEntity)) {
            return false;
        }
        HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity = (HistoricalPlayRecordMultipleEntity) other;
        return this.type == historicalPlayRecordMultipleEntity.type && Intrinsics.c(this.historical, historicalPlayRecordMultipleEntity.historical) && Intrinsics.c(this.title, historicalPlayRecordMultipleEntity.title) && Intrinsics.c(this.nonAdDelegate, historicalPlayRecordMultipleEntity.nonAdDelegate);
    }

    public final HistoricalPlayRecordBean getHistorical() {
        return this.historical;
    }

    @Override // n6.a
    public int getItemType() {
        return this.type;
    }

    public final BiddingNativeManager getNonAdDelegate() {
        return this.nonAdDelegate;
    }

    public final List<HistoricalPlayRecordMultipleEntity> getSeriesList() {
        return this.seriesList;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        int i11 = this.type * 31;
        HistoricalPlayRecordBean historicalPlayRecordBean = this.historical;
        int iHashCode = (i11 + (historicalPlayRecordBean == null ? 0 : historicalPlayRecordBean.hashCode())) * 31;
        String str = this.title;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        BiddingNativeManager biddingNativeManager = this.nonAdDelegate;
        return iHashCode2 + (biddingNativeManager != null ? biddingNativeManager.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isCheck, reason: from getter */
    public final boolean getIsCheck() {
        return this.isCheck;
    }

    /* JADX INFO: renamed from: isSeriesAllCheck, reason: from getter */
    public final boolean getIsSeriesAllCheck() {
        return this.isSeriesAllCheck;
    }

    public final void setCheck(boolean z10) {
        this.isCheck = z10;
    }

    public final void setHistorical(HistoricalPlayRecordBean historicalPlayRecordBean) {
        this.historical = historicalPlayRecordBean;
    }

    public final void setNonAdDelegate(BiddingNativeManager biddingNativeManager) {
        this.nonAdDelegate = biddingNativeManager;
    }

    public final void setSeriesAllCheck(boolean z10) {
        this.isSeriesAllCheck = z10;
    }

    public final void setSeriesDownloadBean2Entity() {
        DownloadBean video;
        List<DownloadBean> seriesList;
        this.seriesList.clear();
        HistoricalPlayRecordBean historicalPlayRecordBean = this.historical;
        if (historicalPlayRecordBean == null || (video = historicalPlayRecordBean.getVideo()) == null || (seriesList = video.getSeriesList()) == null) {
            return;
        }
        for (DownloadBean downloadBean : seriesList) {
            this.seriesList.add(new HistoricalPlayRecordMultipleEntity(2, new HistoricalPlayRecordBean(downloadBean.getType(), Long.valueOf(downloadBean.getLastPlayTimeStamp()), TimeUtilKt.m(downloadBean.getLastPlayTimeStamp()), a0.f60085a.z(downloadBean.getLastPlayTimeStamp()), null, downloadBean, null, null, null, 448, null), null, null, 12, null));
        }
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public String toString() {
        return "HistoricalPlayRecordMultipleEntity(type=" + this.type + ", historical=" + this.historical + ", title=" + this.title + ", nonAdDelegate=" + this.nonAdDelegate + ")";
    }
}
