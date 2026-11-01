package com.tn.tranpay.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Keep
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J]\u0010\u001d\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020\u001fHÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001J\u0019\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u001fHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\f\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u0010R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\f¨\u0006+"}, d2 = {"Lcom/tn/tranpay/bean/InputInfoBean;", "Landroid/os/Parcelable;", "hint", "", "name", "reg", "tips", NativeComponentConstants.KEY_COMPONENT_TYPE, "realHint", "realTips", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getHint", "()Ljava/lang/String;", "getName", "getRealHint", "setRealHint", "(Ljava/lang/String;)V", "getRealTips", "setRealTips", "getReg", "getTips", "getType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class InputInfoBean implements Parcelable {
    public static final Parcelable.Creator<InputInfoBean> CREATOR = new a();
    private final String hint;
    private final String name;
    private String realHint;
    private String realTips;
    private final String reg;
    private final String tips;
    private final String type;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InputInfoBean createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new InputInfoBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final InputInfoBean[] newArray(int i11) {
            return new InputInfoBean[i11];
        }
    }

    public InputInfoBean() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public InputInfoBean(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.hint = str;
        this.name = str2;
        this.reg = str3;
        this.tips = str4;
        this.type = str5;
        this.realHint = str6;
        this.realTips = str7;
    }

    public /* synthetic */ InputInfoBean(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : str7);
    }

    public static /* synthetic */ InputInfoBean copy$default(InputInfoBean inputInfoBean, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = inputInfoBean.hint;
        }
        if ((i11 & 2) != 0) {
            str2 = inputInfoBean.name;
        }
        String str8 = str2;
        if ((i11 & 4) != 0) {
            str3 = inputInfoBean.reg;
        }
        String str9 = str3;
        if ((i11 & 8) != 0) {
            str4 = inputInfoBean.tips;
        }
        String str10 = str4;
        if ((i11 & 16) != 0) {
            str5 = inputInfoBean.type;
        }
        String str11 = str5;
        if ((i11 & 32) != 0) {
            str6 = inputInfoBean.realHint;
        }
        String str12 = str6;
        if ((i11 & 64) != 0) {
            str7 = inputInfoBean.realTips;
        }
        return inputInfoBean.copy(str, str8, str9, str10, str11, str12, str7);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getHint() {
        return this.hint;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getReg() {
        return this.reg;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTips() {
        return this.tips;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getRealHint() {
        return this.realHint;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getRealTips() {
        return this.realTips;
    }

    public final InputInfoBean copy(String hint, String name, String reg, String tips, String type, String realHint, String realTips) {
        return new InputInfoBean(hint, name, reg, tips, type, realHint, realTips);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InputInfoBean)) {
            return false;
        }
        InputInfoBean inputInfoBean = (InputInfoBean) other;
        return Intrinsics.c(this.hint, inputInfoBean.hint) && Intrinsics.c(this.name, inputInfoBean.name) && Intrinsics.c(this.reg, inputInfoBean.reg) && Intrinsics.c(this.tips, inputInfoBean.tips) && Intrinsics.c(this.type, inputInfoBean.type) && Intrinsics.c(this.realHint, inputInfoBean.realHint) && Intrinsics.c(this.realTips, inputInfoBean.realTips);
    }

    public final String getHint() {
        return this.hint;
    }

    public final String getName() {
        return this.name;
    }

    public final String getRealHint() {
        return this.realHint;
    }

    public final String getRealTips() {
        return this.realTips;
    }

    public final String getReg() {
        return this.reg;
    }

    public final String getTips() {
        return this.tips;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.hint;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.reg;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.tips;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.type;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.realHint;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.realTips;
        return iHashCode6 + (str7 != null ? str7.hashCode() : 0);
    }

    public final void setRealHint(String str) {
        this.realHint = str;
    }

    public final void setRealTips(String str) {
        this.realTips = str;
    }

    public String toString() {
        return "InputInfoBean(hint=" + this.hint + ", name=" + this.name + ", reg=" + this.reg + ", tips=" + this.tips + ", type=" + this.type + ", realHint=" + this.realHint + ", realTips=" + this.realTips + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.hint);
        parcel.writeString(this.name);
        parcel.writeString(this.reg);
        parcel.writeString(this.tips);
        parcel.writeString(this.type);
        parcel.writeString(this.realHint);
        parcel.writeString(this.realTips);
    }
}
