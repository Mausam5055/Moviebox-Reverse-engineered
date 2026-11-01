package com.transsion.shorttv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0087\b\u0018\u0000 *2\u00020\u0001:\u0001+B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0013J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0013J@\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u0013J\u0010\u0010\u001a\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u001a\u0010\u0011J\u001a\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bHÖ\u0003¢\u0006\u0004\b\u001e\u0010\u001fR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010 \u001a\u0004\b!\u0010\u0013\"\u0004\b\"\u0010#R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010 \u001a\u0004\b$\u0010\u0013\"\u0004\b%\u0010#R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010 \u001a\u0004\b&\u0010\u0013\"\u0004\b'\u0010#R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010 \u001a\u0004\b(\u0010\u0013\"\u0004\b)\u0010#¨\u0006,"}, d2 = {"Lcom/transsion/shorttv/bean/PlayListDeepLink;", "Landroid/os/Parcelable;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "category", "recType", "label", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/shorttv/bean/PlayListDeepLink;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getType", "setType", "(Ljava/lang/String;)V", "getCategory", "setCategory", "getRecType", "setRecType", "getLabel", "setLabel", "Companion", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PlayListDeepLink implements Parcelable {
    private String category;
    private String label;
    private String recType;
    private String type;
    public static final Parcelable.Creator<PlayListDeepLink> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PlayListDeepLink createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PlayListDeepLink(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PlayListDeepLink[] newArray(int i11) {
            return new PlayListDeepLink[i11];
        }
    }

    public PlayListDeepLink(String str, String str2, String str3, String str4) {
        this.type = str;
        this.category = str2;
        this.recType = str3;
        this.label = str4;
    }

    public static /* synthetic */ PlayListDeepLink copy$default(PlayListDeepLink playListDeepLink, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = playListDeepLink.type;
        }
        if ((i11 & 2) != 0) {
            str2 = playListDeepLink.category;
        }
        if ((i11 & 4) != 0) {
            str3 = playListDeepLink.recType;
        }
        if ((i11 & 8) != 0) {
            str4 = playListDeepLink.label;
        }
        return playListDeepLink.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getRecType() {
        return this.recType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    public final PlayListDeepLink copy(String type, String category, String recType, String label) {
        return new PlayListDeepLink(type, category, recType, label);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayListDeepLink)) {
            return false;
        }
        PlayListDeepLink playListDeepLink = (PlayListDeepLink) other;
        return Intrinsics.c(this.type, playListDeepLink.type) && Intrinsics.c(this.category, playListDeepLink.category) && Intrinsics.c(this.recType, playListDeepLink.recType) && Intrinsics.c(this.label, playListDeepLink.label);
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getLabel() {
        return this.label;
    }

    public final String getRecType() {
        return this.recType;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.type;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.category;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.recType;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.label;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setLabel(String str) {
        this.label = str;
    }

    public final void setRecType(String str) {
        this.recType = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "PlayListDeepLink(type=" + this.type + ", category=" + this.category + ", recType=" + this.recType + ", label=" + this.label + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.type);
        dest.writeString(this.category);
        dest.writeString(this.recType);
        dest.writeString(this.label);
    }
}
