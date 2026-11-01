package com.tn.tranpay.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\b¢\u0006\u0002\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u0011\u0010!\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010#\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010$\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\bHÆ\u0003J~\u0010&\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010'J\t\u0010(\u001a\u00020)HÖ\u0001J\u0013\u0010*\u001a\u00020+2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\t\u0010.\u001a\u00020)HÖ\u0001J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\u0019\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020)HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0011R\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0018\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0015\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u001a\u0010\u0013R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017¨\u00065"}, d2 = {"Lcom/tn/tranpay/bean/MethodInfo;", "Landroid/os/Parcelable;", "code", "", "name", RewardPlus.ICON, "methodType", "supportAmount", "", "", "minAmount", "maxAmount", "discount", "inputs", "Lcom/tn/tranpay/bean/MethodInput;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;)V", "getCode", "()Ljava/lang/String;", "getDiscount", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getIcon", "getInputs", "()Ljava/util/List;", "getMaxAmount", "getMethodType", "getMinAmount", "getName", "getSupportAmount", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;)Lcom/tn/tranpay/bean/MethodInfo;", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MethodInfo implements Parcelable {
    public static final Parcelable.Creator<MethodInfo> CREATOR = new a();
    private final String code;
    private final Double discount;
    private final String icon;
    private final List<MethodInput> inputs;
    private final Double maxAmount;
    private final String methodType;
    private final Double minAmount;
    private final String name;
    private final List<Double> supportAmount;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MethodInfo createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(Double.valueOf(parcel.readDouble()));
                }
            }
            Double dValueOf = parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble());
            Double dValueOf2 = parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble());
            Double dValueOf3 = parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble());
            if (parcel.readInt() == 0) {
                arrayList2 = null;
            } else {
                int i13 = parcel.readInt();
                arrayList2 = new ArrayList(i13);
                for (int i14 = 0; i14 != i13; i14++) {
                    arrayList2.add(MethodInput.CREATOR.createFromParcel(parcel));
                }
            }
            return new MethodInfo(string, string2, string3, string4, arrayList, dValueOf, dValueOf2, dValueOf3, arrayList2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MethodInfo[] newArray(int i11) {
            return new MethodInfo[i11];
        }
    }

    public MethodInfo(String code, String name, String icon, String methodType, List<Double> list, Double d11, Double d12, Double d13, List<MethodInput> list2) {
        Intrinsics.h(code, "code");
        Intrinsics.h(name, "name");
        Intrinsics.h(icon, "icon");
        Intrinsics.h(methodType, "methodType");
        this.code = code;
        this.name = name;
        this.icon = icon;
        this.methodType = methodType;
        this.supportAmount = list;
        this.minAmount = d11;
        this.maxAmount = d12;
        this.discount = d13;
        this.inputs = list2;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMethodType() {
        return this.methodType;
    }

    public final List<Double> component5() {
        return this.supportAmount;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Double getMinAmount() {
        return this.minAmount;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Double getMaxAmount() {
        return this.maxAmount;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Double getDiscount() {
        return this.discount;
    }

    public final List<MethodInput> component9() {
        return this.inputs;
    }

    public final MethodInfo copy(String code, String name, String icon, String methodType, List<Double> supportAmount, Double minAmount, Double maxAmount, Double discount, List<MethodInput> inputs) {
        Intrinsics.h(code, "code");
        Intrinsics.h(name, "name");
        Intrinsics.h(icon, "icon");
        Intrinsics.h(methodType, "methodType");
        return new MethodInfo(code, name, icon, methodType, supportAmount, minAmount, maxAmount, discount, inputs);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MethodInfo)) {
            return false;
        }
        MethodInfo methodInfo = (MethodInfo) other;
        return Intrinsics.c(this.code, methodInfo.code) && Intrinsics.c(this.name, methodInfo.name) && Intrinsics.c(this.icon, methodInfo.icon) && Intrinsics.c(this.methodType, methodInfo.methodType) && Intrinsics.c(this.supportAmount, methodInfo.supportAmount) && Intrinsics.c(this.minAmount, methodInfo.minAmount) && Intrinsics.c(this.maxAmount, methodInfo.maxAmount) && Intrinsics.c(this.discount, methodInfo.discount) && Intrinsics.c(this.inputs, methodInfo.inputs);
    }

    public final String getCode() {
        return this.code;
    }

    public final Double getDiscount() {
        return this.discount;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final List<MethodInput> getInputs() {
        return this.inputs;
    }

    public final Double getMaxAmount() {
        return this.maxAmount;
    }

    public final String getMethodType() {
        return this.methodType;
    }

    public final Double getMinAmount() {
        return this.minAmount;
    }

    public final String getName() {
        return this.name;
    }

    public final List<Double> getSupportAmount() {
        return this.supportAmount;
    }

    public int hashCode() {
        int iHashCode = ((((((this.code.hashCode() * 31) + this.name.hashCode()) * 31) + this.icon.hashCode()) * 31) + this.methodType.hashCode()) * 31;
        List<Double> list = this.supportAmount;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Double d11 = this.minAmount;
        int iHashCode3 = (iHashCode2 + (d11 == null ? 0 : d11.hashCode())) * 31;
        Double d12 = this.maxAmount;
        int iHashCode4 = (iHashCode3 + (d12 == null ? 0 : d12.hashCode())) * 31;
        Double d13 = this.discount;
        int iHashCode5 = (iHashCode4 + (d13 == null ? 0 : d13.hashCode())) * 31;
        List<MethodInput> list2 = this.inputs;
        return iHashCode5 + (list2 != null ? list2.hashCode() : 0);
    }

    public String toString() {
        return "MethodInfo(code=" + this.code + ", name=" + this.name + ", icon=" + this.icon + ", methodType=" + this.methodType + ", supportAmount=" + this.supportAmount + ", minAmount=" + this.minAmount + ", maxAmount=" + this.maxAmount + ", discount=" + this.discount + ", inputs=" + this.inputs + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.code);
        parcel.writeString(this.name);
        parcel.writeString(this.icon);
        parcel.writeString(this.methodType);
        List<Double> list = this.supportAmount;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<Double> it = list.iterator();
            while (it.hasNext()) {
                parcel.writeDouble(it.next().doubleValue());
            }
        }
        Double d11 = this.minAmount;
        if (d11 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d11.doubleValue());
        }
        Double d12 = this.maxAmount;
        if (d12 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d12.doubleValue());
        }
        Double d13 = this.discount;
        if (d13 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d13.doubleValue());
        }
        List<MethodInput> list2 = this.inputs;
        if (list2 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(list2.size());
        Iterator<MethodInput> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(parcel, flags);
        }
    }
}
