package com.transsion.baselib.db.member;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0018\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0012J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0012JD\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u001dJ\u0006\u0010\u001e\u001a\u00020\u0005J\u0013\u0010\u001f\u001a\u00020\b2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u0005HÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\t\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\b\t\u0010\u0012\"\u0004\b\u0016\u0010\u0014¨\u0006)"}, d2 = {"Lcom/transsion/baselib/db/member/MemberResolutionBean;", "Landroid/os/Parcelable;", "subjectId", "", "ep", "", "se", "vipResolutionTip", "", "isUnlock", "<init>", "(Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;)V", "getSubjectId", "()Ljava/lang/String;", "getEp", "()I", "getSe", "getVipResolutionTip", "()Ljava/lang/Boolean;", "setVipResolutionTip", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "setUnlock", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;)Lcom/transsion/baselib/db/member/MemberResolutionBean;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MemberResolutionBean implements Parcelable {
    public static final Parcelable.Creator<MemberResolutionBean> CREATOR = new a();
    private final int ep;
    private Boolean isUnlock;
    private final int se;
    private final String subjectId;
    private Boolean vipResolutionTip;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final MemberResolutionBean createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            int i11 = parcel.readInt();
            int i12 = parcel.readInt();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                boolValueOf2 = null;
            } else {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new MemberResolutionBean(string, i11, i12, boolValueOf, boolValueOf2);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MemberResolutionBean[] newArray(int i11) {
            return new MemberResolutionBean[i11];
        }
    }

    public MemberResolutionBean(String subjectId, int i11, int i12, Boolean bool, Boolean bool2) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
        this.ep = i11;
        this.se = i12;
        this.vipResolutionTip = bool;
        this.isUnlock = bool2;
    }

    public /* synthetic */ MemberResolutionBean(String str, int i11, int i12, Boolean bool, Boolean bool2, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? 0 : i12, (i13 & 8) != 0 ? Boolean.FALSE : bool, (i13 & 16) != 0 ? Boolean.FALSE : bool2);
    }

    public static /* synthetic */ MemberResolutionBean copy$default(MemberResolutionBean memberResolutionBean, String str, int i11, int i12, Boolean bool, Boolean bool2, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = memberResolutionBean.subjectId;
        }
        if ((i13 & 2) != 0) {
            i11 = memberResolutionBean.ep;
        }
        int i14 = i11;
        if ((i13 & 4) != 0) {
            i12 = memberResolutionBean.se;
        }
        int i15 = i12;
        if ((i13 & 8) != 0) {
            bool = memberResolutionBean.vipResolutionTip;
        }
        Boolean bool3 = bool;
        if ((i13 & 16) != 0) {
            bool2 = memberResolutionBean.isUnlock;
        }
        return memberResolutionBean.copy(str, i14, i15, bool3, bool2);
    }

    public final native String component1();

    public final native int component2();

    public final native int component3();

    public final native Boolean component4();

    public final native Boolean component5();

    public final native MemberResolutionBean copy(String subjectId, int ep2, int se2, Boolean vipResolutionTip, Boolean isUnlock);

    @Override // android.os.Parcelable
    public final native int describeContents();

    public native boolean equals(Object other);

    public final native int getEp();

    public final native int getSe();

    public final native String getSubjectId();

    public final native Boolean getVipResolutionTip();

    public native int hashCode();

    public final native Boolean isUnlock();

    public final native void setUnlock(Boolean bool);

    public final native void setVipResolutionTip(Boolean bool);

    public native String toString();

    @Override // android.os.Parcelable
    public final native void writeToParcel(Parcel dest, int flags);
}
