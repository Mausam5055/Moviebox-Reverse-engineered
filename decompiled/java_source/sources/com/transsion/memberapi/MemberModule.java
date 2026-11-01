package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0015J\u0006\u0010\u0016\u001a\u00020\u0017J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0017HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0017R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\""}, d2 = {"Lcom/transsion/memberapi/MemberModule;", "Landroid/os/Parcelable;", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "iconUrl", "", MimeTypes.BASE_TYPE_TEXT, "Lcom/transsion/memberapi/ThreeInOnePopupTitle;", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)V", "getEnable", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getIconUrl", "()Ljava/lang/String;", "getText", "()Lcom/transsion/memberapi/ThreeInOnePopupTitle;", "component1", "component2", "component3", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopupTitle;)Lcom/transsion/memberapi/MemberModule;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberModule implements Parcelable {
    public static final Parcelable.Creator<MemberModule> CREATOR = new a();
    private final Boolean enable;
    private final String iconUrl;
    private final ThreeInOnePopupTitle text;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MemberModule createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new MemberModule(boolValueOf, parcel.readString(), parcel.readInt() != 0 ? ThreeInOnePopupTitle.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MemberModule[] newArray(int i11) {
            return new MemberModule[i11];
        }
    }

    public MemberModule(Boolean bool, String str, ThreeInOnePopupTitle threeInOnePopupTitle) {
        this.enable = bool;
        this.iconUrl = str;
        this.text = threeInOnePopupTitle;
    }

    public static /* synthetic */ MemberModule copy$default(MemberModule memberModule, Boolean bool, String str, ThreeInOnePopupTitle threeInOnePopupTitle, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = memberModule.enable;
        }
        if ((i11 & 2) != 0) {
            str = memberModule.iconUrl;
        }
        if ((i11 & 4) != 0) {
            threeInOnePopupTitle = memberModule.text;
        }
        return memberModule.copy(bool, str, threeInOnePopupTitle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getEnable() {
        return this.enable;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIconUrl() {
        return this.iconUrl;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ThreeInOnePopupTitle getText() {
        return this.text;
    }

    public final MemberModule copy(Boolean enable, String iconUrl, ThreeInOnePopupTitle text) {
        return new MemberModule(enable, iconUrl, text);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MemberModule)) {
            return false;
        }
        MemberModule memberModule = (MemberModule) other;
        return Intrinsics.c(this.enable, memberModule.enable) && Intrinsics.c(this.iconUrl, memberModule.iconUrl) && Intrinsics.c(this.text, memberModule.text);
    }

    public final Boolean getEnable() {
        return this.enable;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final ThreeInOnePopupTitle getText() {
        return this.text;
    }

    public int hashCode() {
        Boolean bool = this.enable;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.iconUrl;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        ThreeInOnePopupTitle threeInOnePopupTitle = this.text;
        return iHashCode2 + (threeInOnePopupTitle != null ? threeInOnePopupTitle.hashCode() : 0);
    }

    public String toString() {
        return "MemberModule(enable=" + this.enable + ", iconUrl=" + this.iconUrl + ", text=" + this.text + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        Boolean bool = this.enable;
        if (bool == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(bool.booleanValue() ? 1 : 0);
        }
        dest.writeString(this.iconUrl);
        ThreeInOnePopupTitle threeInOnePopupTitle = this.text;
        if (threeInOnePopupTitle == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            threeInOnePopupTitle.writeToParcel(dest, flags);
        }
    }
}
