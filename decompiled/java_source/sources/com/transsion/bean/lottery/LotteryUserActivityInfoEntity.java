package com.transsion.bean.lottery;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\r\u0010\u000eJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\fHÆ\u0003JQ\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00052\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001J\u0006\u0010\u001e\u001a\u00020\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\u001fHÖ\u0001J\t\u0010%\u001a\u00020&HÖ\u0001J\u0016\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006,"}, d2 = {"Lcom/transsion/bean/lottery/LotteryUserActivityInfoEntity;", "Landroid/os/Parcelable;", "activity", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;", "priceItems", "", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;", "userLottery", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;", "drawResults", "Lcom/transsion/bean/lottery/LotteryUserActivityInfoDrawResultsBean;", CampaignEx.JSON_KEY_TITLE, "Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;", "<init>", "(Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;Ljava/util/List;Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;Ljava/util/List;Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;)V", "getActivity", "()Lcom/transsion/bean/lottery/LotteryUserActivityInfoActivityBean;", "getPriceItems", "()Ljava/util/List;", "getUserLottery", "()Lcom/transsion/bean/lottery/LotteryUserActivityInfoUserLotteryBean;", "getDrawResults", "getTitle", "()Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryUserActivityInfoEntity implements Parcelable {
    public static final Parcelable.Creator<LotteryUserActivityInfoEntity> CREATOR = new a();
    private final LotteryUserActivityInfoActivityBean activity;
    private final List<LotteryUserActivityInfoDrawResultsBean> drawResults;
    private final List<LotteryUserActivityInfoPriceItemsBean> priceItems;
    private final LotteryUserActivityTitleBean title;
    private final LotteryUserActivityInfoUserLotteryBean userLottery;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityInfoEntity createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Intrinsics.h(parcel, "parcel");
            LotteryUserActivityInfoActivityBean lotteryUserActivityInfoActivityBeanCreateFromParcel = parcel.readInt() == 0 ? null : LotteryUserActivityInfoActivityBean.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(LotteryUserActivityInfoPriceItemsBean.CREATOR.createFromParcel(parcel));
                }
            }
            LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBeanCreateFromParcel = parcel.readInt() == 0 ? null : LotteryUserActivityInfoUserLotteryBean.CREATOR.createFromParcel(parcel);
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(LotteryUserActivityInfoDrawResultsBean.CREATOR.createFromParcel(parcel));
                }
            }
            return new LotteryUserActivityInfoEntity(lotteryUserActivityInfoActivityBeanCreateFromParcel, arrayList, lotteryUserActivityInfoUserLotteryBeanCreateFromParcel, arrayList2, parcel.readInt() != 0 ? LotteryUserActivityTitleBean.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityInfoEntity[] newArray(int i11) {
            return new LotteryUserActivityInfoEntity[i11];
        }
    }

    public LotteryUserActivityInfoEntity() {
        this(null, null, null, null, null, 31, null);
    }

    public LotteryUserActivityInfoEntity(LotteryUserActivityInfoActivityBean lotteryUserActivityInfoActivityBean, List<LotteryUserActivityInfoPriceItemsBean> list, LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean, List<LotteryUserActivityInfoDrawResultsBean> list2, LotteryUserActivityTitleBean lotteryUserActivityTitleBean) {
        this.activity = lotteryUserActivityInfoActivityBean;
        this.priceItems = list;
        this.userLottery = lotteryUserActivityInfoUserLotteryBean;
        this.drawResults = list2;
        this.title = lotteryUserActivityTitleBean;
    }

    public /* synthetic */ LotteryUserActivityInfoEntity(LotteryUserActivityInfoActivityBean lotteryUserActivityInfoActivityBean, List list, LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean, List list2, LotteryUserActivityTitleBean lotteryUserActivityTitleBean, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : lotteryUserActivityInfoActivityBean, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : lotteryUserActivityInfoUserLotteryBean, (i11 & 8) != 0 ? null : list2, (i11 & 16) != 0 ? null : lotteryUserActivityTitleBean);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LotteryUserActivityInfoEntity copy$default(LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity, LotteryUserActivityInfoActivityBean lotteryUserActivityInfoActivityBean, List list, LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean, List list2, LotteryUserActivityTitleBean lotteryUserActivityTitleBean, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            lotteryUserActivityInfoActivityBean = lotteryUserActivityInfoEntity.activity;
        }
        if ((i11 & 2) != 0) {
            list = lotteryUserActivityInfoEntity.priceItems;
        }
        List list3 = list;
        if ((i11 & 4) != 0) {
            lotteryUserActivityInfoUserLotteryBean = lotteryUserActivityInfoEntity.userLottery;
        }
        LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean2 = lotteryUserActivityInfoUserLotteryBean;
        if ((i11 & 8) != 0) {
            list2 = lotteryUserActivityInfoEntity.drawResults;
        }
        List list4 = list2;
        if ((i11 & 16) != 0) {
            lotteryUserActivityTitleBean = lotteryUserActivityInfoEntity.title;
        }
        return lotteryUserActivityInfoEntity.copy(lotteryUserActivityInfoActivityBean, list3, lotteryUserActivityInfoUserLotteryBean2, list4, lotteryUserActivityTitleBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LotteryUserActivityInfoActivityBean getActivity() {
        return this.activity;
    }

    public final List<LotteryUserActivityInfoPriceItemsBean> component2() {
        return this.priceItems;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final LotteryUserActivityInfoUserLotteryBean getUserLottery() {
        return this.userLottery;
    }

    public final List<LotteryUserActivityInfoDrawResultsBean> component4() {
        return this.drawResults;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final LotteryUserActivityTitleBean getTitle() {
        return this.title;
    }

    public final LotteryUserActivityInfoEntity copy(LotteryUserActivityInfoActivityBean activity, List<LotteryUserActivityInfoPriceItemsBean> priceItems, LotteryUserActivityInfoUserLotteryBean userLottery, List<LotteryUserActivityInfoDrawResultsBean> drawResults, LotteryUserActivityTitleBean title) {
        return new LotteryUserActivityInfoEntity(activity, priceItems, userLottery, drawResults, title);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryUserActivityInfoEntity)) {
            return false;
        }
        LotteryUserActivityInfoEntity lotteryUserActivityInfoEntity = (LotteryUserActivityInfoEntity) other;
        return Intrinsics.c(this.activity, lotteryUserActivityInfoEntity.activity) && Intrinsics.c(this.priceItems, lotteryUserActivityInfoEntity.priceItems) && Intrinsics.c(this.userLottery, lotteryUserActivityInfoEntity.userLottery) && Intrinsics.c(this.drawResults, lotteryUserActivityInfoEntity.drawResults) && Intrinsics.c(this.title, lotteryUserActivityInfoEntity.title);
    }

    public final LotteryUserActivityInfoActivityBean getActivity() {
        return this.activity;
    }

    public final List<LotteryUserActivityInfoDrawResultsBean> getDrawResults() {
        return this.drawResults;
    }

    public final List<LotteryUserActivityInfoPriceItemsBean> getPriceItems() {
        return this.priceItems;
    }

    public final LotteryUserActivityTitleBean getTitle() {
        return this.title;
    }

    public final LotteryUserActivityInfoUserLotteryBean getUserLottery() {
        return this.userLottery;
    }

    public int hashCode() {
        LotteryUserActivityInfoActivityBean lotteryUserActivityInfoActivityBean = this.activity;
        int iHashCode = (lotteryUserActivityInfoActivityBean == null ? 0 : lotteryUserActivityInfoActivityBean.hashCode()) * 31;
        List<LotteryUserActivityInfoPriceItemsBean> list = this.priceItems;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean = this.userLottery;
        int iHashCode3 = (iHashCode2 + (lotteryUserActivityInfoUserLotteryBean == null ? 0 : lotteryUserActivityInfoUserLotteryBean.hashCode())) * 31;
        List<LotteryUserActivityInfoDrawResultsBean> list2 = this.drawResults;
        int iHashCode4 = (iHashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        LotteryUserActivityTitleBean lotteryUserActivityTitleBean = this.title;
        return iHashCode4 + (lotteryUserActivityTitleBean != null ? lotteryUserActivityTitleBean.hashCode() : 0);
    }

    public String toString() {
        return "LotteryUserActivityInfoEntity(activity=" + this.activity + ", priceItems=" + this.priceItems + ", userLottery=" + this.userLottery + ", drawResults=" + this.drawResults + ", title=" + this.title + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        LotteryUserActivityInfoActivityBean lotteryUserActivityInfoActivityBean = this.activity;
        if (lotteryUserActivityInfoActivityBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryUserActivityInfoActivityBean.writeToParcel(dest, flags);
        }
        List<LotteryUserActivityInfoPriceItemsBean> list = this.priceItems;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<LotteryUserActivityInfoPriceItemsBean> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        LotteryUserActivityInfoUserLotteryBean lotteryUserActivityInfoUserLotteryBean = this.userLottery;
        if (lotteryUserActivityInfoUserLotteryBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryUserActivityInfoUserLotteryBean.writeToParcel(dest, flags);
        }
        List<LotteryUserActivityInfoDrawResultsBean> list2 = this.drawResults;
        if (list2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list2.size());
            Iterator<LotteryUserActivityInfoDrawResultsBean> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().writeToParcel(dest, flags);
            }
        }
        LotteryUserActivityTitleBean lotteryUserActivityTitleBean = this.title;
        if (lotteryUserActivityTitleBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryUserActivityTitleBean.writeToParcel(dest, flags);
        }
    }
}
