package com.transsion.home.bean.ugc;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.home.bean.OperateItem;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003J-\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u001bHÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006'"}, d2 = {"Lcom/transsion/home/bean/ugc/TrendingUGCItem;", "Landroid/os/Parcelable;", TtmlNode.TAG_STYLE, "", "ugcVideo", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "operateItem", "Lcom/transsion/home/bean/OperateItem;", "<init>", "(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/home/bean/OperateItem;)V", "getStyle", "()Ljava/lang/String;", "setStyle", "(Ljava/lang/String;)V", "getUgcVideo", "()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "setUgcVideo", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "getOperateItem", "()Lcom/transsion/home/bean/OperateItem;", "setOperateItem", "(Lcom/transsion/home/bean/OperateItem;)V", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class TrendingUGCItem implements Parcelable {
    private OperateItem operateItem;
    private String style;
    private UGCVideo ugcVideo;
    public static final Parcelable.Creator<TrendingUGCItem> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final TrendingUGCItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new TrendingUGCItem(parcel.readString(), (UGCVideo) parcel.readSerializable(), parcel.readInt() == 0 ? null : OperateItem.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final TrendingUGCItem[] newArray(int i11) {
            return new TrendingUGCItem[i11];
        }
    }

    public TrendingUGCItem(String str, UGCVideo uGCVideo, OperateItem operateItem) {
        this.style = str;
        this.ugcVideo = uGCVideo;
        this.operateItem = operateItem;
    }

    public static /* synthetic */ TrendingUGCItem copy$default(TrendingUGCItem trendingUGCItem, String str, UGCVideo uGCVideo, OperateItem operateItem, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = trendingUGCItem.style;
        }
        if ((i11 & 2) != 0) {
            uGCVideo = trendingUGCItem.ugcVideo;
        }
        if ((i11 & 4) != 0) {
            operateItem = trendingUGCItem.operateItem;
        }
        return trendingUGCItem.copy(str, uGCVideo, operateItem);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getStyle() {
        return this.style;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final UGCVideo getUgcVideo() {
        return this.ugcVideo;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final OperateItem getOperateItem() {
        return this.operateItem;
    }

    public final TrendingUGCItem copy(String style, UGCVideo ugcVideo, OperateItem operateItem) {
        return new TrendingUGCItem(style, ugcVideo, operateItem);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TrendingUGCItem)) {
            return false;
        }
        TrendingUGCItem trendingUGCItem = (TrendingUGCItem) other;
        return Intrinsics.c(this.style, trendingUGCItem.style) && Intrinsics.c(this.ugcVideo, trendingUGCItem.ugcVideo) && Intrinsics.c(this.operateItem, trendingUGCItem.operateItem);
    }

    public final OperateItem getOperateItem() {
        return this.operateItem;
    }

    public final String getStyle() {
        return this.style;
    }

    public final UGCVideo getUgcVideo() {
        return this.ugcVideo;
    }

    public int hashCode() {
        String str = this.style;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        UGCVideo uGCVideo = this.ugcVideo;
        int iHashCode2 = (iHashCode + (uGCVideo == null ? 0 : uGCVideo.hashCode())) * 31;
        OperateItem operateItem = this.operateItem;
        return iHashCode2 + (operateItem != null ? operateItem.hashCode() : 0);
    }

    public final void setOperateItem(OperateItem operateItem) {
        this.operateItem = operateItem;
    }

    public final void setStyle(String str) {
        this.style = str;
    }

    public final void setUgcVideo(UGCVideo uGCVideo) {
        this.ugcVideo = uGCVideo;
    }

    public String toString() {
        return "TrendingUGCItem(style=" + this.style + ", ugcVideo=" + this.ugcVideo + ", operateItem=" + this.operateItem + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.style);
        dest.writeSerializable(this.ugcVideo);
        OperateItem operateItem = this.operateItem;
        if (operateItem == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            operateItem.writeToParcel(dest, flags);
        }
    }
}
