package com.transsion.bean.lottery;

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

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0011R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, d2 = {"Lcom/transsion/bean/lottery/LotteryUserInfoEntity;", "Landroid/os/Parcelable;", "info", "Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;", "priceItems", "", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;", "<init>", "(Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;Ljava/util/List;)V", "getInfo", "()Lcom/transsion/bean/lottery/LotteryUserInfoInfoBean;", "getPriceItems", "()Ljava/util/List;", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryUserInfoEntity implements Parcelable {
    public static final Parcelable.Creator<LotteryUserInfoEntity> CREATOR = new a();
    private final LotteryUserInfoInfoBean info;
    private final List<LotteryUserActivityInfoPriceItemsBean> priceItems;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryUserInfoEntity createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList = null;
            LotteryUserInfoInfoBean lotteryUserInfoInfoBeanCreateFromParcel = parcel.readInt() == 0 ? null : LotteryUserInfoInfoBean.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() != 0) {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(LotteryUserActivityInfoPriceItemsBean.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new LotteryUserInfoEntity(lotteryUserInfoInfoBeanCreateFromParcel, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryUserInfoEntity[] newArray(int i11) {
            return new LotteryUserInfoEntity[i11];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LotteryUserInfoEntity() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public LotteryUserInfoEntity(LotteryUserInfoInfoBean lotteryUserInfoInfoBean, List<LotteryUserActivityInfoPriceItemsBean> list) {
        this.info = lotteryUserInfoInfoBean;
        this.priceItems = list;
    }

    public /* synthetic */ LotteryUserInfoEntity(LotteryUserInfoInfoBean lotteryUserInfoInfoBean, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : lotteryUserInfoInfoBean, (i11 & 2) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LotteryUserInfoEntity copy$default(LotteryUserInfoEntity lotteryUserInfoEntity, LotteryUserInfoInfoBean lotteryUserInfoInfoBean, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            lotteryUserInfoInfoBean = lotteryUserInfoEntity.info;
        }
        if ((i11 & 2) != 0) {
            list = lotteryUserInfoEntity.priceItems;
        }
        return lotteryUserInfoEntity.copy(lotteryUserInfoInfoBean, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LotteryUserInfoInfoBean getInfo() {
        return this.info;
    }

    public final List<LotteryUserActivityInfoPriceItemsBean> component2() {
        return this.priceItems;
    }

    public final LotteryUserInfoEntity copy(LotteryUserInfoInfoBean info, List<LotteryUserActivityInfoPriceItemsBean> priceItems) {
        return new LotteryUserInfoEntity(info, priceItems);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryUserInfoEntity)) {
            return false;
        }
        LotteryUserInfoEntity lotteryUserInfoEntity = (LotteryUserInfoEntity) other;
        return Intrinsics.c(this.info, lotteryUserInfoEntity.info) && Intrinsics.c(this.priceItems, lotteryUserInfoEntity.priceItems);
    }

    public final LotteryUserInfoInfoBean getInfo() {
        return this.info;
    }

    public final List<LotteryUserActivityInfoPriceItemsBean> getPriceItems() {
        return this.priceItems;
    }

    public int hashCode() {
        LotteryUserInfoInfoBean lotteryUserInfoInfoBean = this.info;
        int iHashCode = (lotteryUserInfoInfoBean == null ? 0 : lotteryUserInfoInfoBean.hashCode()) * 31;
        List<LotteryUserActivityInfoPriceItemsBean> list = this.priceItems;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "LotteryUserInfoEntity(info=" + this.info + ", priceItems=" + this.priceItems + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        LotteryUserInfoInfoBean lotteryUserInfoInfoBean = this.info;
        if (lotteryUserInfoInfoBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryUserInfoInfoBean.writeToParcel(dest, flags);
        }
        List<LotteryUserActivityInfoPriceItemsBean> list = this.priceItems;
        if (list == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list.size());
        Iterator<LotteryUserActivityInfoPriceItemsBean> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }
}
