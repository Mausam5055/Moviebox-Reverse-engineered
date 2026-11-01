package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b7\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B¯\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0018J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u0010\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0018J\u0010\u0010B\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010-J\u000b\u0010C\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0011\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0013HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0015HÆ\u0003J¶\u0001\u0010H\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÆ\u0001¢\u0006\u0002\u0010IJ\u0006\u0010J\u001a\u00020\u000eJ\u0013\u0010K\u001a\u00020\u00032\b\u0010L\u001a\u0004\u0018\u00010MHÖ\u0003J\t\u0010N\u001a\u00020\u000eHÖ\u0001J\t\u0010O\u001a\u00020\u0005HÖ\u0001J\u0016\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u000eR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0002\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u001d\"\u0004\b!\u0010\u001fR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR\"\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b(\u0010\u0018\"\u0004\b)\u0010\u001aR\u001e\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b*\u0010\u0018\"\u0004\b+\u0010\u001aR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u00100\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u001d\"\u0004\b2\u0010\u001fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u001d\"\u0004\b4\u0010\u001fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\u001d\"\u0004\b6\u0010\u001fR\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010%\"\u0004\b8\u0010'R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:¨\u0006U"}, d2 = {"Lcom/transsion/memberapi/MemberCheckResult;", "Landroid/os/Parcelable;", "isPassed", "", "interceptType", "", "memberPrice", "currency", "memberRights", "", "Lcom/transsion/memberapi/MemberRights;", "vipEnable", "vipPayEnable", "multiDownloadLimit", "", "inviteRewardDays", "inviteH5Url", "pointUrl", "vipAdScenes", "", "threeInOnePopup", "Lcom/transsion/memberapi/ThreeInOnePopup;", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/memberapi/ThreeInOnePopup;)V", "()Ljava/lang/Boolean;", "setPassed", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getInterceptType", "()Ljava/lang/String;", "setInterceptType", "(Ljava/lang/String;)V", "getMemberPrice", "setMemberPrice", "getCurrency", "setCurrency", "getMemberRights", "()Ljava/util/List;", "setMemberRights", "(Ljava/util/List;)V", "getVipEnable", "setVipEnable", "getVipPayEnable", "setVipPayEnable", "getMultiDownloadLimit", "()Ljava/lang/Integer;", "setMultiDownloadLimit", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getInviteRewardDays", "setInviteRewardDays", "getInviteH5Url", "setInviteH5Url", "getPointUrl", "setPointUrl", "getVipAdScenes", "setVipAdScenes", "getThreeInOnePopup", "()Lcom/transsion/memberapi/ThreeInOnePopup;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/memberapi/ThreeInOnePopup;)Lcom/transsion/memberapi/MemberCheckResult;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberCheckResult implements Parcelable {
    public static final Parcelable.Creator<MemberCheckResult> CREATOR = new a();
    private String currency;
    private String interceptType;
    private String inviteH5Url;
    private String inviteRewardDays;
    private Boolean isPassed;
    private String memberPrice;
    private List<MemberRights> memberRights;
    private Integer multiDownloadLimit;
    private String pointUrl;
    private final ThreeInOnePopup threeInOnePopup;
    private List<String> vipAdScenes;
    private Boolean vipEnable;
    private Boolean vipPayEnable;

    /* JADX INFO: loaded from: classes5.dex */
    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MemberCheckResult createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            Boolean boolValueOf = parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0);
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i11 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    arrayList2.add(MemberRights.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new MemberCheckResult(boolValueOf, string, string2, string3, arrayList, parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0), parcel.readInt() == 0 ? null : Boolean.valueOf(parcel.readInt() != 0), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArrayList(), parcel.readInt() != 0 ? ThreeInOnePopup.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MemberCheckResult[] newArray(int i11) {
            return new MemberCheckResult[i11];
        }
    }

    public MemberCheckResult() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    public MemberCheckResult(Boolean bool, String str, String str2, String str3, List<MemberRights> list, Boolean bool2, Boolean bool3, Integer num, String str4, String str5, String str6, List<String> list2, ThreeInOnePopup threeInOnePopup) {
        this.isPassed = bool;
        this.interceptType = str;
        this.memberPrice = str2;
        this.currency = str3;
        this.memberRights = list;
        this.vipEnable = bool2;
        this.vipPayEnable = bool3;
        this.multiDownloadLimit = num;
        this.inviteRewardDays = str4;
        this.inviteH5Url = str5;
        this.pointUrl = str6;
        this.vipAdScenes = list2;
        this.threeInOnePopup = threeInOnePopup;
    }

    public /* synthetic */ MemberCheckResult(Boolean bool, String str, String str2, String str3, List list, Boolean bool2, Boolean bool3, Integer num, String str4, String str5, String str6, List list2, ThreeInOnePopup threeInOnePopup, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : bool, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : list, (i11 & 32) != 0 ? null : bool2, (i11 & 64) != 0 ? null : bool3, (i11 & 128) != 0 ? null : num, (i11 & 256) != 0 ? null : str4, (i11 & 512) != 0 ? null : str5, (i11 & 1024) != 0 ? null : str6, (i11 & 2048) != 0 ? null : list2, (i11 & 4096) == 0 ? threeInOnePopup : null);
    }

    public final native Boolean component1();

    public final native String component10();

    public final native String component11();

    public final native List component12();

    public final native ThreeInOnePopup component13();

    public final native String component2();

    public final native String component3();

    public final native String component4();

    public final native List component5();

    public final native Boolean component6();

    public final native Boolean component7();

    public final native Integer component8();

    public final native String component9();

    public final MemberCheckResult copy(Boolean isPassed, String interceptType, String memberPrice, String currency, List<MemberRights> memberRights, Boolean vipEnable, Boolean vipPayEnable, Integer multiDownloadLimit, String inviteRewardDays, String inviteH5Url, String pointUrl, List<String> vipAdScenes, ThreeInOnePopup threeInOnePopup) {
        return new MemberCheckResult(isPassed, interceptType, memberPrice, currency, memberRights, vipEnable, vipPayEnable, multiDownloadLimit, inviteRewardDays, inviteH5Url, pointUrl, vipAdScenes, threeInOnePopup);
    }

    @Override // android.os.Parcelable
    public final native int describeContents();

    public native boolean equals(Object other);

    public final native String getCurrency();

    public final native String getInterceptType();

    public final native String getInviteH5Url();

    public final native String getInviteRewardDays();

    public final native String getMemberPrice();

    public final native List getMemberRights();

    public final native Integer getMultiDownloadLimit();

    public final native String getPointUrl();

    public final native ThreeInOnePopup getThreeInOnePopup();

    public final native List getVipAdScenes();

    public final native Boolean getVipEnable();

    public final native Boolean getVipPayEnable();

    public native int hashCode();

    public final native Boolean isPassed();

    public final native void setCurrency(String str);

    public final native void setInterceptType(String str);

    public final native void setInviteH5Url(String str);

    public final native void setInviteRewardDays(String str);

    public final native void setMemberPrice(String str);

    public final native void setMemberRights(List list);

    public final native void setMultiDownloadLimit(Integer num);

    public final native void setPassed(Boolean bool);

    public final native void setPointUrl(String str);

    public final native void setVipAdScenes(List list);

    public final native void setVipEnable(Boolean bool);

    public final native void setVipPayEnable(Boolean bool);

    public native String toString();

    @Override // android.os.Parcelable
    public final native void writeToParcel(Parcel dest, int flags);
}
