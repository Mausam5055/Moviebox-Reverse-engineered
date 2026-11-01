package com.cloud.tmc.integration.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u0000 )2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002()B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B5\u0012\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\u000eJ\u001d\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\nHÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\fHÆ\u0003J?\u0010\u001c\u001a\u00020\u00002\u001c\b\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0001J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u001eHÖ\u0001J\t\u0010$\u001a\u00020\fHÖ\u0001J\u0018\u0010%\u001a\u00020&2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u001eH\u0016R.\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\r\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0014\"\u0004\b\u0018\u0010\u0016¨\u0006*"}, d2 = {"Lcom/cloud/tmc/integration/model/AbilityConfig;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Landroid/os/Parcelable;", "Ljava/io/Serializable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "abilities", "Ljava/util/ArrayList;", "Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;", "Lkotlin/collections/ArrayList;", TmcConstants.KEY_MINI_APPID, "", "miniappName", "(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V", "getAbilities", "()Ljava/util/ArrayList;", "setAbilities", "(Ljava/util/ArrayList;)V", "getMiniappId", "()Ljava/lang/String;", "setMiniappId", "(Ljava/lang/String;)V", "getMiniappName", "setMiniappName", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "Ability", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AbilityConfig extends BaseBean implements Parcelable, Serializable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private ArrayList<Ability> abilities;
    private String miniappId;
    private String miniappName;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 #2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001#B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0019\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\nHÆ\u0003J&\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010\u0018J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0013\u0010\u001b\u001a\u00020\b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0003J\t\u0010\u001e\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001f\u001a\u00020\nHÖ\u0001J\u0018\u0010 \u001a\u00020!2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020\u001aH\u0016R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006$"}, d2 = {"Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "ability", "", "(Ljava/lang/Boolean;Ljava/lang/String;)V", "getAbility", "()Ljava/lang/String;", "setAbility", "(Ljava/lang/String;)V", "getEnable", "()Ljava/lang/Boolean;", "setEnable", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "component1", "component2", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class Ability extends BaseBean implements Serializable, Parcelable {

        /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String ability;
        private Boolean enable;

        /* JADX INFO: renamed from: com.cloud.tmc.integration.model.AbilityConfig$Ability$CREATOR, reason: from kotlin metadata */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/AbilityConfig$Ability$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/AbilityConfig$Ability;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion implements Parcelable.Creator<Ability> {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Ability createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new Ability(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Ability[] newArray(int size) {
                return new Ability[size];
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Ability(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            Object value = parcel.readValue(Boolean.TYPE.getClassLoader());
            this(value instanceof Boolean ? (Boolean) value : null, parcel.readString());
        }

        public Ability(Boolean bool, String str) {
            this.enable = bool;
            this.ability = str;
        }

        public static /* synthetic */ Ability copy$default(Ability ability, Boolean bool, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                bool = ability.enable;
            }
            if ((i11 & 2) != 0) {
                str = ability.ability;
            }
            return ability.copy(bool, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Boolean getEnable() {
            return this.enable;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getAbility() {
            return this.ability;
        }

        public final Ability copy(Boolean enable, String ability) {
            return new Ability(enable, ability);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Ability)) {
                return false;
            }
            Ability ability = (Ability) other;
            return Intrinsics.c(this.enable, ability.enable) && Intrinsics.c(this.ability, ability.ability);
        }

        public final String getAbility() {
            return this.ability;
        }

        public final Boolean getEnable() {
            return this.enable;
        }

        public int hashCode() {
            Boolean bool = this.enable;
            int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
            String str = this.ability;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        public final void setAbility(String str) {
            this.ability = str;
        }

        public final void setEnable(Boolean bool) {
            this.enable = bool;
        }

        public String toString() {
            return "Ability(enable=" + this.enable + ", ability=" + this.ability + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.h(parcel, "parcel");
            parcel.writeValue(this.enable);
            parcel.writeString(this.ability);
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.integration.model.AbilityConfig$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/AbilityConfig$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/AbilityConfig;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/AbilityConfig;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<AbilityConfig> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AbilityConfig createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AbilityConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AbilityConfig[] newArray(int size) {
            return new AbilityConfig[size];
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AbilityConfig(Parcel parcel) {
        this(parcel.createTypedArrayList(Ability.INSTANCE), parcel.readString(), parcel.readString());
        Intrinsics.h(parcel, "parcel");
    }

    public AbilityConfig(ArrayList<Ability> arrayList, String str, String str2) {
        this.abilities = arrayList;
        this.miniappId = str;
        this.miniappName = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AbilityConfig copy$default(AbilityConfig abilityConfig, ArrayList arrayList, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            arrayList = abilityConfig.abilities;
        }
        if ((i11 & 2) != 0) {
            str = abilityConfig.miniappId;
        }
        if ((i11 & 4) != 0) {
            str2 = abilityConfig.miniappName;
        }
        return abilityConfig.copy(arrayList, str, str2);
    }

    public final ArrayList<Ability> component1() {
        return this.abilities;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMiniappId() {
        return this.miniappId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMiniappName() {
        return this.miniappName;
    }

    public final AbilityConfig copy(ArrayList<Ability> abilities, String miniappId, String miniappName) {
        return new AbilityConfig(abilities, miniappId, miniappName);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AbilityConfig)) {
            return false;
        }
        AbilityConfig abilityConfig = (AbilityConfig) other;
        return Intrinsics.c(this.abilities, abilityConfig.abilities) && Intrinsics.c(this.miniappId, abilityConfig.miniappId) && Intrinsics.c(this.miniappName, abilityConfig.miniappName);
    }

    public final ArrayList<Ability> getAbilities() {
        return this.abilities;
    }

    public final String getMiniappId() {
        return this.miniappId;
    }

    public final String getMiniappName() {
        return this.miniappName;
    }

    public int hashCode() {
        ArrayList<Ability> arrayList = this.abilities;
        int iHashCode = (arrayList == null ? 0 : arrayList.hashCode()) * 31;
        String str = this.miniappId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.miniappName;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setAbilities(ArrayList<Ability> arrayList) {
        this.abilities = arrayList;
    }

    public final void setMiniappId(String str) {
        this.miniappId = str;
    }

    public final void setMiniappName(String str) {
        this.miniappName = str;
    }

    public String toString() {
        return "AbilityConfig(abilities=" + this.abilities + ", miniappId=" + this.miniappId + ", miniappName=" + this.miniappName + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeTypedList(this.abilities);
        parcel.writeString(this.miniappId);
        parcel.writeString(this.miniappName);
    }
}
