package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\b\r\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J%\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0013HÖ\u0001R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001f"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastClick;", "Landroid/os/Parcelable;", "videoClick", "", "clickTrack", "", "(Ljava/lang/String;Ljava/util/List;)V", "getClickTrack", "()Ljava/util/List;", "setClickTrack", "(Ljava/util/List;)V", "getVideoClick", "()Ljava/lang/String;", "setVideoClick", "(Ljava/lang/String;)V", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VastClick implements Parcelable {
    public static final Parcelable.Creator<VastClick> CREATOR = new Creator();
    private List<String> clickTrack;
    private String videoClick;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<VastClick> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastClick createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VastClick(parcel.readString(), parcel.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastClick[] newArray(int i11) {
            return new VastClick[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VastClick() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public VastClick(String str, List<String> clickTrack) {
        Intrinsics.h(clickTrack, "clickTrack");
        this.videoClick = str;
        this.clickTrack = clickTrack;
    }

    public /* synthetic */ VastClick(String str, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? new ArrayList() : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VastClick copy$default(VastClick vastClick, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = vastClick.videoClick;
        }
        if ((i11 & 2) != 0) {
            list = vastClick.clickTrack;
        }
        return vastClick.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getVideoClick() {
        return this.videoClick;
    }

    public final List<String> component2() {
        return this.clickTrack;
    }

    public final VastClick copy(String videoClick, List<String> clickTrack) {
        Intrinsics.h(clickTrack, "clickTrack");
        return new VastClick(videoClick, clickTrack);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastClick)) {
            return false;
        }
        VastClick vastClick = (VastClick) other;
        return Intrinsics.c(this.videoClick, vastClick.videoClick) && Intrinsics.c(this.clickTrack, vastClick.clickTrack);
    }

    public final List<String> getClickTrack() {
        return this.clickTrack;
    }

    public final String getVideoClick() {
        return this.videoClick;
    }

    public int hashCode() {
        String str = this.videoClick;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.clickTrack.hashCode();
    }

    public final void setClickTrack(List<String> list) {
        Intrinsics.h(list, "<set-?>");
        this.clickTrack = list;
    }

    public final void setVideoClick(String str) {
        this.videoClick = str;
    }

    public String toString() {
        return "VastClick(videoClick=" + this.videoClick + ", clickTrack=" + this.clickTrack + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.videoClick);
        parcel.writeStringList(this.clickTrack);
    }
}
