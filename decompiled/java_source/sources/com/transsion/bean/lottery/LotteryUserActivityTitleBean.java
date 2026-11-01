package com.transsion.bean.lottery;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/transsion/bean/lottery/LotteryUserActivityTitleBean;", "Landroid/os/Parcelable;", "firstTitle", "Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;", "secondTitle", "<init>", "(Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;)V", "getFirstTitle", "()Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;", "getSecondTitle", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryUserActivityTitleBean implements Parcelable {
    public static final Parcelable.Creator<LotteryUserActivityTitleBean> CREATOR = new a();
    private final LotteryUserActivityHighlightTextTitleBean firstTitle;
    private final LotteryUserActivityHighlightTextTitleBean secondTitle;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityTitleBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LotteryUserActivityTitleBean(parcel.readInt() == 0 ? null : LotteryUserActivityHighlightTextTitleBean.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? LotteryUserActivityHighlightTextTitleBean.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityTitleBean[] newArray(int i11) {
            return new LotteryUserActivityTitleBean[i11];
        }
    }

    public LotteryUserActivityTitleBean(LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean, LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean2) {
        this.firstTitle = lotteryUserActivityHighlightTextTitleBean;
        this.secondTitle = lotteryUserActivityHighlightTextTitleBean2;
    }

    public static /* synthetic */ LotteryUserActivityTitleBean copy$default(LotteryUserActivityTitleBean lotteryUserActivityTitleBean, LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean, LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            lotteryUserActivityHighlightTextTitleBean = lotteryUserActivityTitleBean.firstTitle;
        }
        if ((i11 & 2) != 0) {
            lotteryUserActivityHighlightTextTitleBean2 = lotteryUserActivityTitleBean.secondTitle;
        }
        return lotteryUserActivityTitleBean.copy(lotteryUserActivityHighlightTextTitleBean, lotteryUserActivityHighlightTextTitleBean2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final LotteryUserActivityHighlightTextTitleBean getFirstTitle() {
        return this.firstTitle;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LotteryUserActivityHighlightTextTitleBean getSecondTitle() {
        return this.secondTitle;
    }

    public final LotteryUserActivityTitleBean copy(LotteryUserActivityHighlightTextTitleBean firstTitle, LotteryUserActivityHighlightTextTitleBean secondTitle) {
        return new LotteryUserActivityTitleBean(firstTitle, secondTitle);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryUserActivityTitleBean)) {
            return false;
        }
        LotteryUserActivityTitleBean lotteryUserActivityTitleBean = (LotteryUserActivityTitleBean) other;
        return Intrinsics.c(this.firstTitle, lotteryUserActivityTitleBean.firstTitle) && Intrinsics.c(this.secondTitle, lotteryUserActivityTitleBean.secondTitle);
    }

    public final LotteryUserActivityHighlightTextTitleBean getFirstTitle() {
        return this.firstTitle;
    }

    public final LotteryUserActivityHighlightTextTitleBean getSecondTitle() {
        return this.secondTitle;
    }

    public int hashCode() {
        LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean = this.firstTitle;
        int iHashCode = (lotteryUserActivityHighlightTextTitleBean == null ? 0 : lotteryUserActivityHighlightTextTitleBean.hashCode()) * 31;
        LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean2 = this.secondTitle;
        return iHashCode + (lotteryUserActivityHighlightTextTitleBean2 != null ? lotteryUserActivityHighlightTextTitleBean2.hashCode() : 0);
    }

    public String toString() {
        return "LotteryUserActivityTitleBean(firstTitle=" + this.firstTitle + ", secondTitle=" + this.secondTitle + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean = this.firstTitle;
        if (lotteryUserActivityHighlightTextTitleBean == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryUserActivityHighlightTextTitleBean.writeToParcel(dest, flags);
        }
        LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean2 = this.secondTitle;
        if (lotteryUserActivityHighlightTextTitleBean2 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            lotteryUserActivityHighlightTextTitleBean2.writeToParcel(dest, flags);
        }
    }
}
