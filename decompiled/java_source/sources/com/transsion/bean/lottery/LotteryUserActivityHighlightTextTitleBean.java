package com.transsion.bean.lottery;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0006\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u001a"}, d2 = {"Lcom/transsion/bean/lottery/LotteryUserActivityHighlightTextTitleBean;", "Landroid/os/Parcelable;", MimeTypes.BASE_TYPE_TEXT, "", "highlightText", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "getHighlightText", "component1", "component2", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "CommercializationApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LotteryUserActivityHighlightTextTitleBean implements Parcelable {
    public static final Parcelable.Creator<LotteryUserActivityHighlightTextTitleBean> CREATOR = new a();
    private final String highlightText;
    private final String text;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityHighlightTextTitleBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new LotteryUserActivityHighlightTextTitleBean(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LotteryUserActivityHighlightTextTitleBean[] newArray(int i11) {
            return new LotteryUserActivityHighlightTextTitleBean[i11];
        }
    }

    public LotteryUserActivityHighlightTextTitleBean(String str, String str2) {
        this.text = str;
        this.highlightText = str2;
    }

    public static /* synthetic */ LotteryUserActivityHighlightTextTitleBean copy$default(LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = lotteryUserActivityHighlightTextTitleBean.text;
        }
        if ((i11 & 2) != 0) {
            str2 = lotteryUserActivityHighlightTextTitleBean.highlightText;
        }
        return lotteryUserActivityHighlightTextTitleBean.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getHighlightText() {
        return this.highlightText;
    }

    public final LotteryUserActivityHighlightTextTitleBean copy(String text, String highlightText) {
        return new LotteryUserActivityHighlightTextTitleBean(text, highlightText);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LotteryUserActivityHighlightTextTitleBean)) {
            return false;
        }
        LotteryUserActivityHighlightTextTitleBean lotteryUserActivityHighlightTextTitleBean = (LotteryUserActivityHighlightTextTitleBean) other;
        return Intrinsics.c(this.text, lotteryUserActivityHighlightTextTitleBean.text) && Intrinsics.c(this.highlightText, lotteryUserActivityHighlightTextTitleBean.highlightText);
    }

    public final String getHighlightText() {
        return this.highlightText;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        String str = this.text;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.highlightText;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "LotteryUserActivityHighlightTextTitleBean(text=" + this.text + ", highlightText=" + this.highlightText + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.text);
        dest.writeString(this.highlightText);
    }
}
