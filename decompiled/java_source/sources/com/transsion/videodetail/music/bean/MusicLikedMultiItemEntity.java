package com.transsion.videodetail.music.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import n6.a;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0010\b\u0087\b\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u00010B'\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0005¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0015J\u0010\u0010\u0019\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ0\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u001dHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b \u0010\u0015J\u001a\u0010#\u001a\u00020\u000b2\b\u0010\"\u001a\u0004\u0018\u00010!HÖ\u0003¢\u0006\u0004\b#\u0010$R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010%\u001a\u0004\b&\u0010\u0017R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010'\u001a\u0004\b(\u0010\u0015R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010)\u001a\u0004\b*\u0010\u001a\"\u0004\b+\u0010,R\u0014\u0010.\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010\u0015¨\u00061"}, d2 = {"Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;", "Ln6/a;", "Landroid/os/Parcelable;", "Lcom/transsion/baselib/db/music/MusicLikedDbBean;", "musicLikedDbBean", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;", "state", "<init>", "(Lcom/transsion/baselib/db/music/MusicLikedDbBean;ILcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;)V", "", "isDownloaded", "()Z", "Landroid/os/Parcel;", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Lcom/transsion/baselib/db/music/MusicLikedDbBean;", "component2", "component3", "()Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;", "copy", "(Lcom/transsion/baselib/db/music/MusicLikedDbBean;ILcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;)Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;", "", "toString", "()Ljava/lang/String;", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Lcom/transsion/baselib/db/music/MusicLikedDbBean;", "getMusicLikedDbBean", "I", "getType", "Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;", "getState", "setState", "(Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;)V", "getItemType", "itemType", "Companion", "a", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MusicLikedMultiItemEntity implements a, Parcelable {
    public static final int ITEM_TYPE_AD = 2;
    public static final int ITEM_TYPE_MUSIC_BEAN = 1;
    private final MusicLikedDbBean musicLikedDbBean;
    private MusicLikedItemStateEnum state;
    private final int type;
    public static final Parcelable.Creator<MusicLikedMultiItemEntity> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MusicLikedMultiItemEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MusicLikedMultiItemEntity((MusicLikedDbBean) parcel.readParcelable(MusicLikedMultiItemEntity.class.getClassLoader()), parcel.readInt(), MusicLikedItemStateEnum.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MusicLikedMultiItemEntity[] newArray(int i11) {
            return new MusicLikedMultiItemEntity[i11];
        }
    }

    public MusicLikedMultiItemEntity() {
        this(null, 0, null, 7, null);
    }

    public MusicLikedMultiItemEntity(MusicLikedDbBean musicLikedDbBean, int i11, MusicLikedItemStateEnum state) {
        Intrinsics.h(state, "state");
        this.musicLikedDbBean = musicLikedDbBean;
        this.type = i11;
        this.state = state;
    }

    public /* synthetic */ MusicLikedMultiItemEntity(MusicLikedDbBean musicLikedDbBean, int i11, MusicLikedItemStateEnum musicLikedItemStateEnum, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : musicLikedDbBean, (i12 & 2) != 0 ? 1 : i11, (i12 & 4) != 0 ? MusicLikedItemStateEnum.NONE : musicLikedItemStateEnum);
    }

    public static /* synthetic */ MusicLikedMultiItemEntity copy$default(MusicLikedMultiItemEntity musicLikedMultiItemEntity, MusicLikedDbBean musicLikedDbBean, int i11, MusicLikedItemStateEnum musicLikedItemStateEnum, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            musicLikedDbBean = musicLikedMultiItemEntity.musicLikedDbBean;
        }
        if ((i12 & 2) != 0) {
            i11 = musicLikedMultiItemEntity.type;
        }
        if ((i12 & 4) != 0) {
            musicLikedItemStateEnum = musicLikedMultiItemEntity.state;
        }
        return musicLikedMultiItemEntity.copy(musicLikedDbBean, i11, musicLikedItemStateEnum);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final MusicLikedDbBean getMusicLikedDbBean() {
        return this.musicLikedDbBean;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final MusicLikedItemStateEnum getState() {
        return this.state;
    }

    public final MusicLikedMultiItemEntity copy(MusicLikedDbBean musicLikedDbBean, int type, MusicLikedItemStateEnum state) {
        Intrinsics.h(state, "state");
        return new MusicLikedMultiItemEntity(musicLikedDbBean, type, state);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MusicLikedMultiItemEntity)) {
            return false;
        }
        MusicLikedMultiItemEntity musicLikedMultiItemEntity = (MusicLikedMultiItemEntity) other;
        return Intrinsics.c(this.musicLikedDbBean, musicLikedMultiItemEntity.musicLikedDbBean) && this.type == musicLikedMultiItemEntity.type && this.state == musicLikedMultiItemEntity.state;
    }

    @Override // n6.a
    public int getItemType() {
        return this.type;
    }

    public final MusicLikedDbBean getMusicLikedDbBean() {
        return this.musicLikedDbBean;
    }

    public final MusicLikedItemStateEnum getState() {
        return this.state;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        MusicLikedDbBean musicLikedDbBean = this.musicLikedDbBean;
        return ((((musicLikedDbBean == null ? 0 : musicLikedDbBean.hashCode()) * 31) + this.type) * 31) + this.state.hashCode();
    }

    public final boolean isDownloaded() {
        MusicLikedDbBean musicLikedDbBean = this.musicLikedDbBean;
        return !TextUtils.isEmpty(musicLikedDbBean != null ? musicLikedDbBean.getPath() : null);
    }

    public final void setState(MusicLikedItemStateEnum musicLikedItemStateEnum) {
        Intrinsics.h(musicLikedItemStateEnum, "<set-?>");
        this.state = musicLikedItemStateEnum;
    }

    public String toString() {
        return "MusicLikedMultiItemEntity(musicLikedDbBean=" + this.musicLikedDbBean + ", type=" + this.type + ", state=" + this.state + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeParcelable(this.musicLikedDbBean, flags);
        dest.writeInt(this.type);
        dest.writeString(this.state.name());
    }
}
