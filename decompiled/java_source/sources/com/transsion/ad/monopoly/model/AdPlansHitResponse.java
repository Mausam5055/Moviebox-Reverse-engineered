package com.transsion.ad.monopoly.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0010\u001a\u00020\u00032\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;", "Landroid/os/Parcelable;", "isHit", "", "rejectMsg", "", "<init>", "(ZLjava/lang/String;)V", "()Z", "getRejectMsg", "()Ljava/lang/String;", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AdPlansHitResponse implements Parcelable {
    public static final Parcelable.Creator<AdPlansHitResponse> CREATOR = new a();
    private final boolean isHit;
    private final String rejectMsg;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AdPlansHitResponse createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AdPlansHitResponse(parcel.readInt() != 0, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AdPlansHitResponse[] newArray(int i11) {
            return new AdPlansHitResponse[i11];
        }
    }

    public AdPlansHitResponse(boolean z10, String str) {
        this.isHit = z10;
        this.rejectMsg = str;
    }

    public static /* synthetic */ AdPlansHitResponse copy$default(AdPlansHitResponse adPlansHitResponse, boolean z10, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = adPlansHitResponse.isHit;
        }
        if ((i11 & 2) != 0) {
            str = adPlansHitResponse.rejectMsg;
        }
        return adPlansHitResponse.copy(z10, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsHit() {
        return this.isHit;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getRejectMsg() {
        return this.rejectMsg;
    }

    public final AdPlansHitResponse copy(boolean isHit, String rejectMsg) {
        return new AdPlansHitResponse(isHit, rejectMsg);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdPlansHitResponse)) {
            return false;
        }
        AdPlansHitResponse adPlansHitResponse = (AdPlansHitResponse) other;
        return this.isHit == adPlansHitResponse.isHit && Intrinsics.c(this.rejectMsg, adPlansHitResponse.rejectMsg);
    }

    public final String getRejectMsg() {
        return this.rejectMsg;
    }

    public int hashCode() {
        int iA = e.a(this.isHit) * 31;
        String str = this.rejectMsg;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final boolean isHit() {
        return this.isHit;
    }

    public String toString() {
        return "AdPlansHitResponse(isHit=" + this.isHit + ", rejectMsg=" + this.rejectMsg + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.isHit ? 1 : 0);
        dest.writeString(this.rejectMsg);
    }
}
