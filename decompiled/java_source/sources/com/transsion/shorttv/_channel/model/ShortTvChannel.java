package com.transsion.shorttv._channel.model;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u000bHÆ\u0003JI\u0010!\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\u0006HÖ\u0001J\t\u0010'\u001a\u00020\bHÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0013\"\u0004\b\u0017\u0010\u0015R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006("}, d2 = {"Lcom/transsion/shorttv/_channel/model/ShortTvChannel;", "Ljava/io/Serializable;", "items", "", "Lcom/transsion/shorttv/_channel/model/ShortTvItem;", "subjectType", "", TmcStartParams.KEY_CHANNEL_ID, "", "channelName", TtmlNode.TAG_STYLE, "Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;", "<init>", "(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;)V", "getItems", "()Ljava/util/List;", "getSubjectType", "()I", "getChannelId", "()Ljava/lang/String;", "setChannelId", "(Ljava/lang/String;)V", "getChannelName", "setChannelName", "getStyle", "()Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;", "setStyle", "(Lcom/transsion/shorttv/_channel/model/ShortTvLayoutStyle;)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTvChannel implements Serializable {

    @SerializedName(TmcStartParams.KEY_CHANNEL_ID)
    private String channelId;

    @SerializedName("channelName")
    private String channelName;

    @SerializedName("items")
    private final List<ShortTvItem> items;
    private ShortTvLayoutStyle style;

    @SerializedName("subjectType")
    private final int subjectType;

    public ShortTvChannel(List<ShortTvItem> list, int i11, String str, String str2, ShortTvLayoutStyle shortTvLayoutStyle) {
        this.items = list;
        this.subjectType = i11;
        this.channelId = str;
        this.channelName = str2;
        this.style = shortTvLayoutStyle;
    }

    public /* synthetic */ ShortTvChannel(List list, int i11, String str, String str2, ShortTvLayoutStyle shortTvLayoutStyle, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, i11, (i12 & 4) != 0 ? null : str, (i12 & 8) != 0 ? null : str2, (i12 & 16) != 0 ? null : shortTvLayoutStyle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ShortTvChannel copy$default(ShortTvChannel shortTvChannel, List list, int i11, String str, String str2, ShortTvLayoutStyle shortTvLayoutStyle, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            list = shortTvChannel.items;
        }
        if ((i12 & 2) != 0) {
            i11 = shortTvChannel.subjectType;
        }
        int i13 = i11;
        if ((i12 & 4) != 0) {
            str = shortTvChannel.channelId;
        }
        String str3 = str;
        if ((i12 & 8) != 0) {
            str2 = shortTvChannel.channelName;
        }
        String str4 = str2;
        if ((i12 & 16) != 0) {
            shortTvLayoutStyle = shortTvChannel.style;
        }
        return shortTvChannel.copy(list, i13, str3, str4, shortTvLayoutStyle);
    }

    public final List<ShortTvItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getChannelId() {
        return this.channelId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getChannelName() {
        return this.channelName;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final ShortTvLayoutStyle getStyle() {
        return this.style;
    }

    public final ShortTvChannel copy(List<ShortTvItem> items, int subjectType, String channelId, String channelName, ShortTvLayoutStyle style) {
        return new ShortTvChannel(items, subjectType, channelId, channelName, style);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ShortTvChannel)) {
            return false;
        }
        ShortTvChannel shortTvChannel = (ShortTvChannel) other;
        return Intrinsics.c(this.items, shortTvChannel.items) && this.subjectType == shortTvChannel.subjectType && Intrinsics.c(this.channelId, shortTvChannel.channelId) && Intrinsics.c(this.channelName, shortTvChannel.channelName) && Intrinsics.c(this.style, shortTvChannel.style);
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getChannelName() {
        return this.channelName;
    }

    public final List<ShortTvItem> getItems() {
        return this.items;
    }

    public final ShortTvLayoutStyle getStyle() {
        return this.style;
    }

    public final int getSubjectType() {
        return this.subjectType;
    }

    public int hashCode() {
        List<ShortTvItem> list = this.items;
        int iHashCode = (((list == null ? 0 : list.hashCode()) * 31) + this.subjectType) * 31;
        String str = this.channelId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.channelName;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        ShortTvLayoutStyle shortTvLayoutStyle = this.style;
        return iHashCode3 + (shortTvLayoutStyle != null ? shortTvLayoutStyle.hashCode() : 0);
    }

    public final void setChannelId(String str) {
        this.channelId = str;
    }

    public final void setChannelName(String str) {
        this.channelName = str;
    }

    public final void setStyle(ShortTvLayoutStyle shortTvLayoutStyle) {
        this.style = shortTvLayoutStyle;
    }

    public String toString() {
        return "ShortTvChannel(items=" + this.items + ", subjectType=" + this.subjectType + ", channelId=" + this.channelId + ", channelName=" + this.channelName + ", style=" + this.style + ")";
    }
}
