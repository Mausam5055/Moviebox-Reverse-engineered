package com.transsion.mpush.api;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003JC\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0006\u0010&\u001a\u00020\u0003J\u0013\u0010'\u001a\u00020\u001a2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u0003HÖ\u0001J\t\u0010+\u001a\u00020\u0005HÖ\u0001J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0010\"\u0004\b\u0014\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R$\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u00061"}, d2 = {"Lcom/transsion/mpush/api/PermanentPushMessage;", "Landroid/os/Parcelable;", "id", "", "deeplink", "", "subjectId", "image", CampaignEx.JSON_KEY_TITLE, "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getDeeplink", "()Ljava/lang/String;", "setDeeplink", "(Ljava/lang/String;)V", "getSubjectId", "setSubjectId", "getImage", "setImage", "getTitle", "setTitle", "isRefresh", "", "isRefresh$annotations", "()V", "()Z", "setRefresh", "(Z)V", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PermanentPushMessage implements Parcelable {
    public static final Parcelable.Creator<PermanentPushMessage> CREATOR = new Creator();
    private String deeplink;
    private int id;
    private String image;
    private boolean isRefresh;
    private String subjectId;
    private String title;

    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Creator implements Parcelable.Creator<PermanentPushMessage> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PermanentPushMessage createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new PermanentPushMessage(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PermanentPushMessage[] newArray(int i11) {
            return new PermanentPushMessage[i11];
        }
    }

    public PermanentPushMessage(int i11, String str, String str2, String str3, String str4) {
        this.id = i11;
        this.deeplink = str;
        this.subjectId = str2;
        this.image = str3;
        this.title = str4;
    }

    public /* synthetic */ PermanentPushMessage(int i11, String str, String str2, String str3, String str4, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11, str, str2, str3, str4);
    }

    public static /* synthetic */ PermanentPushMessage copy$default(PermanentPushMessage permanentPushMessage, int i11, String str, String str2, String str3, String str4, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = permanentPushMessage.id;
        }
        if ((i12 & 2) != 0) {
            str = permanentPushMessage.deeplink;
        }
        String str5 = str;
        if ((i12 & 4) != 0) {
            str2 = permanentPushMessage.subjectId;
        }
        String str6 = str2;
        if ((i12 & 8) != 0) {
            str3 = permanentPushMessage.image;
        }
        String str7 = str3;
        if ((i12 & 16) != 0) {
            str4 = permanentPushMessage.title;
        }
        return permanentPushMessage.copy(i11, str5, str6, str7, str4);
    }

    public static /* synthetic */ void isRefresh$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDeeplink() {
        return this.deeplink;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getImage() {
        return this.image;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final PermanentPushMessage copy(int id2, String deeplink, String subjectId, String image, String title) {
        return new PermanentPushMessage(id2, deeplink, subjectId, image, title);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PermanentPushMessage)) {
            return false;
        }
        PermanentPushMessage permanentPushMessage = (PermanentPushMessage) other;
        return this.id == permanentPushMessage.id && Intrinsics.c(this.deeplink, permanentPushMessage.deeplink) && Intrinsics.c(this.subjectId, permanentPushMessage.subjectId) && Intrinsics.c(this.image, permanentPushMessage.image) && Intrinsics.c(this.title, permanentPushMessage.title);
    }

    public final String getDeeplink() {
        return this.deeplink;
    }

    public final int getId() {
        return this.id;
    }

    public final String getImage() {
        return this.image;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int i11 = this.id * 31;
        String str = this.deeplink;
        int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.subjectId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.image;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.title;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isRefresh, reason: from getter */
    public final boolean getIsRefresh() {
        return this.isRefresh;
    }

    public final void setDeeplink(String str) {
        this.deeplink = str;
    }

    public final void setId(int i11) {
        this.id = i11;
    }

    public final void setImage(String str) {
        this.image = str;
    }

    public final void setRefresh(boolean z10) {
        this.isRefresh = z10;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "PermanentPushMessage(id=" + this.id + ", deeplink=" + this.deeplink + ", subjectId=" + this.subjectId + ", image=" + this.image + ", title=" + this.title + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.id);
        dest.writeString(this.deeplink);
        dest.writeString(this.subjectId);
        dest.writeString(this.image);
        dest.writeString(this.title);
    }
}
