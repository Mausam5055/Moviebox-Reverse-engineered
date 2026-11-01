package com.transsion.ad.monopoly.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b$\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bu\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u000b\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010-\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010!J\u0010\u0010.\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010$J\t\u0010/\u001a\u00020\u0003HÆ\u0003J~\u00100\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0003HÆ\u0001¢\u0006\u0002\u00101J\u0006\u00102\u001a\u00020\u000fJ\u0013\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106HÖ\u0003J\t\u00107\u001a\u00020\u000fHÖ\u0001J\t\u00108\u001a\u00020\u0003HÖ\u0001J\u0016\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0014\"\u0004\b\u001c\u0010\u001dR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0014R\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010%\u001a\u0004\b#\u0010$R\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0014¨\u0006>"}, d2 = {"Lcom/transsion/ad/monopoly/model/MbAdPlansBean;", "Landroid/os/Parcelable;", "version", "", "adPlans", "", "Lcom/transsion/ad/monopoly/model/AdPlans;", "ctxAttributeConfig", "Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;", "genre", "versionAdScene", "adSceneConfigData", "userCreateTime", "", "newUserAdShieldHour", "", "countryCode", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V", "getVersion", "()Ljava/lang/String;", "getAdPlans", "()Ljava/util/List;", "getCtxAttributeConfig", "()Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;", "setCtxAttributeConfig", "(Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;)V", "getGenre", "setGenre", "(Ljava/lang/String;)V", "getVersionAdScene", "getAdSceneConfigData", "getUserCreateTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getNewUserAdShieldHour", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCountryCode", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/ad/monopoly/model/CtxAttributeConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/ad/monopoly/model/MbAdPlansBean;", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MbAdPlansBean implements Parcelable {
    public static final Parcelable.Creator<MbAdPlansBean> CREATOR = new a();
    private final List<AdPlans> adPlans;
    private final String adSceneConfigData;
    private final String countryCode;
    private CtxAttributeConfig ctxAttributeConfig;
    private String genre;
    private final Integer newUserAdShieldHour;
    private final Long userCreateTime;
    private final String version;
    private final String versionAdScene;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MbAdPlansBean createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                arrayList = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList.add(AdPlans.CREATOR.createFromParcel(parcel));
                }
            }
            return new MbAdPlansBean(string, arrayList, parcel.readInt() == 0 ? null : CtxAttributeConfig.CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MbAdPlansBean[] newArray(int i11) {
            return new MbAdPlansBean[i11];
        }
    }

    public MbAdPlansBean(String str, List<AdPlans> list, CtxAttributeConfig ctxAttributeConfig, String str2, String str3, String str4, Long l11, Integer num, String countryCode) {
        Intrinsics.h(countryCode, "countryCode");
        this.version = str;
        this.adPlans = list;
        this.ctxAttributeConfig = ctxAttributeConfig;
        this.genre = str2;
        this.versionAdScene = str3;
        this.adSceneConfigData = str4;
        this.userCreateTime = l11;
        this.newUserAdShieldHour = num;
        this.countryCode = countryCode;
    }

    public /* synthetic */ MbAdPlansBean(String str, List list, CtxAttributeConfig ctxAttributeConfig, String str2, String str3, String str4, Long l11, Integer num, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : ctxAttributeConfig, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : l11, (i11 & 128) != 0 ? null : num, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final List<AdPlans> component2() {
        return this.adPlans;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final CtxAttributeConfig getCtxAttributeConfig() {
        return this.ctxAttributeConfig;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getGenre() {
        return this.genre;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getVersionAdScene() {
        return this.versionAdScene;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getAdSceneConfigData() {
        return this.adSceneConfigData;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Long getUserCreateTime() {
        return this.userCreateTime;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getNewUserAdShieldHour() {
        return this.newUserAdShieldHour;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    public final MbAdPlansBean copy(String version, List<AdPlans> adPlans, CtxAttributeConfig ctxAttributeConfig, String genre, String versionAdScene, String adSceneConfigData, Long userCreateTime, Integer newUserAdShieldHour, String countryCode) {
        Intrinsics.h(countryCode, "countryCode");
        return new MbAdPlansBean(version, adPlans, ctxAttributeConfig, genre, versionAdScene, adSceneConfigData, userCreateTime, newUserAdShieldHour, countryCode);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MbAdPlansBean)) {
            return false;
        }
        MbAdPlansBean mbAdPlansBean = (MbAdPlansBean) other;
        return Intrinsics.c(this.version, mbAdPlansBean.version) && Intrinsics.c(this.adPlans, mbAdPlansBean.adPlans) && Intrinsics.c(this.ctxAttributeConfig, mbAdPlansBean.ctxAttributeConfig) && Intrinsics.c(this.genre, mbAdPlansBean.genre) && Intrinsics.c(this.versionAdScene, mbAdPlansBean.versionAdScene) && Intrinsics.c(this.adSceneConfigData, mbAdPlansBean.adSceneConfigData) && Intrinsics.c(this.userCreateTime, mbAdPlansBean.userCreateTime) && Intrinsics.c(this.newUserAdShieldHour, mbAdPlansBean.newUserAdShieldHour) && Intrinsics.c(this.countryCode, mbAdPlansBean.countryCode);
    }

    public final List<AdPlans> getAdPlans() {
        return this.adPlans;
    }

    public final String getAdSceneConfigData() {
        return this.adSceneConfigData;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final CtxAttributeConfig getCtxAttributeConfig() {
        return this.ctxAttributeConfig;
    }

    public final String getGenre() {
        return this.genre;
    }

    public final Integer getNewUserAdShieldHour() {
        return this.newUserAdShieldHour;
    }

    public final Long getUserCreateTime() {
        return this.userCreateTime;
    }

    public final String getVersion() {
        return this.version;
    }

    public final String getVersionAdScene() {
        return this.versionAdScene;
    }

    public int hashCode() {
        String str = this.version;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<AdPlans> list = this.adPlans;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        CtxAttributeConfig ctxAttributeConfig = this.ctxAttributeConfig;
        int iHashCode3 = (iHashCode2 + (ctxAttributeConfig == null ? 0 : ctxAttributeConfig.hashCode())) * 31;
        String str2 = this.genre;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.versionAdScene;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.adSceneConfigData;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l11 = this.userCreateTime;
        int iHashCode7 = (iHashCode6 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Integer num = this.newUserAdShieldHour;
        return ((iHashCode7 + (num != null ? num.hashCode() : 0)) * 31) + this.countryCode.hashCode();
    }

    public final void setCtxAttributeConfig(CtxAttributeConfig ctxAttributeConfig) {
        this.ctxAttributeConfig = ctxAttributeConfig;
    }

    public final void setGenre(String str) {
        this.genre = str;
    }

    public String toString() {
        return "MbAdPlansBean(version=" + this.version + ", adPlans=" + this.adPlans + ", ctxAttributeConfig=" + this.ctxAttributeConfig + ", genre=" + this.genre + ", versionAdScene=" + this.versionAdScene + ", adSceneConfigData=" + this.adSceneConfigData + ", userCreateTime=" + this.userCreateTime + ", newUserAdShieldHour=" + this.newUserAdShieldHour + ", countryCode=" + this.countryCode + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.version);
        List<AdPlans> list = this.adPlans;
        if (list == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(list.size());
            Iterator<AdPlans> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(dest, flags);
            }
        }
        CtxAttributeConfig ctxAttributeConfig = this.ctxAttributeConfig;
        if (ctxAttributeConfig == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            ctxAttributeConfig.writeToParcel(dest, flags);
        }
        dest.writeString(this.genre);
        dest.writeString(this.versionAdScene);
        dest.writeString(this.adSceneConfigData);
        Long l11 = this.userCreateTime;
        if (l11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeLong(l11.longValue());
        }
        Integer num = this.newUserAdShieldHour;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        dest.writeString(this.countryCode);
    }
}
