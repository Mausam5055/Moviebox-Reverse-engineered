package com.tn.tranpay.bean;

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

/* JADX INFO: loaded from: classes4.dex */
@Keep
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b$\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0012J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006HÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010\u001eJ\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0098\u0001\u0010.\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010/J\t\u00100\u001a\u00020\u000eHÖ\u0001J\u0013\u00101\u001a\u00020\t2\b\u00102\u001a\u0004\u0018\u000103HÖ\u0003J\t\u00104\u001a\u00020\u000eHÖ\u0001J\t\u00105\u001a\u00020\u0003HÖ\u0001J\u0019\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u000eHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\b\u0010\u0018R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0015\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0014R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0014R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0014¨\u0006;"}, d2 = {"Lcom/tn/tranpay/bean/MediumInputBean;", "Landroid/os/Parcelable;", "code", "", "endSecondH5", "inputs", "", "Lcom/tn/tranpay/bean/InputInfoBean;", "isNeedLogin", "", "logo", "methodType", "name", "sortId", "", "speedSecondH5", "startSecondH5", "tradeMark", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "getEndSecondH5", "getInputs", "()Ljava/util/List;", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getLogo", "getMethodType", "getName", "getSortId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSpeedSecondH5", "getStartSecondH5", "getTradeMark", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tn/tranpay/bean/MediumInputBean;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MediumInputBean implements Parcelable {
    public static final Parcelable.Creator<MediumInputBean> CREATOR = new a();
    private final String code;
    private final String endSecondH5;
    private final List<InputInfoBean> inputs;
    private final Boolean isNeedLogin;
    private final String logo;
    private final String methodType;
    private final String name;
    private final Integer sortId;
    private final String speedSecondH5;
    private final String startSecondH5;
    private final String tradeMark;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MediumInputBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(InputInfoBean.CREATOR.createFromParcel(parcel));
                }
            }
            return new MediumInputBean(string, string2, arrayList, parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MediumInputBean[] newArray(int i11) {
            return new MediumInputBean[i11];
        }
    }

    public MediumInputBean() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public MediumInputBean(String str, String str2, List<InputInfoBean> list, Boolean bool, String str3, String str4, String str5, Integer num, String str6, String str7, String str8) {
        this.code = str;
        this.endSecondH5 = str2;
        this.inputs = list;
        this.isNeedLogin = bool;
        this.logo = str3;
        this.methodType = str4;
        this.name = str5;
        this.sortId = num;
        this.speedSecondH5 = str6;
        this.startSecondH5 = str7;
        this.tradeMark = str8;
    }

    public /* synthetic */ MediumInputBean(String str, String str2, List list, Boolean bool, String str3, String str4, String str5, Integer num, String str6, String str7, String str8, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : list, (i11 & 8) != 0 ? null : bool, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? null : num, (i11 & 256) != 0 ? null : str6, (i11 & 512) != 0 ? null : str7, (i11 & 1024) == 0 ? str8 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getStartSecondH5() {
        return this.startSecondH5;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getTradeMark() {
        return this.tradeMark;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEndSecondH5() {
        return this.endSecondH5;
    }

    public final List<InputInfoBean> component3() {
        return this.inputs;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Boolean getIsNeedLogin() {
        return this.isNeedLogin;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLogo() {
        return this.logo;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getMethodType() {
        return this.methodType;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getSortId() {
        return this.sortId;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getSpeedSecondH5() {
        return this.speedSecondH5;
    }

    public final MediumInputBean copy(String code, String endSecondH5, List<InputInfoBean> inputs, Boolean isNeedLogin, String logo, String methodType, String name, Integer sortId, String speedSecondH5, String startSecondH5, String tradeMark) {
        return new MediumInputBean(code, endSecondH5, inputs, isNeedLogin, logo, methodType, name, sortId, speedSecondH5, startSecondH5, tradeMark);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediumInputBean)) {
            return false;
        }
        MediumInputBean mediumInputBean = (MediumInputBean) other;
        return Intrinsics.c(this.code, mediumInputBean.code) && Intrinsics.c(this.endSecondH5, mediumInputBean.endSecondH5) && Intrinsics.c(this.inputs, mediumInputBean.inputs) && Intrinsics.c(this.isNeedLogin, mediumInputBean.isNeedLogin) && Intrinsics.c(this.logo, mediumInputBean.logo) && Intrinsics.c(this.methodType, mediumInputBean.methodType) && Intrinsics.c(this.name, mediumInputBean.name) && Intrinsics.c(this.sortId, mediumInputBean.sortId) && Intrinsics.c(this.speedSecondH5, mediumInputBean.speedSecondH5) && Intrinsics.c(this.startSecondH5, mediumInputBean.startSecondH5) && Intrinsics.c(this.tradeMark, mediumInputBean.tradeMark);
    }

    public final String getCode() {
        return this.code;
    }

    public final String getEndSecondH5() {
        return this.endSecondH5;
    }

    public final List<InputInfoBean> getInputs() {
        return this.inputs;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final String getMethodType() {
        return this.methodType;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getSortId() {
        return this.sortId;
    }

    public final String getSpeedSecondH5() {
        return this.speedSecondH5;
    }

    public final String getStartSecondH5() {
        return this.startSecondH5;
    }

    public final String getTradeMark() {
        return this.tradeMark;
    }

    public int hashCode() {
        String str = this.code;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.endSecondH5;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<InputInfoBean> list = this.inputs;
        int iHashCode3 = (iHashCode2 + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool = this.isNeedLogin;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str3 = this.logo;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.methodType;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.name;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.sortId;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        String str6 = this.speedSecondH5;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.startSecondH5;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.tradeMark;
        return iHashCode10 + (str8 != null ? str8.hashCode() : 0);
    }

    public final Boolean isNeedLogin() {
        return this.isNeedLogin;
    }

    public String toString() {
        return "MediumInputBean(code=" + this.code + ", endSecondH5=" + this.endSecondH5 + ", inputs=" + this.inputs + ", isNeedLogin=" + this.isNeedLogin + ", logo=" + this.logo + ", methodType=" + this.methodType + ", name=" + this.name + ", sortId=" + this.sortId + ", speedSecondH5=" + this.speedSecondH5 + ", startSecondH5=" + this.startSecondH5 + ", tradeMark=" + this.tradeMark + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.code);
        parcel.writeString(this.endSecondH5);
        List<InputInfoBean> list = this.inputs;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<InputInfoBean> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(parcel, flags);
            }
        }
        Boolean bool = this.isNeedLogin;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        parcel.writeString(this.logo);
        parcel.writeString(this.methodType);
        parcel.writeString(this.name);
        Integer num = this.sortId;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        parcel.writeString(this.speedSecondH5);
        parcel.writeString(this.startSecondH5);
        parcel.writeString(this.tradeMark);
    }
}
