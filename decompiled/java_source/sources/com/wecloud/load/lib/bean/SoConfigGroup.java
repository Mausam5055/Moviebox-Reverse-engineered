package com.wecloud.load.lib.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0004HÆ\u0003J\u0015\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\bHÆ\u0003JC\u0010\u0017\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\bHÆ\u0001J\u0006\u0010\u0018\u001a\u00020\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0004HÖ\u0001J\u0016\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0019R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006%"}, d2 = {"Lcom/wecloud/load/lib/bean/SoConfigGroup;", "Landroid/os/Parcelable;", "so_names", "", "", "method_name", "input", "variants", "", "Lcom/wecloud/load/lib/bean/CpuVariant;", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V", "getSo_names", "()Ljava/util/List;", "getMethod_name", "()Ljava/lang/String;", "getInput", "getVariants", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SoConfigGroup implements Parcelable {
    public static final Parcelable.Creator<SoConfigGroup> CREATOR = new a();
    private final String input;
    private final String method_name;
    private final List<String> so_names;
    private final Map<String, CpuVariant> variants;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SoConfigGroup createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            String string = parcel.readString();
            String string2 = parcel.readString();
            int i11 = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(i11);
            for (int i12 = 0; i12 != i11; i12++) {
                linkedHashMap.put(parcel.readString(), CpuVariant.CREATOR.createFromParcel(parcel));
            }
            return new SoConfigGroup(arrayListCreateStringArrayList, string, string2, linkedHashMap);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SoConfigGroup[] newArray(int i11) {
            return new SoConfigGroup[i11];
        }
    }

    public SoConfigGroup(List<String> so_names, String method_name, String input, Map<String, CpuVariant> variants) {
        Intrinsics.h(so_names, "so_names");
        Intrinsics.h(method_name, "method_name");
        Intrinsics.h(input, "input");
        Intrinsics.h(variants, "variants");
        this.so_names = so_names;
        this.method_name = method_name;
        this.input = input;
        this.variants = variants;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SoConfigGroup copy$default(SoConfigGroup soConfigGroup, List list, String str, String str2, Map map, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = soConfigGroup.so_names;
        }
        if ((i11 & 2) != 0) {
            str = soConfigGroup.method_name;
        }
        if ((i11 & 4) != 0) {
            str2 = soConfigGroup.input;
        }
        if ((i11 & 8) != 0) {
            map = soConfigGroup.variants;
        }
        return soConfigGroup.copy(list, str, str2, map);
    }

    public final List<String> component1() {
        return this.so_names;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMethod_name() {
        return this.method_name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getInput() {
        return this.input;
    }

    public final Map<String, CpuVariant> component4() {
        return this.variants;
    }

    public final SoConfigGroup copy(List<String> so_names, String method_name, String input, Map<String, CpuVariant> variants) {
        Intrinsics.h(so_names, "so_names");
        Intrinsics.h(method_name, "method_name");
        Intrinsics.h(input, "input");
        Intrinsics.h(variants, "variants");
        return new SoConfigGroup(so_names, method_name, input, variants);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SoConfigGroup)) {
            return false;
        }
        SoConfigGroup soConfigGroup = (SoConfigGroup) other;
        return Intrinsics.c(this.so_names, soConfigGroup.so_names) && Intrinsics.c(this.method_name, soConfigGroup.method_name) && Intrinsics.c(this.input, soConfigGroup.input) && Intrinsics.c(this.variants, soConfigGroup.variants);
    }

    public final String getInput() {
        return this.input;
    }

    public final String getMethod_name() {
        return this.method_name;
    }

    public final List<String> getSo_names() {
        return this.so_names;
    }

    public final Map<String, CpuVariant> getVariants() {
        return this.variants;
    }

    public int hashCode() {
        return (((((this.so_names.hashCode() * 31) + this.method_name.hashCode()) * 31) + this.input.hashCode()) * 31) + this.variants.hashCode();
    }

    public String toString() {
        return "SoConfigGroup(so_names=" + this.so_names + ", method_name=" + this.method_name + ", input=" + this.input + ", variants=" + this.variants + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeStringList(this.so_names);
        dest.writeString(this.method_name);
        dest.writeString(this.input);
        Map<String, CpuVariant> map = this.variants;
        dest.writeInt(map.size());
        for (Map.Entry<String, CpuVariant> entry : map.entrySet()) {
            dest.writeString(entry.getKey());
            entry.getValue().writeToParcel(dest, flags);
        }
    }
}
