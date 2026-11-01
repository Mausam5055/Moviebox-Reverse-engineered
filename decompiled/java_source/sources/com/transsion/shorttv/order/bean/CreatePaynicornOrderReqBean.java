package com.transsion.shorttv.order.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.shorttv.order.EnumPayChannel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0017\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nHÆ\u0003J\t\u00101\u001a\u00020\fHÆ\u0003J\t\u00102\u001a\u00020\u000eHÆ\u0003Jw\u00103\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eHÆ\u0001J\u0006\u00104\u001a\u000205J\u0013\u00106\u001a\u00020\f2\b\u00107\u001a\u0004\u0018\u000108HÖ\u0003J\t\u00109\u001a\u000205HÖ\u0001J\t\u0010:\u001a\u00020\u0003HÖ\u0001J\u0016\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u000205R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0012\"\u0004\b\u0018\u0010\u0014R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0012\"\u0004\b\u001e\u0010\u0014R(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010#\"\u0004\b$\u0010%R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u0006@"}, d2 = {"Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;", "Landroid/os/Parcelable;", "projectName", "", "skuId", "userId", "cpFrontPage", "activityId", "ext", "extStrJson", "", "isDebug", "", "payChannel", "Lcom/transsion/shorttv/order/EnumPayChannel;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;)V", "getProjectName", "()Ljava/lang/String;", "setProjectName", "(Ljava/lang/String;)V", "getSkuId", "setSkuId", "getUserId", "setUserId", "getCpFrontPage", "setCpFrontPage", "getActivityId", "setActivityId", "getExt", "setExt", "getExtStrJson", "()Ljava/util/Map;", "setExtStrJson", "(Ljava/util/Map;)V", "()Z", "setDebug", "(Z)V", "getPayChannel", "()Lcom/transsion/shorttv/order/EnumPayChannel;", "setPayChannel", "(Lcom/transsion/shorttv/order/EnumPayChannel;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CreatePaynicornOrderReqBean implements Parcelable {
    public static final Parcelable.Creator<CreatePaynicornOrderReqBean> CREATOR = new a();
    private String activityId;
    private String cpFrontPage;
    private String ext;
    private Map<String, String> extStrJson;
    private boolean isDebug;
    private EnumPayChannel payChannel;
    private String projectName;
    private String skuId;
    private String userId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreatePaynicornOrderReqBean createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i11 = parcel.readInt();
                linkedHashMap = new LinkedHashMap(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    linkedHashMap.put(parcel.readString(), parcel.readString());
                }
            }
            return new CreatePaynicornOrderReqBean(string, string2, string3, string4, string5, string6, linkedHashMap, parcel.readInt() != 0, EnumPayChannel.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CreatePaynicornOrderReqBean[] newArray(int i11) {
            return new CreatePaynicornOrderReqBean[i11];
        }
    }

    public CreatePaynicornOrderReqBean(String projectName, String skuId, String userId, String str, String str2, String str3, Map<String, String> map, boolean z10, EnumPayChannel payChannel) {
        Intrinsics.h(projectName, "projectName");
        Intrinsics.h(skuId, "skuId");
        Intrinsics.h(userId, "userId");
        Intrinsics.h(payChannel, "payChannel");
        this.projectName = projectName;
        this.skuId = skuId;
        this.userId = userId;
        this.cpFrontPage = str;
        this.activityId = str2;
        this.ext = str3;
        this.extStrJson = map;
        this.isDebug = z10;
        this.payChannel = payChannel;
    }

    public /* synthetic */ CreatePaynicornOrderReqBean(String str, String str2, String str3, String str4, String str5, String str6, Map map, boolean z10, EnumPayChannel enumPayChannel, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : map, (i11 & 128) != 0 ? false : z10, (i11 & 256) != 0 ? EnumPayChannel.PAY_CHANNEL_PAYNICORN : enumPayChannel);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProjectName() {
        return this.projectName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSkuId() {
        return this.skuId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getActivityId() {
        return this.activityId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getExt() {
        return this.ext;
    }

    public final Map<String, String> component7() {
        return this.extStrJson;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final boolean getIsDebug() {
        return this.isDebug;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final EnumPayChannel getPayChannel() {
        return this.payChannel;
    }

    public final CreatePaynicornOrderReqBean copy(String projectName, String skuId, String userId, String cpFrontPage, String activityId, String ext, Map<String, String> extStrJson, boolean isDebug, EnumPayChannel payChannel) {
        Intrinsics.h(projectName, "projectName");
        Intrinsics.h(skuId, "skuId");
        Intrinsics.h(userId, "userId");
        Intrinsics.h(payChannel, "payChannel");
        return new CreatePaynicornOrderReqBean(projectName, skuId, userId, cpFrontPage, activityId, ext, extStrJson, isDebug, payChannel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreatePaynicornOrderReqBean)) {
            return false;
        }
        CreatePaynicornOrderReqBean createPaynicornOrderReqBean = (CreatePaynicornOrderReqBean) other;
        return Intrinsics.c(this.projectName, createPaynicornOrderReqBean.projectName) && Intrinsics.c(this.skuId, createPaynicornOrderReqBean.skuId) && Intrinsics.c(this.userId, createPaynicornOrderReqBean.userId) && Intrinsics.c(this.cpFrontPage, createPaynicornOrderReqBean.cpFrontPage) && Intrinsics.c(this.activityId, createPaynicornOrderReqBean.activityId) && Intrinsics.c(this.ext, createPaynicornOrderReqBean.ext) && Intrinsics.c(this.extStrJson, createPaynicornOrderReqBean.extStrJson) && this.isDebug == createPaynicornOrderReqBean.isDebug && this.payChannel == createPaynicornOrderReqBean.payChannel;
    }

    public final String getActivityId() {
        return this.activityId;
    }

    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    public final String getExt() {
        return this.ext;
    }

    public final Map<String, String> getExtStrJson() {
        return this.extStrJson;
    }

    public final EnumPayChannel getPayChannel() {
        return this.payChannel;
    }

    public final String getProjectName() {
        return this.projectName;
    }

    public final String getSkuId() {
        return this.skuId;
    }

    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int iHashCode = ((((this.projectName.hashCode() * 31) + this.skuId.hashCode()) * 31) + this.userId.hashCode()) * 31;
        String str = this.cpFrontPage;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.activityId;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.ext;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Map<String, String> map = this.extStrJson;
        return ((((iHashCode4 + (map != null ? map.hashCode() : 0)) * 31) + e.a(this.isDebug)) * 31) + this.payChannel.hashCode();
    }

    public final boolean isDebug() {
        return this.isDebug;
    }

    public final void setActivityId(String str) {
        this.activityId = str;
    }

    public final void setCpFrontPage(String str) {
        this.cpFrontPage = str;
    }

    public final void setDebug(boolean z10) {
        this.isDebug = z10;
    }

    public final void setExt(String str) {
        this.ext = str;
    }

    public final void setExtStrJson(Map<String, String> map) {
        this.extStrJson = map;
    }

    public final void setPayChannel(EnumPayChannel enumPayChannel) {
        Intrinsics.h(enumPayChannel, "<set-?>");
        this.payChannel = enumPayChannel;
    }

    public final void setProjectName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.projectName = str;
    }

    public final void setSkuId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.skuId = str;
    }

    public final void setUserId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.userId = str;
    }

    public String toString() {
        return "CreatePaynicornOrderReqBean(projectName=" + this.projectName + ", skuId=" + this.skuId + ", userId=" + this.userId + ", cpFrontPage=" + this.cpFrontPage + ", activityId=" + this.activityId + ", ext=" + this.ext + ", extStrJson=" + this.extStrJson + ", isDebug=" + this.isDebug + ", payChannel=" + this.payChannel + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.projectName);
        dest.writeString(this.skuId);
        dest.writeString(this.userId);
        dest.writeString(this.cpFrontPage);
        dest.writeString(this.activityId);
        dest.writeString(this.ext);
        Map<String, String> map = this.extStrJson;
        if (map == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                dest.writeString(entry.getKey());
                dest.writeString(entry.getValue());
            }
        }
        dest.writeInt(this.isDebug ? 1 : 0);
        dest.writeString(this.payChannel.name());
    }
}
