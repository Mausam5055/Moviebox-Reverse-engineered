package com.transsion.mb.config.download;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J%\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0003J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001d"}, d2 = {"Lcom/transsion/mb/config/download/UserPrefer;", "Landroid/os/Parcelable;", "days", "", "options", "", "Lcom/transsion/mb/config/download/UserPreferOption;", "<init>", "(ILjava/util/List;)V", "getDays", "()I", "getOptions", "()Ljava/util/List;", "component1", "component2", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UserPrefer implements Parcelable {
    public static final Parcelable.Creator<UserPrefer> CREATOR = new a();
    private final int days;
    private final List<UserPreferOption> options;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserPrefer createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            int i11 = parcel.readInt();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i12 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i12);
                for (int i13 = 0; i13 != i12; i13++) {
                    arrayList2.add(UserPreferOption.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new UserPrefer(i11, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final UserPrefer[] newArray(int i11) {
            return new UserPrefer[i11];
        }
    }

    public UserPrefer(int i11, List<UserPreferOption> list) {
        this.days = i11;
        this.options = list;
    }

    public /* synthetic */ UserPrefer(int i11, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UserPrefer copy$default(UserPrefer userPrefer, int i11, List list, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = userPrefer.days;
        }
        if ((i12 & 2) != 0) {
            list = userPrefer.options;
        }
        return userPrefer.copy(i11, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getDays() {
        return this.days;
    }

    public final List<UserPreferOption> component2() {
        return this.options;
    }

    public final UserPrefer copy(int days, List<UserPreferOption> options) {
        return new UserPrefer(days, options);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserPrefer)) {
            return false;
        }
        UserPrefer userPrefer = (UserPrefer) other;
        return this.days == userPrefer.days && Intrinsics.c(this.options, userPrefer.options);
    }

    public final int getDays() {
        return this.days;
    }

    public final List<UserPreferOption> getOptions() {
        return this.options;
    }

    public int hashCode() {
        int i11 = this.days * 31;
        List<UserPreferOption> list = this.options;
        return i11 + (list == null ? 0 : list.hashCode());
    }

    public String toString() {
        return "UserPrefer(days=" + this.days + ", options=" + this.options + ')';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeInt(this.days);
        List<UserPreferOption> list = this.options;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<UserPreferOption> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
