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
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\bHÆ\u0003J3\u0010\u001a\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u001cHÖ\u0001J\t\u0010\"\u001a\u00020\bHÖ\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001cR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006("}, d2 = {"Lcom/transsion/shorttv/bean/PlayListBean;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/shorttv/bean/PlayListItem;", "pager", "Lcom/transsion/shorttv/bean/Pager;", "version", "", "<init>", "(Ljava/util/List;Lcom/transsion/shorttv/bean/Pager;Ljava/lang/String;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getPager", "()Lcom/transsion/shorttv/bean/Pager;", "setPager", "(Lcom/transsion/shorttv/bean/Pager;)V", "getVersion", "()Ljava/lang/String;", "setVersion", "(Ljava/lang/String;)V", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PlayListBean implements Parcelable {
    public static final Parcelable.Creator<PlayListBean> CREATOR = new a();
    private List<PlayListItem> items;
    private Pager pager;
    private String version;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PlayListBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(PlayListItem.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new PlayListBean(arrayList, (Pager) parcel.readSerializable(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PlayListBean[] newArray(int i11) {
            return new PlayListBean[i11];
        }
    }

    public PlayListBean(List<PlayListItem> list, Pager pager, String str) {
        this.items = list;
        this.pager = pager;
        this.version = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PlayListBean copy$default(PlayListBean playListBean, List list, Pager pager, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = playListBean.items;
        }
        if ((i11 & 2) != 0) {
            pager = playListBean.pager;
        }
        if ((i11 & 4) != 0) {
            str = playListBean.version;
        }
        return playListBean.copy(list, pager, str);
    }

    public final List<PlayListItem> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final PlayListBean copy(List<PlayListItem> items, Pager pager, String version) {
        return new PlayListBean(items, pager, version);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PlayListBean)) {
            return false;
        }
        PlayListBean playListBean = (PlayListBean) other;
        return Intrinsics.c(this.items, playListBean.items) && Intrinsics.c(this.pager, playListBean.pager) && Intrinsics.c(this.version, playListBean.version);
    }

    public final List<PlayListItem> getItems() {
        return this.items;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<PlayListItem> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Pager pager = this.pager;
        int iHashCode2 = (iHashCode + (pager == null ? 0 : pager.hashCode())) * 31;
        String str = this.version;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final void setItems(List<PlayListItem> list) {
        this.items = list;
    }

    public final void setPager(Pager pager) {
        this.pager = pager;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "PlayListBean(items=" + this.items + ", pager=" + this.pager + ", version=" + this.version + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<PlayListItem> list = this.items;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<PlayListItem> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        dest.writeSerializable(this.pager);
        dest.writeString(this.version);
    }
}
