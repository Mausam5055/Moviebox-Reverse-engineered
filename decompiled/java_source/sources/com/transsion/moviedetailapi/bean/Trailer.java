package com.transsion.moviedetailapi.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003JC\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020\tHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\n\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001a\"\u0004\b\u001e\u0010\u001c¨\u0006+"}, d2 = {"Lcom/transsion/moviedetailapi/bean/Trailer;", "Ljava/io/Serializable;", "subjectType", "", "videoAddress", "Lcom/transsion/moviedetailapi/bean/PreVideoAddress;", "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "subjectId", "", "musicName", "<init>", "(ILcom/transsion/moviedetailapi/bean/PreVideoAddress;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;)V", "getSubjectType", "()I", "setSubjectType", "(I)V", "getVideoAddress", "()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;", "setVideoAddress", "(Lcom/transsion/moviedetailapi/bean/PreVideoAddress;)V", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getSubjectId", "()Ljava/lang/String;", "setSubjectId", "(Ljava/lang/String;)V", "getMusicName", "setMusicName", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Trailer implements Serializable {

    @SerializedName("cover")
    private Cover cover;
    private String musicName;
    private String subjectId;
    private int subjectType;

    @SerializedName(alternate = {"VideoAddress"}, value = "videoAddress")
    private PreVideoAddress videoAddress;

    public Trailer() {
        this(0, null, null, null, null, 31, null);
    }

    public Trailer(int i11, PreVideoAddress preVideoAddress, Cover cover, String str, String str2) {
        this.subjectType = i11;
        this.videoAddress = preVideoAddress;
        this.cover = cover;
        this.subjectId = str;
        this.musicName = str2;
    }

    public /* synthetic */ Trailer(int i11, PreVideoAddress preVideoAddress, Cover cover, String str, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11, (i12 & 2) != 0 ? null : preVideoAddress, (i12 & 4) == 0 ? cover : null, (i12 & 8) != 0 ? "" : str, (i12 & 16) != 0 ? "" : str2);
    }

    public static /* synthetic */ Trailer copy$default(Trailer trailer, int i11, PreVideoAddress preVideoAddress, Cover cover, String str, String str2, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = trailer.subjectType;
        }
        if ((i12 & 2) != 0) {
            preVideoAddress = trailer.videoAddress;
        }
        PreVideoAddress preVideoAddress2 = preVideoAddress;
        if ((i12 & 4) != 0) {
            cover = trailer.cover;
        }
        Cover cover2 = cover;
        if ((i12 & 8) != 0) {
            str = trailer.subjectId;
        }
        String str3 = str;
        if ((i12 & 16) != 0) {
            str2 = trailer.musicName;
        }
        return trailer.copy(i11, preVideoAddress2, cover2, str3, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final PreVideoAddress getVideoAddress() {
        return this.videoAddress;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getMusicName() {
        return this.musicName;
    }

    public final Trailer copy(int subjectType, PreVideoAddress videoAddress, Cover cover, String subjectId, String musicName) {
        return new Trailer(subjectType, videoAddress, cover, subjectId, musicName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Trailer)) {
            return false;
        }
        Trailer trailer = (Trailer) other;
        return this.subjectType == trailer.subjectType && Intrinsics.c(this.videoAddress, trailer.videoAddress) && Intrinsics.c(this.cover, trailer.cover) && Intrinsics.c(this.subjectId, trailer.subjectId) && Intrinsics.c(this.musicName, trailer.musicName);
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final String getMusicName() {
        return this.musicName;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final int getSubjectType() {
        return this.subjectType;
    }

    public final PreVideoAddress getVideoAddress() {
        return this.videoAddress;
    }

    public int hashCode() {
        int i11 = this.subjectType * 31;
        PreVideoAddress preVideoAddress = this.videoAddress;
        int iHashCode = (i11 + (preVideoAddress == null ? 0 : preVideoAddress.hashCode())) * 31;
        Cover cover = this.cover;
        int iHashCode2 = (iHashCode + (cover == null ? 0 : cover.hashCode())) * 31;
        String str = this.subjectId;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.musicName;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setMusicName(String str) {
        this.musicName = str;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setSubjectType(int i11) {
        this.subjectType = i11;
    }

    public final void setVideoAddress(PreVideoAddress preVideoAddress) {
        this.videoAddress = preVideoAddress;
    }

    public String toString() {
        return "Trailer(subjectType=" + this.subjectType + ", videoAddress=" + this.videoAddress + ", cover=" + this.cover + ", subjectId=" + this.subjectId + ", musicName=" + this.musicName + ")";
    }
}
