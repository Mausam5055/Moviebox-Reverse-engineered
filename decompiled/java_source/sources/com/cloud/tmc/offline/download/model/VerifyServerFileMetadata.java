package com.cloud.tmc.offline.download.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u001f\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0001J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0014HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0007HÖ\u0001J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0014H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "appId", "", TtmlNode.TAG_METADATA, "", "Lcom/cloud/tmc/offline/download/model/Metadata;", "(Ljava/lang/String;Ljava/util/List;)V", "getAppId", "()Ljava/lang/String;", "getMetadata", "()Ljava/util/List;", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VerifyServerFileMetadata extends BaseBean implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String appId;
    private final List<Metadata> metadata;

    /* JADX INFO: renamed from: com.cloud.tmc.offline.download.model.VerifyServerFileMetadata$CREATOR, reason: from kotlin metadata */
    @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<VerifyServerFileMetadata> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VerifyServerFileMetadata createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new VerifyServerFileMetadata(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VerifyServerFileMetadata[] newArray(int size) {
            return new VerifyServerFileMetadata[size];
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public VerifyServerFileMetadata(Parcel parcel) {
        this(parcel.readString(), parcel.createTypedArrayList(Metadata.INSTANCE));
        Intrinsics.h(parcel, "parcel");
    }

    public VerifyServerFileMetadata(String str, List<Metadata> list) {
        this.appId = str;
        this.metadata = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VerifyServerFileMetadata copy$default(VerifyServerFileMetadata verifyServerFileMetadata, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = verifyServerFileMetadata.appId;
        }
        if ((i11 & 2) != 0) {
            list = verifyServerFileMetadata.metadata;
        }
        return verifyServerFileMetadata.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    public final List<Metadata> component2() {
        return this.metadata;
    }

    public final VerifyServerFileMetadata copy(String appId, List<Metadata> metadata) {
        return new VerifyServerFileMetadata(appId, metadata);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VerifyServerFileMetadata)) {
            return false;
        }
        VerifyServerFileMetadata verifyServerFileMetadata = (VerifyServerFileMetadata) other;
        return Intrinsics.c(this.appId, verifyServerFileMetadata.appId) && Intrinsics.c(this.metadata, verifyServerFileMetadata.metadata);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final List<Metadata> getMetadata() {
        return this.metadata;
    }

    public int hashCode() {
        String str = this.appId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<Metadata> list = this.metadata;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "VerifyServerFileMetadata(appId=" + this.appId + ", metadata=" + this.metadata + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.appId);
        parcel.writeTypedList(this.metadata);
    }
}
