package com.transsion.member.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J'\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0006\u0010\u0019\u001a\u00020\u0005J\u0013\u0010\u001a\u001a\u00020\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001J\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006$"}, d2 = {"Lcom/transsion/member/bean/MemberBriefInfo;", "Landroid/os/Parcelable;", "isActive", "", "memberType", "", "expiryDate", "", "<init>", "(ZILjava/lang/String;)V", "()Z", "setActive", "(Z)V", "getMemberType", "()I", "setMemberType", "(I)V", "getExpiryDate", "()Ljava/lang/String;", "setExpiryDate", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberBriefInfo implements Parcelable {
    private String expiryDate;
    private boolean isActive;
    private int memberType;
    public static final Parcelable.Creator<MemberBriefInfo> CREATOR = new a();
    public static final int $stable = 8;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MemberBriefInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MemberBriefInfo(parcel.readInt() != 0, parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MemberBriefInfo[] newArray(int i11) {
            return new MemberBriefInfo[i11];
        }
    }

    public MemberBriefInfo(boolean z10, int i11, String expiryDate) {
        Intrinsics.h(expiryDate, "expiryDate");
        this.isActive = z10;
        this.memberType = i11;
        this.expiryDate = expiryDate;
    }

    public static /* synthetic */ MemberBriefInfo copy$default(MemberBriefInfo memberBriefInfo, boolean z10, int i11, String str, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            z10 = memberBriefInfo.isActive;
        }
        if ((i12 & 2) != 0) {
            i11 = memberBriefInfo.memberType;
        }
        if ((i12 & 4) != 0) {
            str = memberBriefInfo.expiryDate;
        }
        return memberBriefInfo.copy(z10, i11, str);
    }

    public final native boolean component1();

    public final native int component2();

    public final native String component3();

    public final native MemberBriefInfo copy(boolean isActive, int memberType, String expiryDate);

    @Override // android.os.Parcelable
    public final native int describeContents();

    public native boolean equals(Object other);

    public final native String getExpiryDate();

    public final native int getMemberType();

    public native int hashCode();

    public final native boolean isActive();

    public final native void setActive(boolean z10);

    public final native void setExpiryDate(String str);

    public final native void setMemberType(int i11);

    public native String toString();

    @Override // android.os.Parcelable
    public final native void writeToParcel(Parcel dest, int flags);
}
