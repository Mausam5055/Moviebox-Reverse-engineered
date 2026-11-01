package com.tn.lib.net.dns.or;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J7\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0006\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u0019\u001a\u00020\u00072\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u0018HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0018R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006#"}, d2 = {"Lcom/tn/lib/net/dns/or/AddressItem;", "Landroid/os/Parcelable;", "host", "", "ip", "scheme", "ipEnable", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getHost", "()Ljava/lang/String;", "getIp", "getScheme", "getIpEnable", "()Z", "setIpEnable", "(Z)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AddressItem implements Parcelable {
    public static final Parcelable.Creator<AddressItem> CREATOR = new a();
    private final String host;
    private final String ip;
    private boolean ipEnable;
    private final String scheme;

    /* JADX INFO: loaded from: classes3.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AddressItem createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AddressItem(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final AddressItem[] newArray(int i11) {
            return new AddressItem[i11];
        }
    }

    public AddressItem(String str, String str2, String str3, boolean z10) {
        this.host = str;
        this.ip = str2;
        this.scheme = str3;
        this.ipEnable = z10;
    }

    public /* synthetic */ AddressItem(String str, String str2, String str3, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i11 & 8) != 0 ? true : z10);
    }

    public static /* synthetic */ AddressItem copy$default(AddressItem addressItem, String str, String str2, String str3, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = addressItem.host;
        }
        if ((i11 & 2) != 0) {
            str2 = addressItem.ip;
        }
        if ((i11 & 4) != 0) {
            str3 = addressItem.scheme;
        }
        if ((i11 & 8) != 0) {
            z10 = addressItem.ipEnable;
        }
        return addressItem.copy(str, str2, str3, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getHost() {
        return this.host;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIp() {
        return this.ip;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getScheme() {
        return this.scheme;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getIpEnable() {
        return this.ipEnable;
    }

    public final AddressItem copy(String host, String ip2, String scheme, boolean ipEnable) {
        return new AddressItem(host, ip2, scheme, ipEnable);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AddressItem)) {
            return false;
        }
        AddressItem addressItem = (AddressItem) other;
        return Intrinsics.c(this.host, addressItem.host) && Intrinsics.c(this.ip, addressItem.ip) && Intrinsics.c(this.scheme, addressItem.scheme) && this.ipEnable == addressItem.ipEnable;
    }

    public final String getHost() {
        return this.host;
    }

    public final String getIp() {
        return this.ip;
    }

    public final boolean getIpEnable() {
        return this.ipEnable;
    }

    public final String getScheme() {
        return this.scheme;
    }

    public int hashCode() {
        String str = this.host;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.ip;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.scheme;
        return ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + e.a(this.ipEnable);
    }

    public final void setIpEnable(boolean z10) {
        this.ipEnable = z10;
    }

    public String toString() {
        return "AddressItem(host=" + this.host + ", ip=" + this.ip + ", scheme=" + this.scheme + ", ipEnable=" + this.ipEnable + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.host);
        dest.writeString(this.ip);
        dest.writeString(this.scheme);
        dest.writeInt(this.ipEnable ? 1 : 0);
    }
}
