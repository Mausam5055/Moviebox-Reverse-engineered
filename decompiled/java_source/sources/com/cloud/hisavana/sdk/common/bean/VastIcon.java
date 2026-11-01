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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010!\n\u0002\b*\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e¢\u0006\u0002\u0010\u000fJ\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eHÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010.\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u008a\u0001\u00105\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eHÆ\u0001¢\u0006\u0002\u00106J\t\u00107\u001a\u00020\u0005HÖ\u0001J\u0013\u00108\u001a\u0002092\b\u0010:\u001a\u0004\u0018\u00010;HÖ\u0003J\t\u0010<\u001a\u00020\u0005HÖ\u0001J\t\u0010=\u001a\u00020\u0003HÖ\u0001J\u0019\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR \u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0018\"\u0004\b\"\u0010\u001aR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0018\"\u0004\b$\u0010\u001aR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b%\u0010\u0011\"\u0004\b&\u0010\u0013R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b'\u0010\u0011\"\u0004\b(\u0010\u0013R\u001e\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b)\u0010\u0011\"\u0004\b*\u0010\u0013¨\u0006C"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "Landroid/os/Parcelable;", "program", "", "width", "", "height", "xPosition", "yPosition", "offset", "duration", "iconResource", "iconClick", "iconClickTracking", "", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getDuration", "()Ljava/lang/Integer;", "setDuration", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getHeight", "setHeight", "getIconClick", "()Ljava/lang/String;", "setIconClick", "(Ljava/lang/String;)V", "getIconClickTracking", "()Ljava/util/List;", "setIconClickTracking", "(Ljava/util/List;)V", "getIconResource", "setIconResource", "getOffset", "setOffset", "getProgram", "setProgram", "getWidth", "setWidth", "getXPosition", "setXPosition", "getYPosition", "setYPosition", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VastIcon implements Parcelable {
    public static final Parcelable.Creator<VastIcon> CREATOR = new Creator();
    private Integer duration;
    private Integer height;
    private String iconClick;
    private List<String> iconClickTracking;
    private String iconResource;
    private String offset;
    private String program;
    private Integer width;
    private Integer xPosition;
    private Integer yPosition;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<VastIcon> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastIcon createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VastIcon(parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final VastIcon[] newArray(int i11) {
            return new VastIcon[i11];
        }
    }

    public VastIcon() {
        this(null, null, null, null, null, null, null, null, null, null, 1023, null);
    }

    public VastIcon(String str, Integer num, Integer num2, Integer num3, Integer num4, String str2, Integer num5, String str3, String str4, List<String> iconClickTracking) {
        Intrinsics.h(iconClickTracking, "iconClickTracking");
        this.program = str;
        this.width = num;
        this.height = num2;
        this.xPosition = num3;
        this.yPosition = num4;
        this.offset = str2;
        this.duration = num5;
        this.iconResource = str3;
        this.iconClick = str4;
        this.iconClickTracking = iconClickTracking;
    }

    public /* synthetic */ VastIcon(String str, Integer num, Integer num2, Integer num3, Integer num4, String str2, Integer num5, String str3, String str4, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? 0 : num, (i11 & 4) != 0 ? 0 : num2, (i11 & 8) != 0 ? -1 : num3, (i11 & 16) != 0 ? -1 : num4, (i11 & 32) != 0 ? null : str2, (i11 & 64) != 0 ? 0 : num5, (i11 & 128) != 0 ? null : str3, (i11 & 256) == 0 ? str4 : null, (i11 & 512) != 0 ? new ArrayList() : list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProgram() {
        return this.program;
    }

    public final List<String> component10() {
        return this.iconClickTracking;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getHeight() {
        return this.height;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getXPosition() {
        return this.xPosition;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getYPosition() {
        return this.yPosition;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getOffset() {
        return this.offset;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getDuration() {
        return this.duration;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getIconResource() {
        return this.iconResource;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getIconClick() {
        return this.iconClick;
    }

    public final VastIcon copy(String program, Integer width, Integer height, Integer xPosition, Integer yPosition, String offset, Integer duration, String iconResource, String iconClick, List<String> iconClickTracking) {
        Intrinsics.h(iconClickTracking, "iconClickTracking");
        return new VastIcon(program, width, height, xPosition, yPosition, offset, duration, iconResource, iconClick, iconClickTracking);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastIcon)) {
            return false;
        }
        VastIcon vastIcon = (VastIcon) other;
        return Intrinsics.c(this.program, vastIcon.program) && Intrinsics.c(this.width, vastIcon.width) && Intrinsics.c(this.height, vastIcon.height) && Intrinsics.c(this.xPosition, vastIcon.xPosition) && Intrinsics.c(this.yPosition, vastIcon.yPosition) && Intrinsics.c(this.offset, vastIcon.offset) && Intrinsics.c(this.duration, vastIcon.duration) && Intrinsics.c(this.iconResource, vastIcon.iconResource) && Intrinsics.c(this.iconClick, vastIcon.iconClick) && Intrinsics.c(this.iconClickTracking, vastIcon.iconClickTracking);
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final Integer getHeight() {
        return this.height;
    }

    public final String getIconClick() {
        return this.iconClick;
    }

    public final List<String> getIconClickTracking() {
        return this.iconClickTracking;
    }

    public final String getIconResource() {
        return this.iconResource;
    }

    public final String getOffset() {
        return this.offset;
    }

    public final String getProgram() {
        return this.program;
    }

    public final Integer getWidth() {
        return this.width;
    }

    public final Integer getXPosition() {
        return this.xPosition;
    }

    public final Integer getYPosition() {
        return this.yPosition;
    }

    public int hashCode() {
        String str = this.program;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.width;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int iHashCode3 = (iHashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.xPosition;
        int iHashCode4 = (iHashCode3 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.yPosition;
        int iHashCode5 = (iHashCode4 + (num4 == null ? 0 : num4.hashCode())) * 31;
        String str2 = this.offset;
        int iHashCode6 = (iHashCode5 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num5 = this.duration;
        int iHashCode7 = (iHashCode6 + (num5 == null ? 0 : num5.hashCode())) * 31;
        String str3 = this.iconResource;
        int iHashCode8 = (iHashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.iconClick;
        return ((iHashCode8 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.iconClickTracking.hashCode();
    }

    public final void setDuration(Integer num) {
        this.duration = num;
    }

    public final void setHeight(Integer num) {
        this.height = num;
    }

    public final void setIconClick(String str) {
        this.iconClick = str;
    }

    public final void setIconClickTracking(List<String> list) {
        Intrinsics.h(list, "<set-?>");
        this.iconClickTracking = list;
    }

    public final void setIconResource(String str) {
        this.iconResource = str;
    }

    public final void setOffset(String str) {
        this.offset = str;
    }

    public final void setProgram(String str) {
        this.program = str;
    }

    public final void setWidth(Integer num) {
        this.width = num;
    }

    public final void setXPosition(Integer num) {
        this.xPosition = num;
    }

    public final void setYPosition(Integer num) {
        this.yPosition = num;
    }

    public String toString() {
        return "VastIcon(program=" + this.program + ", width=" + this.width + ", height=" + this.height + ", xPosition=" + this.xPosition + ", yPosition=" + this.yPosition + ", offset=" + this.offset + ", duration=" + this.duration + ", iconResource=" + this.iconResource + ", iconClick=" + this.iconClick + ", iconClickTracking=" + this.iconClickTracking + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.program);
        Integer num = this.width;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Integer num2 = this.height;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        Integer num3 = this.xPosition;
        if (num3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num3.intValue());
        }
        Integer num4 = this.yPosition;
        if (num4 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num4.intValue());
        }
        parcel.writeString(this.offset);
        Integer num5 = this.duration;
        if (num5 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num5.intValue());
        }
        parcel.writeString(this.iconResource);
        parcel.writeString(this.iconClick);
        parcel.writeStringList(this.iconClickTracking);
    }
}
