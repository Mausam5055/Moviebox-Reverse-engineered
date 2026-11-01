package com.transsion.mpush.core.net;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.mpush.api.PermanentPushMessage;
import com.transsion.mpush.core.config.PagerConfig;
import com.transsion.mpush.core.config.PermanentConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B5\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J?\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0007HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006 "}, d2 = {"Lcom/transsion/mpush/core/net/SdkPermanentMsgResp;", "", "pager", "Lcom/transsion/mpush/core/config/PagerConfig;", "cfg", "Lcom/transsion/mpush/core/config/PermanentConfig;", CampaignEx.JSON_KEY_TITLE, "", "items", "", "Lcom/transsion/mpush/api/PermanentPushMessage;", "<init>", "(Lcom/transsion/mpush/core/config/PagerConfig;Lcom/transsion/mpush/core/config/PermanentConfig;Ljava/lang/String;Ljava/util/List;)V", "getPager", "()Lcom/transsion/mpush/core/config/PagerConfig;", "getCfg", "()Lcom/transsion/mpush/core/config/PermanentConfig;", "getTitle", "()Ljava/lang/String;", "getItems", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SdkPermanentMsgResp {
    private final PermanentConfig cfg;
    private final List<PermanentPushMessage> items;
    private final PagerConfig pager;
    private final String title;

    public SdkPermanentMsgResp(PagerConfig pagerConfig, PermanentConfig permanentConfig, String str, List<PermanentPushMessage> list) {
        this.pager = pagerConfig;
        this.cfg = permanentConfig;
        this.title = str;
        this.items = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SdkPermanentMsgResp copy$default(SdkPermanentMsgResp sdkPermanentMsgResp, PagerConfig pagerConfig, PermanentConfig permanentConfig, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            pagerConfig = sdkPermanentMsgResp.pager;
        }
        if ((i11 & 2) != 0) {
            permanentConfig = sdkPermanentMsgResp.cfg;
        }
        if ((i11 & 4) != 0) {
            str = sdkPermanentMsgResp.title;
        }
        if ((i11 & 8) != 0) {
            list = sdkPermanentMsgResp.items;
        }
        return sdkPermanentMsgResp.copy(pagerConfig, permanentConfig, str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PagerConfig getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PermanentConfig getCfg() {
        return this.cfg;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final List<PermanentPushMessage> component4() {
        return this.items;
    }

    public final SdkPermanentMsgResp copy(PagerConfig pager, PermanentConfig cfg, String title, List<PermanentPushMessage> items) {
        return new SdkPermanentMsgResp(pager, cfg, title, items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SdkPermanentMsgResp)) {
            return false;
        }
        SdkPermanentMsgResp sdkPermanentMsgResp = (SdkPermanentMsgResp) other;
        return Intrinsics.c(this.pager, sdkPermanentMsgResp.pager) && Intrinsics.c(this.cfg, sdkPermanentMsgResp.cfg) && Intrinsics.c(this.title, sdkPermanentMsgResp.title) && Intrinsics.c(this.items, sdkPermanentMsgResp.items);
    }

    public final PermanentConfig getCfg() {
        return this.cfg;
    }

    public final List<PermanentPushMessage> getItems() {
        return this.items;
    }

    public final PagerConfig getPager() {
        return this.pager;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        PagerConfig pagerConfig = this.pager;
        int iHashCode = (pagerConfig == null ? 0 : pagerConfig.hashCode()) * 31;
        PermanentConfig permanentConfig = this.cfg;
        int iHashCode2 = (iHashCode + (permanentConfig == null ? 0 : permanentConfig.hashCode())) * 31;
        String str = this.title;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        List<PermanentPushMessage> list = this.items;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "SdkPermanentMsgResp(pager=" + this.pager + ", cfg=" + this.cfg + ", title=" + this.title + ", items=" + this.items + ")";
    }
}
