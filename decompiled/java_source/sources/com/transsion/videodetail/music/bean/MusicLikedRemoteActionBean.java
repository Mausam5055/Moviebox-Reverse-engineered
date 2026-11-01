package com.transsion.videodetail.music.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J$\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u0003J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\""}, d2 = {"Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;", "Landroid/os/Parcelable;", EventConstants.KEY_ACTION, "", WebConstants.FIELD_ITEM, "Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;", "<init>", "(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V", "getAction", "()Ljava/lang/Integer;", "setAction", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getItem", "()Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;", "setItem", "(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V", "component1", "component2", "copy", "(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MusicLikedRemoteActionBean implements Parcelable {
    public static final Parcelable.Creator<MusicLikedRemoteActionBean> CREATOR = new a();
    private Integer action;
    private MusicLikedRemoteItemBean item;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MusicLikedRemoteActionBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MusicLikedRemoteActionBean(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), MusicLikedRemoteItemBean.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MusicLikedRemoteActionBean[] newArray(int i11) {
            return new MusicLikedRemoteActionBean[i11];
        }
    }

    public MusicLikedRemoteActionBean(Integer num, MusicLikedRemoteItemBean item) {
        Intrinsics.h(item, "item");
        this.action = num;
        this.item = item;
    }

    public /* synthetic */ MusicLikedRemoteActionBean(Integer num, MusicLikedRemoteItemBean musicLikedRemoteItemBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : num, musicLikedRemoteItemBean);
    }

    public static /* synthetic */ MusicLikedRemoteActionBean copy$default(MusicLikedRemoteActionBean musicLikedRemoteActionBean, Integer num, MusicLikedRemoteItemBean musicLikedRemoteItemBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = musicLikedRemoteActionBean.action;
        }
        if ((i11 & 2) != 0) {
            musicLikedRemoteItemBean = musicLikedRemoteActionBean.item;
        }
        return musicLikedRemoteActionBean.copy(num, musicLikedRemoteItemBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getAction() {
        return this.action;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MusicLikedRemoteItemBean getItem() {
        return this.item;
    }

    public final MusicLikedRemoteActionBean copy(Integer action, MusicLikedRemoteItemBean item) {
        Intrinsics.h(item, "item");
        return new MusicLikedRemoteActionBean(action, item);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MusicLikedRemoteActionBean)) {
            return false;
        }
        MusicLikedRemoteActionBean musicLikedRemoteActionBean = (MusicLikedRemoteActionBean) other;
        return Intrinsics.c(this.action, musicLikedRemoteActionBean.action) && Intrinsics.c(this.item, musicLikedRemoteActionBean.item);
    }

    public final Integer getAction() {
        return this.action;
    }

    public final MusicLikedRemoteItemBean getItem() {
        return this.item;
    }

    public int hashCode() {
        Integer num = this.action;
        return ((num == null ? 0 : num.hashCode()) * 31) + this.item.hashCode();
    }

    public final void setAction(Integer num) {
        this.action = num;
    }

    public final void setItem(MusicLikedRemoteItemBean musicLikedRemoteItemBean) {
        Intrinsics.h(musicLikedRemoteItemBean, "<set-?>");
        this.item = musicLikedRemoteItemBean;
    }

    public String toString() {
        return "MusicLikedRemoteActionBean(action=" + this.action + ", item=" + this.item + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        int iIntValue;
        Intrinsics.h(dest, "dest");
        Integer num = this.action;
        if (num == null) {
            iIntValue = 0;
        } else {
            dest.writeInt(1);
            iIntValue = num.intValue();
        }
        dest.writeInt(iIntValue);
        this.item.writeToParcel(dest, flags);
    }
}
