package com.transsion.room.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0014\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001e"}, d2 = {"Lcom/transsion/room/bean/CheckNameBean;", "Landroid/os/Parcelable;", "groupId", "", TmcConstants.KEY_STORAGE_ADD_HOME_IS_EXIST, "", "<init>", "(Ljava/lang/String;Z)V", "getGroupId", "()Ljava/lang/String;", "setGroupId", "(Ljava/lang/String;)V", "()Z", "setExist", "(Z)V", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CheckNameBean implements Parcelable {
    public static final Parcelable.Creator<CheckNameBean> CREATOR = new a();
    private String groupId;
    private boolean isExist;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CheckNameBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new CheckNameBean(parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CheckNameBean[] newArray(int i11) {
            return new CheckNameBean[i11];
        }
    }

    public CheckNameBean(String groupId, boolean z10) {
        Intrinsics.h(groupId, "groupId");
        this.groupId = groupId;
        this.isExist = z10;
    }

    public static /* synthetic */ CheckNameBean copy$default(CheckNameBean checkNameBean, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = checkNameBean.groupId;
        }
        if ((i11 & 2) != 0) {
            z10 = checkNameBean.isExist;
        }
        return checkNameBean.copy(str, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGroupId() {
        return this.groupId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsExist() {
        return this.isExist;
    }

    public final CheckNameBean copy(String groupId, boolean isExist) {
        Intrinsics.h(groupId, "groupId");
        return new CheckNameBean(groupId, isExist);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CheckNameBean)) {
            return false;
        }
        CheckNameBean checkNameBean = (CheckNameBean) other;
        return Intrinsics.c(this.groupId, checkNameBean.groupId) && this.isExist == checkNameBean.isExist;
    }

    public final String getGroupId() {
        return this.groupId;
    }

    public int hashCode() {
        return (this.groupId.hashCode() * 31) + e.a(this.isExist);
    }

    public final boolean isExist() {
        return this.isExist;
    }

    public final void setExist(boolean z10) {
        this.isExist = z10;
    }

    public final void setGroupId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.groupId = str;
    }

    public String toString() {
        return "CheckNameBean(groupId=" + this.groupId + ", isExist=" + this.isExist + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.groupId);
        dest.writeInt(this.isExist ? 1 : 0);
    }
}
