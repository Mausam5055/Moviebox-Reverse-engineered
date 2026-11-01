package com.transsion.shorttv.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\t\u0010\"\u001a\u00020\u0006HÆ\u0003JN\u0010#\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010$J\u0006\u0010%\u001a\u00020\tJ\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\tHÖ\u0001J\t\u0010+\u001a\u00020\u0006HÖ\u0001J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\tR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001e\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u0014¨\u00061"}, d2 = {"Lcom/transsion/shorttv/bean/MainOperateData;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/shorttv/bean/OperateItem;", "version", "", "ops", "groupPos", "", "sourceFrom", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getVersion", "()Ljava/lang/String;", "setVersion", "(Ljava/lang/String;)V", "getOps", "setOps", "getGroupPos", "()Ljava/lang/Integer;", "setGroupPos", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getSourceFrom", "setSourceFrom", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/shorttv/bean/MainOperateData;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MainOperateData implements Parcelable {
    public static final Parcelable.Creator<MainOperateData> CREATOR = new a();
    private Integer groupPos;
    private List<OperateItem> items;
    private String ops;
    private transient String sourceFrom;
    private String version;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MainOperateData createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(OperateItem.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new MainOperateData(arrayList, parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MainOperateData[] newArray(int i11) {
            return new MainOperateData[i11];
        }
    }

    public MainOperateData() {
        this(null, null, null, null, null, 31, null);
    }

    public MainOperateData(List<OperateItem> list, String str, String str2, Integer num, String sourceFrom) {
        Intrinsics.h(sourceFrom, "sourceFrom");
        this.items = list;
        this.version = str;
        this.ops = str2;
        this.groupPos = num;
        this.sourceFrom = sourceFrom;
    }

    public /* synthetic */ MainOperateData(List list, String str, String str2, Integer num, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : str2, (i11 & 8) == 0 ? num : null, (i11 & 16) != 0 ? "" : str3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MainOperateData copy$default(MainOperateData mainOperateData, List list, String str, String str2, Integer num, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = mainOperateData.items;
        }
        if ((i11 & 2) != 0) {
            str = mainOperateData.version;
        }
        String str4 = str;
        if ((i11 & 4) != 0) {
            str2 = mainOperateData.ops;
        }
        String str5 = str2;
        if ((i11 & 8) != 0) {
            num = mainOperateData.groupPos;
        }
        Integer num2 = num;
        if ((i11 & 16) != 0) {
            str3 = mainOperateData.sourceFrom;
        }
        return mainOperateData.copy(list, str4, str5, num2, str3);
    }

    public final List<OperateItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getGroupPos() {
        return this.groupPos;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSourceFrom() {
        return this.sourceFrom;
    }

    public final MainOperateData copy(List<OperateItem> items, String version, String ops, Integer groupPos, String sourceFrom) {
        Intrinsics.h(sourceFrom, "sourceFrom");
        return new MainOperateData(items, version, ops, groupPos, sourceFrom);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MainOperateData)) {
            return false;
        }
        MainOperateData mainOperateData = (MainOperateData) other;
        return Intrinsics.c(this.items, mainOperateData.items) && Intrinsics.c(this.version, mainOperateData.version) && Intrinsics.c(this.ops, mainOperateData.ops) && Intrinsics.c(this.groupPos, mainOperateData.groupPos) && Intrinsics.c(this.sourceFrom, mainOperateData.sourceFrom);
    }

    public final Integer getGroupPos() {
        return this.groupPos;
    }

    public final List<OperateItem> getItems() {
        return this.items;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getSourceFrom() {
        return this.sourceFrom;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<OperateItem> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.version;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.ops;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.groupPos;
        return ((iHashCode3 + (num != null ? num.hashCode() : 0)) * 31) + this.sourceFrom.hashCode();
    }

    public final void setGroupPos(Integer num) {
        this.groupPos = num;
    }

    public final void setItems(List<OperateItem> list) {
        this.items = list;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setSourceFrom(String str) {
        Intrinsics.h(str, "<set-?>");
        this.sourceFrom = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "MainOperateData(items=" + this.items + ", version=" + this.version + ", ops=" + this.ops + ", groupPos=" + this.groupPos + ", sourceFrom=" + this.sourceFrom + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<OperateItem> list = this.items;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<OperateItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeString(this.version);
        dest.writeString(this.ops);
        Integer num = this.groupPos;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.sourceFrom);
    }
}
