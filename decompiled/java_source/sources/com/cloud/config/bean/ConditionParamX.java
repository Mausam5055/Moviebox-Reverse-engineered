package com.cloud.config.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003Jc\u0010\u0015\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/cloud/config/bean/ConditionParamX;", "", "mcc", "", "", "osVersion", "phoneModel", "phoneBrand", "phoneLanguage", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getMcc", "()Ljava/util/List;", "getOsVersion", "getPhoneBrand", "getPhoneLanguage", "getPhoneModel", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConditionParamX {
    private final List<String> mcc;
    private final List<String> osVersion;
    private final List<String> phoneBrand;
    private final List<String> phoneLanguage;
    private final List<String> phoneModel;

    public ConditionParamX(List<String> list, List<String> list2, List<String> list3, List<String> list4, List<String> list5) {
        this.mcc = list;
        this.osVersion = list2;
        this.phoneModel = list3;
        this.phoneBrand = list4;
        this.phoneLanguage = list5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConditionParamX copy$default(ConditionParamX conditionParamX, List list, List list2, List list3, List list4, List list5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = conditionParamX.mcc;
        }
        if ((i11 & 2) != 0) {
            list2 = conditionParamX.osVersion;
        }
        List list6 = list2;
        if ((i11 & 4) != 0) {
            list3 = conditionParamX.phoneModel;
        }
        List list7 = list3;
        if ((i11 & 8) != 0) {
            list4 = conditionParamX.phoneBrand;
        }
        List list8 = list4;
        if ((i11 & 16) != 0) {
            list5 = conditionParamX.phoneLanguage;
        }
        return conditionParamX.copy(list, list6, list7, list8, list5);
    }

    public final List<String> component1() {
        return this.mcc;
    }

    public final List<String> component2() {
        return this.osVersion;
    }

    public final List<String> component3() {
        return this.phoneModel;
    }

    public final List<String> component4() {
        return this.phoneBrand;
    }

    public final List<String> component5() {
        return this.phoneLanguage;
    }

    public final ConditionParamX copy(List<String> mcc, List<String> osVersion, List<String> phoneModel, List<String> phoneBrand, List<String> phoneLanguage) {
        return new ConditionParamX(mcc, osVersion, phoneModel, phoneBrand, phoneLanguage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConditionParamX)) {
            return false;
        }
        ConditionParamX conditionParamX = (ConditionParamX) other;
        return Intrinsics.c(this.mcc, conditionParamX.mcc) && Intrinsics.c(this.osVersion, conditionParamX.osVersion) && Intrinsics.c(this.phoneModel, conditionParamX.phoneModel) && Intrinsics.c(this.phoneBrand, conditionParamX.phoneBrand) && Intrinsics.c(this.phoneLanguage, conditionParamX.phoneLanguage);
    }

    public final List<String> getMcc() {
        return this.mcc;
    }

    public final List<String> getOsVersion() {
        return this.osVersion;
    }

    public final List<String> getPhoneBrand() {
        return this.phoneBrand;
    }

    public final List<String> getPhoneLanguage() {
        return this.phoneLanguage;
    }

    public final List<String> getPhoneModel() {
        return this.phoneModel;
    }

    public int hashCode() {
        List<String> list = this.mcc;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<String> list2 = this.osVersion;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<String> list3 = this.phoneModel;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<String> list4 = this.phoneBrand;
        int iHashCode4 = (iHashCode3 + (list4 == null ? 0 : list4.hashCode())) * 31;
        List<String> list5 = this.phoneLanguage;
        return iHashCode4 + (list5 != null ? list5.hashCode() : 0);
    }

    public String toString() {
        return "ConditionParamX(mcc=" + this.mcc + ", osVersion=" + this.osVersion + ", phoneModel=" + this.phoneModel + ", phoneBrand=" + this.phoneBrand + ", phoneLanguage=" + this.phoneLanguage + ')';
    }
}
