package com.transsion.upgradesdk.bean;

import android.content.Context;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonObject;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\u000b\n\u0002\b\"\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001Bé\u0001\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0004\u0012\u0006\u0010\u0019\u001a\u00020\u0010\u0012\u0006\u0010\u001a\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001b\u001a\u00020\b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u001eJ\u0006\u0010?\u001a\u00020@J\u0006\u0010A\u001a\u00020@J\u0006\u0010B\u001a\u00020@J\u0016\u0010C\u001a\u00020@2\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010D\u001a\u00020@J\u0006\u0010E\u001a\u00020@J\u0006\u0010F\u001a\u00020@J\u000e\u0010G\u001a\u00020@2\u0006\u0010H\u001a\u00020\u0010J\u000e\u0010I\u001a\u00020@2\u0006\u0010H\u001a\u00020\u0010J\u000f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010K\u001a\u00020\u0010HÆ\u0003J\t\u0010L\u001a\u00020\u0010HÆ\u0003J\t\u0010M\u001a\u00020\bHÆ\u0003J\t\u0010N\u001a\u00020\bHÆ\u0003J\t\u0010O\u001a\u00020\bHÆ\u0003J\t\u0010P\u001a\u00020\u0004HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\t\u0010R\u001a\u00020\u0004HÆ\u0003J\t\u0010S\u001a\u00020\u0010HÆ\u0003J\t\u0010T\u001a\u00020\u0010HÆ\u0003J\u000f\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010V\u001a\u00020\bHÆ\u0003J\t\u0010W\u001a\u00020\bHÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010Z\u001a\u00020\bHÆ\u0003J\t\u0010[\u001a\u00020\bHÆ\u0003J\u000f\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0011\u0010]\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\t\u0010^\u001a\u00020\u0004HÆ\u0003J\t\u0010_\u001a\u00020\u0004HÆ\u0003J\u0089\u0002\u0010`\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\b2\b\b\u0002\u0010\u0014\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u00102\b\b\u0002\u0010\u001a\u001a\u00020\u00102\b\b\u0002\u0010\u001b\u001a\u00020\b2\b\b\u0002\u0010\u001c\u001a\u00020\b2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010a\u001a\u00020@2\b\u0010b\u001a\u0004\u0018\u00010cHÖ\u0003J\u000e\u0010d\u001a\u00020\u00042\u0006\u0010e\u001a\u00020fJ\u0006\u0010g\u001a\u00020\u0004J\t\u0010h\u001a\u00020\bHÖ\u0001J\u0006\u0010i\u001a\u00020@J\b\u0010j\u001a\u00020\u0004H\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u001a\u0010\u001c\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010 R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b'\u0010#R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b(\u0010#R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010 R\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010 R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0011\u0010\u0011\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b/\u0010.R\u0011\u0010\u000e\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010,R\u0011\u0010\u0012\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b1\u0010#R\u0011\u0010\u0013\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b2\u0010#R\u001a\u0010\u001b\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010#\"\u0004\b4\u0010%R\u0011\u0010\u0014\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b5\u0010#R\u0011\u0010\u0015\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010,R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010,\"\u0004\b8\u00109R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0011\u0010\u0018\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010,R\u0011\u0010\u0019\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b=\u0010.R\u0011\u0010\u001a\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b>\u0010.¨\u0006k"}, d2 = {"Lcom/transsion/upgradesdk/bean/UpgradeData;", "Ljava/io/Serializable;", "androidVerList", "", "", "brandList", "countryCodeList", "directDwl", "", "hoverBtn", "modelList", "oldPkgVersion", "Lcom/transsion/upgradesdk/bean/OldPkgVersion;", PushConstants.PROVIDER_FIELD_PKG, "pkgVersionName", "pkgVersion", "", "pkgSize", "popUpCnt", "popUpInterval", "sdkRefreshTime", "taskStatus", "upgradeContent", "Lcom/google/gson/JsonObject;", "upgradeType", "validEndDate", "validStartDate", "reqInterval", "cdnRequestIntervalHours", "updateTime", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JJIIILjava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;JJIILjava/lang/String;)V", "getAndroidVerList", "()Ljava/util/List;", "getBrandList", "getCdnRequestIntervalHours", "()I", "setCdnRequestIntervalHours", "(I)V", "getCountryCodeList", "getDirectDwl", "getHoverBtn", "getModelList", "getOldPkgVersion", "getPkg", "()Ljava/lang/String;", "getPkgSize", "()J", "getPkgVersion", "getPkgVersionName", "getPopUpCnt", "getPopUpInterval", "getReqInterval", "setReqInterval", "getSdkRefreshTime", "getTaskStatus", "getUpdateTime", "setUpdateTime", "(Ljava/lang/String;)V", "getUpgradeContent", "()Lcom/google/gson/JsonObject;", "getUpgradeType", "getValidEndDate", "getValidStartDate", "checkAndroidVersion", "", "checkBrand", "checkCountry", "checkDateRange", "checkDialogPopInterval", "checkDialogPopTimes", "checkModel", "checkNeedUpgrade", "currentVersion", "checkVersionRange", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "getCancelButtonText", "context", "Landroid/content/Context;", "getUpgradeMessage", "hashCode", "isForceUpdate", "toString", "upgradesdk_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class UpgradeData implements Serializable {
    private final List<String> androidVerList;
    private final List<String> brandList;
    private int cdnRequestIntervalHours;
    private final List<String> countryCodeList;
    private final int directDwl;
    private final int hoverBtn;
    private final List<String> modelList;
    private final List<OldPkgVersion> oldPkgVersion;
    private final String pkg;
    private final long pkgSize;
    private final long pkgVersion;
    private final String pkgVersionName;
    private final int popUpCnt;
    private final int popUpInterval;
    private int reqInterval;
    private final int sdkRefreshTime;
    private final String taskStatus;
    private String updateTime;
    private final JsonObject upgradeContent;
    private final String upgradeType;
    private final long validEndDate;
    private final long validStartDate;

    public UpgradeData(List<String> androidVerList, List<String> brandList, List<String> countryCodeList, int i11, int i12, List<String> modelList, List<OldPkgVersion> list, String pkg, String pkgVersionName, long j11, long j12, int i13, int i14, int i15, String taskStatus, JsonObject jsonObject, String upgradeType, long j13, long j14, int i16, int i17, String str) {
        Intrinsics.h(androidVerList, "androidVerList");
        Intrinsics.h(brandList, "brandList");
        Intrinsics.h(countryCodeList, "countryCodeList");
        Intrinsics.h(modelList, "modelList");
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(pkgVersionName, "pkgVersionName");
        Intrinsics.h(taskStatus, "taskStatus");
        Intrinsics.h(upgradeType, "upgradeType");
        this.androidVerList = androidVerList;
        this.brandList = brandList;
        this.countryCodeList = countryCodeList;
        this.directDwl = i11;
        this.hoverBtn = i12;
        this.modelList = modelList;
        this.oldPkgVersion = list;
        this.pkg = pkg;
        this.pkgVersionName = pkgVersionName;
        this.pkgVersion = j11;
        this.pkgSize = j12;
        this.popUpCnt = i13;
        this.popUpInterval = i14;
        this.sdkRefreshTime = i15;
        this.taskStatus = taskStatus;
        this.upgradeContent = jsonObject;
        this.upgradeType = upgradeType;
        this.validEndDate = j13;
        this.validStartDate = j14;
        this.reqInterval = i16;
        this.cdnRequestIntervalHours = i17;
        this.updateTime = str;
    }

    public /* synthetic */ UpgradeData(List list, List list2, List list3, int i11, int i12, List list4, List list5, String str, String str2, long j11, long j12, int i13, int i14, int i15, String str3, JsonObject jsonObject, String str4, long j13, long j14, int i16, int i17, String str5, int i18, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, (i18 & 8) != 0 ? 1 : i11, (i18 & 16) != 0 ? 0 : i12, list4, (i18 & 64) != 0 ? null : list5, str, str2, j11, j12, i13, i14, (i18 & 8192) != 0 ? 3 : i15, str3, (32768 & i18) != 0 ? null : jsonObject, str4, j13, j14, (524288 & i18) != 0 ? 0 : i16, (1048576 & i18) != 0 ? 0 : i17, (i18 & 2097152) != 0 ? null : str5);
    }

    public final native boolean checkAndroidVersion();

    public final native boolean checkBrand();

    public final native boolean checkCountry();

    public final native boolean checkDateRange(long validStartDate, long validEndDate);

    public final native boolean checkDialogPopInterval();

    public final native boolean checkDialogPopTimes();

    public final native boolean checkModel();

    public final native boolean checkNeedUpgrade(long currentVersion);

    public final native boolean checkVersionRange(long currentVersion);

    public final native List component1();

    public final native long component10();

    public final native long component11();

    public final native int component12();

    public final native int component13();

    public final native int component14();

    public final native String component15();

    public final native JsonObject component16();

    public final native String component17();

    public final native long component18();

    public final native long component19();

    public final native List component2();

    public final native int component20();

    public final native int component21();

    public final native String component22();

    public final native List component3();

    public final native int component4();

    public final native int component5();

    public final native List component6();

    public final native List component7();

    public final native String component8();

    public final native String component9();

    public final UpgradeData copy(List<String> androidVerList, List<String> brandList, List<String> countryCodeList, int directDwl, int hoverBtn, List<String> modelList, List<OldPkgVersion> oldPkgVersion, String pkg, String pkgVersionName, long pkgVersion, long pkgSize, int popUpCnt, int popUpInterval, int sdkRefreshTime, String taskStatus, JsonObject upgradeContent, String upgradeType, long validEndDate, long validStartDate, int reqInterval, int cdnRequestIntervalHours, String updateTime) {
        Intrinsics.h(androidVerList, "androidVerList");
        Intrinsics.h(brandList, "brandList");
        Intrinsics.h(countryCodeList, "countryCodeList");
        Intrinsics.h(modelList, "modelList");
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(pkgVersionName, "pkgVersionName");
        Intrinsics.h(taskStatus, "taskStatus");
        Intrinsics.h(upgradeType, "upgradeType");
        return new UpgradeData(androidVerList, brandList, countryCodeList, directDwl, hoverBtn, modelList, oldPkgVersion, pkg, pkgVersionName, pkgVersion, pkgSize, popUpCnt, popUpInterval, sdkRefreshTime, taskStatus, upgradeContent, upgradeType, validEndDate, validStartDate, reqInterval, cdnRequestIntervalHours, updateTime);
    }

    public native boolean equals(Object other);

    public final native List getAndroidVerList();

    public final native List getBrandList();

    public final native String getCancelButtonText(Context context);

    public final native int getCdnRequestIntervalHours();

    public final native List getCountryCodeList();

    public final native int getDirectDwl();

    public final native int getHoverBtn();

    public final native List getModelList();

    public final native List getOldPkgVersion();

    public final native String getPkg();

    public final native long getPkgSize();

    public final native long getPkgVersion();

    public final native String getPkgVersionName();

    public final native int getPopUpCnt();

    public final native int getPopUpInterval();

    public final native int getReqInterval();

    public final native int getSdkRefreshTime();

    public final native String getTaskStatus();

    public final native String getUpdateTime();

    public final native JsonObject getUpgradeContent();

    public final native String getUpgradeMessage();

    public final native String getUpgradeType();

    public final native long getValidEndDate();

    public final native long getValidStartDate();

    public native int hashCode();

    public final native boolean isForceUpdate();

    public final native void setCdnRequestIntervalHours(int i11);

    public final native void setReqInterval(int i11);

    public final native void setUpdateTime(String str);

    public native String toString();
}
