package com.tn.tranpay.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.tn.tranpay.network.BaseContent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Keep
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b8\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002Bû\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u001cJ\u000b\u00107\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0017\u0010:\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011HÆ\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0002\u0010.J\u0011\u0010<\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0010\u0010@\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\"J\u000b\u0010A\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0010\u0010D\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\"J\u000b\u0010E\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u0084\u0002\u0010J\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0016\b\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0002\u0010KJ\t\u0010L\u001a\u00020\bHÖ\u0001J\u0013\u0010M\u001a\u00020\u00132\b\u0010N\u001a\u0004\u0018\u00010OHÖ\u0003J\t\u0010P\u001a\u00020\bHÖ\u0001J\t\u0010Q\u001a\u00020\u0004HÖ\u0001J\u0019\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\bHÖ\u0001R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001eR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001eR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001eR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001eR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001eR\u001f\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0015\u0010\u0012\u001a\u0004\u0018\u00010\u0013¢\u0006\n\n\u0002\u0010/\u001a\u0004\b-\u0010.R\u0019\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001eR\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001eR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u001eR\u0015\u0010\u001a\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010#\u001a\u0004\b5\u0010\"R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\u001e¨\u0006W"}, d2 = {"Lcom/tn/tranpay/bean/LoadConfigContent;", "Lcom/tn/tranpay/network/BaseContent;", "Landroid/os/Parcelable;", RewardPlus.AMOUNT, "", "areaCode", "bindToken", "coins", "", "countryCode", "countryLogo", "countryName", "cpFrontPage", "cpLogo", "cpName", "currency", "languagePackage", "", "loginStatus", "", "medium", "", "Lcom/tn/tranpay/bean/MediumInputBean;", "orderDescription", "orderId", "symbol", "testMode", "txnId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getAmount", "()Ljava/lang/String;", "getAreaCode", "getBindToken", "getCoins", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCountryCode", "getCountryLogo", "getCountryName", "getCpFrontPage", "getCpLogo", "getCpName", "getCurrency", "getLanguagePackage", "()Ljava/util/Map;", "getLoginStatus", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getMedium", "()Ljava/util/List;", "getOrderDescription", "getOrderId", "getSymbol", "getTestMode", "getTxnId", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/tn/tranpay/bean/LoadConfigContent;", "describeContents", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "lib_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LoadConfigContent extends BaseContent implements Parcelable {
    public static final Parcelable.Creator<LoadConfigContent> CREATOR = new a();
    private final String amount;
    private final String areaCode;
    private final String bindToken;
    private final Integer coins;
    private final String countryCode;
    private final String countryLogo;
    private final String countryName;
    private final String cpFrontPage;
    private final String cpLogo;
    private final String cpName;
    private final String currency;
    private final Map<String, String> languagePackage;
    private final Boolean loginStatus;
    private final List<MediumInputBean> medium;
    private final String orderDescription;
    private final String orderId;
    private final String symbol;
    private final Integer testMode;
    private final String txnId;

    public static final class a implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadConfigContent createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            Boolean boolValueOf;
            ArrayList arrayList;
            Intrinsics.h(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            String string6 = parcel.readString();
            String string7 = parcel.readString();
            String string8 = parcel.readString();
            String string9 = parcel.readString();
            String string10 = parcel.readString();
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i11 = parcel.readInt();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(i11);
                int i12 = 0;
                while (i12 != i11) {
                    linkedHashMap2.put(parcel.readString(), parcel.readString());
                    i12++;
                    i11 = i11;
                }
                linkedHashMap = linkedHashMap2;
            }
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int i13 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i13);
                int i14 = 0;
                while (i14 != i13) {
                    arrayList2.add(MediumInputBean.CREATOR.createFromParcel(parcel));
                    i14++;
                    i13 = i13;
                }
                arrayList = arrayList2;
            }
            return new LoadConfigContent(string, string2, string3, numValueOf, string4, string5, string6, string7, string8, string9, string10, linkedHashMap, boolValueOf, arrayList, parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final LoadConfigContent[] newArray(int i11) {
            return new LoadConfigContent[i11];
        }
    }

    public LoadConfigContent() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 524287, null);
    }

    public LoadConfigContent(String str, String str2, String str3, Integer num, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Map<String, String> map, Boolean bool, List<MediumInputBean> list, String str11, String str12, String str13, Integer num2, String str14) {
        this.amount = str;
        this.areaCode = str2;
        this.bindToken = str3;
        this.coins = num;
        this.countryCode = str4;
        this.countryLogo = str5;
        this.countryName = str6;
        this.cpFrontPage = str7;
        this.cpLogo = str8;
        this.cpName = str9;
        this.currency = str10;
        this.languagePackage = map;
        this.loginStatus = bool;
        this.medium = list;
        this.orderDescription = str11;
        this.orderId = str12;
        this.symbol = str13;
        this.testMode = num2;
        this.txnId = str14;
    }

    public /* synthetic */ LoadConfigContent(String str, String str2, String str3, Integer num, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Map map, Boolean bool, List list, String str11, String str12, String str13, Integer num2, String str14, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : num, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? null : str6, (i11 & 128) != 0 ? null : str7, (i11 & 256) != 0 ? null : str8, (i11 & 512) != 0 ? null : str9, (i11 & 1024) != 0 ? null : str10, (i11 & 2048) != 0 ? null : map, (i11 & 4096) != 0 ? null : bool, (i11 & 8192) != 0 ? null : list, (i11 & 16384) != 0 ? null : str11, (i11 & 32768) != 0 ? null : str12, (i11 & 65536) != 0 ? null : str13, (i11 & 131072) != 0 ? null : num2, (i11 & 262144) != 0 ? null : str14);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAmount() {
        return this.amount;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getCpName() {
        return this.cpName;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getCurrency() {
        return this.currency;
    }

    public final Map<String, String> component12() {
        return this.languagePackage;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Boolean getLoginStatus() {
        return this.loginStatus;
    }

    public final List<MediumInputBean> component14() {
        return this.medium;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getOrderDescription() {
        return this.orderDescription;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getSymbol() {
        return this.symbol;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Integer getTestMode() {
        return this.testMode;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getTxnId() {
        return this.txnId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAreaCode() {
        return this.areaCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBindToken() {
        return this.bindToken;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getCoins() {
        return this.coins;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCountryCode() {
        return this.countryCode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getCountryLogo() {
        return this.countryLogo;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getCountryName() {
        return this.countryName;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCpLogo() {
        return this.cpLogo;
    }

    public final LoadConfigContent copy(String amount, String areaCode, String bindToken, Integer coins, String countryCode, String countryLogo, String countryName, String cpFrontPage, String cpLogo, String cpName, String currency, Map<String, String> languagePackage, Boolean loginStatus, List<MediumInputBean> medium, String orderDescription, String orderId, String symbol, Integer testMode, String txnId) {
        return new LoadConfigContent(amount, areaCode, bindToken, coins, countryCode, countryLogo, countryName, cpFrontPage, cpLogo, cpName, currency, languagePackage, loginStatus, medium, orderDescription, orderId, symbol, testMode, txnId);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LoadConfigContent)) {
            return false;
        }
        LoadConfigContent loadConfigContent = (LoadConfigContent) other;
        return Intrinsics.c(this.amount, loadConfigContent.amount) && Intrinsics.c(this.areaCode, loadConfigContent.areaCode) && Intrinsics.c(this.bindToken, loadConfigContent.bindToken) && Intrinsics.c(this.coins, loadConfigContent.coins) && Intrinsics.c(this.countryCode, loadConfigContent.countryCode) && Intrinsics.c(this.countryLogo, loadConfigContent.countryLogo) && Intrinsics.c(this.countryName, loadConfigContent.countryName) && Intrinsics.c(this.cpFrontPage, loadConfigContent.cpFrontPage) && Intrinsics.c(this.cpLogo, loadConfigContent.cpLogo) && Intrinsics.c(this.cpName, loadConfigContent.cpName) && Intrinsics.c(this.currency, loadConfigContent.currency) && Intrinsics.c(this.languagePackage, loadConfigContent.languagePackage) && Intrinsics.c(this.loginStatus, loadConfigContent.loginStatus) && Intrinsics.c(this.medium, loadConfigContent.medium) && Intrinsics.c(this.orderDescription, loadConfigContent.orderDescription) && Intrinsics.c(this.orderId, loadConfigContent.orderId) && Intrinsics.c(this.symbol, loadConfigContent.symbol) && Intrinsics.c(this.testMode, loadConfigContent.testMode) && Intrinsics.c(this.txnId, loadConfigContent.txnId);
    }

    public final String getAmount() {
        return this.amount;
    }

    public final String getAreaCode() {
        return this.areaCode;
    }

    public final String getBindToken() {
        return this.bindToken;
    }

    public final Integer getCoins() {
        return this.coins;
    }

    public final String getCountryCode() {
        return this.countryCode;
    }

    public final String getCountryLogo() {
        return this.countryLogo;
    }

    public final String getCountryName() {
        return this.countryName;
    }

    public final String getCpFrontPage() {
        return this.cpFrontPage;
    }

    public final String getCpLogo() {
        return this.cpLogo;
    }

    public final String getCpName() {
        return this.cpName;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final Map<String, String> getLanguagePackage() {
        return this.languagePackage;
    }

    public final Boolean getLoginStatus() {
        return this.loginStatus;
    }

    public final List<MediumInputBean> getMedium() {
        return this.medium;
    }

    public final String getOrderDescription() {
        return this.orderDescription;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getSymbol() {
        return this.symbol;
    }

    public final Integer getTestMode() {
        return this.testMode;
    }

    public final String getTxnId() {
        return this.txnId;
    }

    public int hashCode() {
        String str = this.amount;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.areaCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.bindToken;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.coins;
        int iHashCode4 = (iHashCode3 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.countryCode;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.countryLogo;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.countryName;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.cpFrontPage;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.cpLogo;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.cpName;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.currency;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        Map<String, String> map = this.languagePackage;
        int iHashCode12 = (iHashCode11 + (map == null ? 0 : map.hashCode())) * 31;
        Boolean bool = this.loginStatus;
        int iHashCode13 = (iHashCode12 + (bool == null ? 0 : bool.hashCode())) * 31;
        List<MediumInputBean> list = this.medium;
        int iHashCode14 = (iHashCode13 + (list == null ? 0 : list.hashCode())) * 31;
        String str11 = this.orderDescription;
        int iHashCode15 = (iHashCode14 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.orderId;
        int iHashCode16 = (iHashCode15 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.symbol;
        int iHashCode17 = (iHashCode16 + (str13 == null ? 0 : str13.hashCode())) * 31;
        Integer num2 = this.testMode;
        int iHashCode18 = (iHashCode17 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str14 = this.txnId;
        return iHashCode18 + (str14 != null ? str14.hashCode() : 0);
    }

    public String toString() {
        return "LoadConfigContent(amount=" + this.amount + ", areaCode=" + this.areaCode + ", bindToken=" + this.bindToken + ", coins=" + this.coins + ", countryCode=" + this.countryCode + ", countryLogo=" + this.countryLogo + ", countryName=" + this.countryName + ", cpFrontPage=" + this.cpFrontPage + ", cpLogo=" + this.cpLogo + ", cpName=" + this.cpName + ", currency=" + this.currency + ", languagePackage=" + this.languagePackage + ", loginStatus=" + this.loginStatus + ", medium=" + this.medium + ", orderDescription=" + this.orderDescription + ", orderId=" + this.orderId + ", symbol=" + this.symbol + ", testMode=" + this.testMode + ", txnId=" + this.txnId + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "out");
        parcel.writeString(this.amount);
        parcel.writeString(this.areaCode);
        parcel.writeString(this.bindToken);
        Integer num = this.coins;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        parcel.writeString(this.countryCode);
        parcel.writeString(this.countryLogo);
        parcel.writeString(this.countryName);
        parcel.writeString(this.cpFrontPage);
        parcel.writeString(this.cpLogo);
        parcel.writeString(this.cpName);
        parcel.writeString(this.currency);
        Map<String, String> map = this.languagePackage;
        if (map == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeString(entry.getValue());
            }
        }
        Boolean bool = this.loginStatus;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        List<MediumInputBean> list = this.medium;
        if (list == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            Iterator<MediumInputBean> it = list.iterator();
            while (it.hasNext()) {
                it.next().writeToParcel(parcel, flags);
            }
        }
        parcel.writeString(this.orderDescription);
        parcel.writeString(this.orderId);
        parcel.writeString(this.symbol);
        Integer num2 = this.testMode;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        parcel.writeString(this.txnId);
    }
}
