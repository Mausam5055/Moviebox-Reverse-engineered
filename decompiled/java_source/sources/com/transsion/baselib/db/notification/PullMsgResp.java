package com.transsion.baselib.db.notification;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0012\b\u0002\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\u0014\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0013\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0003J=\u0010\u0017\u001a\u00020\u00002\u0012\b\u0002\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0012\b\u0002\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\u0016\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0019R$\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\r¨\u0006&"}, d2 = {"Lcom/transsion/baselib/db/notification/PullMsgResp;", "Landroid/os/Parcelable;", "items", "", "Lcom/transsion/baselib/db/notification/MsgBean;", XLogUtil.TAG, "Lcom/transsion/baselib/db/notification/MsgConfig;", "seekingItems", "<init>", "(Ljava/util/List;Lcom/transsion/baselib/db/notification/MsgConfig;Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "setItems", "(Ljava/util/List;)V", "getConfig", "()Lcom/transsion/baselib/db/notification/MsgConfig;", "setConfig", "(Lcom/transsion/baselib/db/notification/MsgConfig;)V", "getSeekingItems", "setSeekingItems", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PullMsgResp implements Parcelable {
    public static final Parcelable.Creator<PullMsgResp> CREATOR = new a();
    private MsgConfig config;
    private List<MsgBean> items;
    private List<MsgBean> seekingItems;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PullMsgResp createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList2 = null;
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(parcel.readInt() == 0 ? null : MsgBean.CREATOR.createFromParcel(parcel));
                }
            }
            MsgConfig msgConfigCreateFromParcel = parcel.readInt() == 0 ? null : MsgConfig.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() != 0) {
                int i13 = parcel.readInt();
                ArrayList arrayList3 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList3.add(parcel.readInt() == 0 ? null : MsgBean.CREATOR.createFromParcel(parcel));
                }
                arrayList2 = arrayList3;
            }
            return new PullMsgResp(arrayList, msgConfigCreateFromParcel, arrayList2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PullMsgResp[] newArray(int i11) {
            return new PullMsgResp[i11];
        }
    }

    public PullMsgResp(List<MsgBean> list, MsgConfig msgConfig, List<MsgBean> list2) {
        this.items = list;
        this.config = msgConfig;
        this.seekingItems = list2;
    }

    public /* synthetic */ PullMsgResp(List list, MsgConfig msgConfig, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, msgConfig, (i11 & 4) != 0 ? null : list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PullMsgResp copy$default(PullMsgResp pullMsgResp, List list, MsgConfig msgConfig, List list2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = pullMsgResp.items;
        }
        if ((i11 & 2) != 0) {
            msgConfig = pullMsgResp.config;
        }
        if ((i11 & 4) != 0) {
            list2 = pullMsgResp.seekingItems;
        }
        return pullMsgResp.copy(list, msgConfig, list2);
    }

    public final List<MsgBean> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MsgConfig getConfig() {
        return this.config;
    }

    public final List<MsgBean> component3() {
        return this.seekingItems;
    }

    public final PullMsgResp copy(List<MsgBean> items, MsgConfig config, List<MsgBean> seekingItems) {
        return new PullMsgResp(items, config, seekingItems);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PullMsgResp)) {
            return false;
        }
        PullMsgResp pullMsgResp = (PullMsgResp) other;
        return Intrinsics.c(this.items, pullMsgResp.items) && Intrinsics.c(this.config, pullMsgResp.config) && Intrinsics.c(this.seekingItems, pullMsgResp.seekingItems);
    }

    public final MsgConfig getConfig() {
        return this.config;
    }

    public final List<MsgBean> getItems() {
        return this.items;
    }

    public final List<MsgBean> getSeekingItems() {
        return this.seekingItems;
    }

    public int hashCode() {
        List<MsgBean> list = this.items;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        MsgConfig msgConfig = this.config;
        int iHashCode2 = (iHashCode + (msgConfig == null ? 0 : msgConfig.hashCode())) * 31;
        List<MsgBean> list2 = this.seekingItems;
        return iHashCode2 + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setConfig(MsgConfig msgConfig) {
        this.config = msgConfig;
    }

    public final void setItems(List<MsgBean> list) {
        this.items = list;
    }

    public final void setSeekingItems(List<MsgBean> list) {
        this.seekingItems = list;
    }

    public String toString() {
        return "PullMsgResp(items=" + this.items + ", config=" + this.config + ", seekingItems=" + this.seekingItems + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        List<MsgBean> list = this.items;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            for (MsgBean msgBean : list) {
                if (msgBean == null) {
                    dest.writeInt(0);
                } else {
                    dest.writeInt(1);
                    msgBean.writeToParcel(dest, flags);
                }
            }
        }
        MsgConfig msgConfig = this.config;
        if (msgConfig == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            msgConfig.writeToParcel(dest, flags);
        }
        List<MsgBean> list2 = this.seekingItems;
        if (list2 == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list2.size());
        for (MsgBean msgBean2 : list2) {
            if (msgBean2 == null) {
                dest.writeInt(0);
            } else {
                dest.writeInt(1);
                msgBean2.writeToParcel(dest, flags);
            }
        }
    }
}
