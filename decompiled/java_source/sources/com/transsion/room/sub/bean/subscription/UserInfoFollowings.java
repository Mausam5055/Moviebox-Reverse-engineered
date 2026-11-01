package com.transsion.room.sub.bean.subscription;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0006\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0015\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0014R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006 "}, d2 = {"Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;", "Landroid/os/Parcelable;", "userInfo", "Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;", "hasUnread", "", "<init>", "(Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;Z)V", "getUserInfo", "()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;", "setUserInfo", "(Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;)V", "getHasUnread", "()Z", "setHasUnread", "(Z)V", "component1", "component2", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UserInfoFollowings implements Parcelable {
    public static final Parcelable.Creator<UserInfoFollowings> CREATOR = new a();
    private boolean hasUnread;
    private UserItemFollowings userInfo;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserInfoFollowings createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new UserInfoFollowings(parcel.readInt() == 0 ? null : UserItemFollowings.CREATOR.createFromParcel(parcel), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UserInfoFollowings[] newArray(int i11) {
            return new UserInfoFollowings[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UserInfoFollowings() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public UserInfoFollowings(UserItemFollowings userItemFollowings, boolean z10) {
        this.userInfo = userItemFollowings;
        this.hasUnread = z10;
    }

    public /* synthetic */ UserInfoFollowings(UserItemFollowings userItemFollowings, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : userItemFollowings, (i11 & 2) != 0 ? false : z10);
    }

    public static /* synthetic */ UserInfoFollowings copy$default(UserInfoFollowings userInfoFollowings, UserItemFollowings userItemFollowings, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            userItemFollowings = userInfoFollowings.userInfo;
        }
        if ((i11 & 2) != 0) {
            z10 = userInfoFollowings.hasUnread;
        }
        return userInfoFollowings.copy(userItemFollowings, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final UserItemFollowings getUserInfo() {
        return this.userInfo;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getHasUnread() {
        return this.hasUnread;
    }

    public final UserInfoFollowings copy(UserItemFollowings userInfo, boolean hasUnread) {
        return new UserInfoFollowings(userInfo, hasUnread);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserInfoFollowings)) {
            return false;
        }
        UserInfoFollowings userInfoFollowings = (UserInfoFollowings) other;
        return Intrinsics.c(this.userInfo, userInfoFollowings.userInfo) && this.hasUnread == userInfoFollowings.hasUnread;
    }

    public final boolean getHasUnread() {
        return this.hasUnread;
    }

    public final UserItemFollowings getUserInfo() {
        return this.userInfo;
    }

    public int hashCode() {
        UserItemFollowings userItemFollowings = this.userInfo;
        return ((userItemFollowings == null ? 0 : userItemFollowings.hashCode()) * 31) + e.a(this.hasUnread);
    }

    public final void setHasUnread(boolean z10) {
        this.hasUnread = z10;
    }

    public final void setUserInfo(UserItemFollowings userItemFollowings) {
        this.userInfo = userItemFollowings;
    }

    public String toString() {
        return "UserInfoFollowings(userInfo=" + this.userInfo + ", hasUnread=" + this.hasUnread + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        UserItemFollowings userItemFollowings = this.userInfo;
        if (userItemFollowings == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            userItemFollowings.writeToParcel(dest, flags);
        }
        dest.writeInt(this.hasUnread ? 1 : 0);
    }
}
