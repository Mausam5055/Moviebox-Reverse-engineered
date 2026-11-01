package com.transsion.memberapi;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\f\b\u0087\b\u0018\u0000 '2\u00020\u0001:\u0001(B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J0\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u001b\u0010\u0016J\u0010\u0010\u001c\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u0012J\u001a\u0010\u001f\u001a\u00020\u00022\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dHÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010!\u001a\u0004\b\"\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010#\u001a\u0004\b$\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010%\u001a\u0004\b&\u0010\u0018¨\u0006)"}, d2 = {"Lcom/transsion/memberapi/PremiumV2CheckAccessDto;", "Landroid/os/Parcelable;", "", "hasAccess", "", EventConstants.KEY_ACTION, "Lcom/transsion/memberapi/ThreeInOnePopup;", "popup", "<init>", "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopup;)V", "Landroid/os/Parcel;", "dest", "", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "component1", "()Ljava/lang/Boolean;", "component2", "()Ljava/lang/String;", "component3", "()Lcom/transsion/memberapi/ThreeInOnePopup;", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/memberapi/ThreeInOnePopup;)Lcom/transsion/memberapi/PremiumV2CheckAccessDto;", "toString", "hashCode", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Boolean;", "getHasAccess", "Ljava/lang/String;", "getAction", "Lcom/transsion/memberapi/ThreeInOnePopup;", "getPopup", "Companion", "a", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PremiumV2CheckAccessDto implements Parcelable {
    public static final String ACTION_ACCESS_ACTION_LOTTERY = "ACCESS_ACTION_LOTTERY";
    public static final String ACTION_ACCESS_ACTION_VIP = "ACCESS_ACTION_VIP";
    private final String action;
    private final Boolean hasAccess;
    private final ThreeInOnePopup popup;
    public static final Parcelable.Creator<PremiumV2CheckAccessDto> CREATOR = new b();

    public static final class b implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PremiumV2CheckAccessDto createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Intrinsics.h(parcel, "parcel");
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new PremiumV2CheckAccessDto(boolValueOf, parcel.readString(), ThreeInOnePopup.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final PremiumV2CheckAccessDto[] newArray(int i11) {
            return new PremiumV2CheckAccessDto[i11];
        }
    }

    public PremiumV2CheckAccessDto(Boolean bool, String action, ThreeInOnePopup popup) {
        Intrinsics.h(action, "action");
        Intrinsics.h(popup, "popup");
        this.hasAccess = bool;
        this.action = action;
        this.popup = popup;
    }

    public static /* synthetic */ PremiumV2CheckAccessDto copy$default(PremiumV2CheckAccessDto premiumV2CheckAccessDto, Boolean bool, String str, ThreeInOnePopup threeInOnePopup, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = premiumV2CheckAccessDto.hasAccess;
        }
        if ((i11 & 2) != 0) {
            str = premiumV2CheckAccessDto.action;
        }
        if ((i11 & 4) != 0) {
            threeInOnePopup = premiumV2CheckAccessDto.popup;
        }
        return premiumV2CheckAccessDto.copy(bool, str, threeInOnePopup);
    }

    public final native Boolean component1();

    public final native String component2();

    public final native ThreeInOnePopup component3();

    public final native PremiumV2CheckAccessDto copy(Boolean hasAccess, String action, ThreeInOnePopup popup);

    @Override // android.os.Parcelable
    public final native int describeContents();

    public native boolean equals(Object other);

    public final native String getAction();

    public final native Boolean getHasAccess();

    public final native ThreeInOnePopup getPopup();

    public native int hashCode();

    public native String toString();

    @Override // android.os.Parcelable
    public final native void writeToParcel(Parcel dest, int flags);
}
