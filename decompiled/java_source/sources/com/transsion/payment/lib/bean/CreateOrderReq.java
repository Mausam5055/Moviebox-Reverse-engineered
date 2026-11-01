package com.transsion.payment.lib.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u001d\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010 \u001a\u00020\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\u0017\u0010#\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bHÆ\u0003J\u0010\u0010$\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001cJR\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nHÆ\u0001¢\u0006\u0002\u0010&J\u0006\u0010'\u001a\u00020(J\u0013\u0010)\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010+HÖ\u0003J\t\u0010,\u001a\u00020(HÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u00020(R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R(\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001e¨\u00063"}, d2 = {"Lcom/transsion/payment/lib/bean/CreateOrderReq;", "Landroid/os/Parcelable;", "productId", "", "cpFrontPage", "subscriptOrder", "", "extStrJson", "", "payAmount", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Double;)V", "getProductId", "()Ljava/lang/String;", "setProductId", "(Ljava/lang/String;)V", "getCpFrontPage", "setCpFrontPage", "getSubscriptOrder", "()Z", "setSubscriptOrder", "(Z)V", "getExtStrJson", "()Ljava/util/Map;", "setExtStrJson", "(Ljava/util/Map;)V", "getPayAmount", "()Ljava/lang/Double;", "setPayAmount", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Double;)Lcom/transsion/payment/lib/bean/CreateOrderReq;", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "LibPayment_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CreateOrderReq implements Parcelable {
    public static final Parcelable.Creator<CreateOrderReq> CREATOR = new a();
    private String cpFrontPage;
    private Map<String, String> extStrJson;
    private Double payAmount;
    private String productId;
    private boolean subscriptOrder;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CreateOrderReq createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            boolean z10 = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i11 = parcel.readInt();
                linkedHashMap = new LinkedHashMap(i11);
                for (int i12 = 0; i12 != i11; i12++) {
                    linkedHashMap.put(parcel.readString(), parcel.readString());
                }
            }
            return new CreateOrderReq(string, string2, z10, linkedHashMap, parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CreateOrderReq[] newArray(int i11) {
            return new CreateOrderReq[i11];
        }
    }

    public CreateOrderReq(String productId, String str, boolean z10, Map<String, String> map, Double d11) {
        Intrinsics.h(productId, "productId");
        this.productId = productId;
        this.cpFrontPage = str;
        this.subscriptOrder = z10;
        this.extStrJson = map;
        this.payAmount = d11;
    }

    public /* synthetic */ CreateOrderReq(String str, String str2, boolean z10, Map map, Double d11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? false : z10, (i11 & 8) != 0 ? null : map, (i11 & 16) != 0 ? null : d11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CreateOrderReq copy$default(CreateOrderReq createOrderReq, String str, String str2, boolean z10, Map map, Double d11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = createOrderReq.productId;
        }
        if ((i11 & 2) != 0) {
            str2 = createOrderReq.cpFrontPage;
        }
        String str3 = str2;
        if ((i11 & 4) != 0) {
            z10 = createOrderReq.subscriptOrder;
        }
        boolean z11 = z10;
        if ((i11 & 8) != 0) {
            map = createOrderReq.extStrJson;
        }
        Map map2 = map;
        if ((i11 & 16) != 0) {
            d11 = createOrderReq.payAmount;
        }
        return createOrderReq.copy(str, str3, z11, map2, d11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProductId() {
        return this.productId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getSubscriptOrder() {
        return this.subscriptOrder;
    }

    public final Map<String, String> component4() {
        return this.extStrJson;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Double getPayAmount() {
        return this.payAmount;
    }

    public final CreateOrderReq copy(String productId, String cpFrontPage, boolean subscriptOrder, Map<String, String> extStrJson, Double payAmount) {
        Intrinsics.h(productId, "productId");
        return new CreateOrderReq(productId, cpFrontPage, subscriptOrder, extStrJson, payAmount);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CreateOrderReq)) {
            return false;
        }
        CreateOrderReq createOrderReq = (CreateOrderReq) other;
        return Intrinsics.c(this.productId, createOrderReq.productId) && Intrinsics.c(this.cpFrontPage, createOrderReq.cpFrontPage) && this.subscriptOrder == createOrderReq.subscriptOrder && Intrinsics.c(this.extStrJson, createOrderReq.extStrJson) && Intrinsics.c(this.payAmount, createOrderReq.payAmount);
    }

    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    public final Map<String, String> getExtStrJson() {
        return this.extStrJson;
    }

    public final Double getPayAmount() {
        return this.payAmount;
    }

    public final String getProductId() {
        return this.productId;
    }

    public final boolean getSubscriptOrder() {
        return this.subscriptOrder;
    }

    public int hashCode() {
        int iHashCode = this.productId.hashCode() * 31;
        String str = this.cpFrontPage;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + e.a(this.subscriptOrder)) * 31;
        Map<String, String> map = this.extStrJson;
        int iHashCode3 = (iHashCode2 + (map == null ? 0 : map.hashCode())) * 31;
        Double d11 = this.payAmount;
        return iHashCode3 + (d11 != null ? d11.hashCode() : 0);
    }

    public final void setCpFrontPage(String str) {
        this.cpFrontPage = str;
    }

    public final void setExtStrJson(Map<String, String> map) {
        this.extStrJson = map;
    }

    public final void setPayAmount(Double d11) {
        this.payAmount = d11;
    }

    public final void setProductId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.productId = str;
    }

    public final void setSubscriptOrder(boolean z10) {
        this.subscriptOrder = z10;
    }

    public String toString() {
        return "CreateOrderReq(productId=" + this.productId + ", cpFrontPage=" + this.cpFrontPage + ", subscriptOrder=" + this.subscriptOrder + ", extStrJson=" + this.extStrJson + ", payAmount=" + this.payAmount + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        dest.writeString(this.productId);
        dest.writeString(this.cpFrontPage);
        dest.writeInt(this.subscriptOrder ? 1 : 0);
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
        Double d11 = this.payAmount;
        if (d11 == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeDouble(d11.doubleValue());
        }
    }
}
