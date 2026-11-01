package com.cloud.tmc.integration.model;

import com.cloud.config.utils.XLogUtil;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigsKt;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonObject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b:\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Bß\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u001a\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\u001a\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\u001a\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\u001a\u0010\f\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0002\u0010\u0016J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u00104J\u0010\u0010C\u001a\u0004\u0018\u00010\u0014HÆ\u0003¢\u0006\u0002\u00104J\u000b\u0010D\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001d\u0010F\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tHÆ\u0003J\u001d\u0010G\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tHÆ\u0003J\u001d\u0010H\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tHÆ\u0003J\u001d\u0010I\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tHÆ\u0003J\u0010\u0010J\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010/J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jþ\u0001\u0010L\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u001c\b\u0002\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\u001c\b\u0002\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\u001c\b\u0002\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\u001c\b\u0002\u0010\f\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\t2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÆ\u0001¢\u0006\u0002\u0010MJ\u0013\u0010N\u001a\u00020O2\b\u0010P\u001a\u0004\u0018\u00010QHÖ\u0003J\t\u0010R\u001a\u00020\u000eHÖ\u0001J\t\u0010S\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R.\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR.\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001a\"\u0004\b\u001e\u0010\u001cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010 \"\u0004\b$\u0010\"R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0018\"\u0004\b&\u0010'R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0018\"\u0004\b)\u0010'R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010\u0018\"\u0004\b+\u0010'R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0018\"\u0004\b-\u0010'R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u0010\n\u0002\u00107\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u0010\n\u0002\u00107\u001a\u0004\b8\u00104\"\u0004\b9\u00106R.\u0010\n\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u001a\"\u0004\b;\u0010\u001cR.\u0010\f\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0018\u00010\bj\n\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u001a\"\u0004\b=\u0010\u001c¨\u0006T"}, d2 = {"Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "appId", "", CustomConfigsKt.COMMON_CONFIG, "Lcom/google/gson/JsonObject;", XLogUtil.TAG, "blackCountryList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "whiteCountryList", "blackModelList", "whiteModelList", "netType", "", "lowestSDKVersion", "highestSDKVersion", "lowestFrameworkVersion", "highestFrameworkVersion", "validTime", "", "openBrowserTime", "(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V", "getAppId", "()Ljava/lang/String;", "getBlackCountryList", "()Ljava/util/ArrayList;", "setBlackCountryList", "(Ljava/util/ArrayList;)V", "getBlackModelList", "setBlackModelList", "getCommonConfig", "()Lcom/google/gson/JsonObject;", "setCommonConfig", "(Lcom/google/gson/JsonObject;)V", "getConfig", "setConfig", "getHighestFrameworkVersion", "setHighestFrameworkVersion", "(Ljava/lang/String;)V", "getHighestSDKVersion", "setHighestSDKVersion", "getLowestFrameworkVersion", "setLowestFrameworkVersion", "getLowestSDKVersion", "setLowestSDKVersion", "getNetType", "()Ljava/lang/Integer;", "setNetType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getOpenBrowserTime", "()Ljava/lang/Long;", "setOpenBrowserTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getValidTime", "setValidTime", "getWhiteCountryList", "setWhiteCountryList", "getWhiteModelList", "setWhiteModelList", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/cloud/tmc/integration/model/LauncherPreStrategyModel;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class LauncherPreStrategyModel extends BaseBean {
    private final String appId;
    private ArrayList<String> blackCountryList;
    private ArrayList<String> blackModelList;
    private JsonObject commonConfig;
    private JsonObject config;
    private String highestFrameworkVersion;
    private String highestSDKVersion;
    private String lowestFrameworkVersion;
    private String lowestSDKVersion;
    private Integer netType;
    private Long openBrowserTime;
    private Long validTime;
    private ArrayList<String> whiteCountryList;
    private ArrayList<String> whiteModelList;

    public LauncherPreStrategyModel(String str, JsonObject jsonObject, JsonObject jsonObject2, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<String> arrayList3, ArrayList<String> arrayList4, Integer num, String str2, String str3, String str4, String str5, Long l11, Long l12) {
        this.appId = str;
        this.commonConfig = jsonObject;
        this.config = jsonObject2;
        this.blackCountryList = arrayList;
        this.whiteCountryList = arrayList2;
        this.blackModelList = arrayList3;
        this.whiteModelList = arrayList4;
        this.netType = num;
        this.lowestSDKVersion = str2;
        this.highestSDKVersion = str3;
        this.lowestFrameworkVersion = str4;
        this.highestFrameworkVersion = str5;
        this.validTime = l11;
        this.openBrowserTime = l12;
    }

    public /* synthetic */ LauncherPreStrategyModel(String str, JsonObject jsonObject, JsonObject jsonObject2, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, Integer num, String str2, String str3, String str4, String str5, Long l11, Long l12, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, jsonObject, jsonObject2, arrayList, arrayList2, arrayList3, arrayList4, (i11 & 128) != 0 ? 3 : num, str2, str3, str4, str5, (i11 & 4096) != 0 ? -1L : l11, (i11 & 8192) != 0 ? -1L : l12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppId() {
        return this.appId;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getHighestSDKVersion() {
        return this.highestSDKVersion;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getLowestFrameworkVersion() {
        return this.lowestFrameworkVersion;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getHighestFrameworkVersion() {
        return this.highestFrameworkVersion;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Long getValidTime() {
        return this.validTime;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Long getOpenBrowserTime() {
        return this.openBrowserTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final JsonObject getCommonConfig() {
        return this.commonConfig;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final JsonObject getConfig() {
        return this.config;
    }

    public final ArrayList<String> component4() {
        return this.blackCountryList;
    }

    public final ArrayList<String> component5() {
        return this.whiteCountryList;
    }

    public final ArrayList<String> component6() {
        return this.blackModelList;
    }

    public final ArrayList<String> component7() {
        return this.whiteModelList;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getNetType() {
        return this.netType;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getLowestSDKVersion() {
        return this.lowestSDKVersion;
    }

    public final LauncherPreStrategyModel copy(String appId, JsonObject commonConfig, JsonObject config, ArrayList<String> blackCountryList, ArrayList<String> whiteCountryList, ArrayList<String> blackModelList, ArrayList<String> whiteModelList, Integer netType, String lowestSDKVersion, String highestSDKVersion, String lowestFrameworkVersion, String highestFrameworkVersion, Long validTime, Long openBrowserTime) {
        return new LauncherPreStrategyModel(appId, commonConfig, config, blackCountryList, whiteCountryList, blackModelList, whiteModelList, netType, lowestSDKVersion, highestSDKVersion, lowestFrameworkVersion, highestFrameworkVersion, validTime, openBrowserTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LauncherPreStrategyModel)) {
            return false;
        }
        LauncherPreStrategyModel launcherPreStrategyModel = (LauncherPreStrategyModel) other;
        return Intrinsics.c(this.appId, launcherPreStrategyModel.appId) && Intrinsics.c(this.commonConfig, launcherPreStrategyModel.commonConfig) && Intrinsics.c(this.config, launcherPreStrategyModel.config) && Intrinsics.c(this.blackCountryList, launcherPreStrategyModel.blackCountryList) && Intrinsics.c(this.whiteCountryList, launcherPreStrategyModel.whiteCountryList) && Intrinsics.c(this.blackModelList, launcherPreStrategyModel.blackModelList) && Intrinsics.c(this.whiteModelList, launcherPreStrategyModel.whiteModelList) && Intrinsics.c(this.netType, launcherPreStrategyModel.netType) && Intrinsics.c(this.lowestSDKVersion, launcherPreStrategyModel.lowestSDKVersion) && Intrinsics.c(this.highestSDKVersion, launcherPreStrategyModel.highestSDKVersion) && Intrinsics.c(this.lowestFrameworkVersion, launcherPreStrategyModel.lowestFrameworkVersion) && Intrinsics.c(this.highestFrameworkVersion, launcherPreStrategyModel.highestFrameworkVersion) && Intrinsics.c(this.validTime, launcherPreStrategyModel.validTime) && Intrinsics.c(this.openBrowserTime, launcherPreStrategyModel.openBrowserTime);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final ArrayList<String> getBlackCountryList() {
        return this.blackCountryList;
    }

    public final ArrayList<String> getBlackModelList() {
        return this.blackModelList;
    }

    public final JsonObject getCommonConfig() {
        return this.commonConfig;
    }

    public final JsonObject getConfig() {
        return this.config;
    }

    public final String getHighestFrameworkVersion() {
        return this.highestFrameworkVersion;
    }

    public final String getHighestSDKVersion() {
        return this.highestSDKVersion;
    }

    public final String getLowestFrameworkVersion() {
        return this.lowestFrameworkVersion;
    }

    public final String getLowestSDKVersion() {
        return this.lowestSDKVersion;
    }

    public final Integer getNetType() {
        return this.netType;
    }

    public final Long getOpenBrowserTime() {
        return this.openBrowserTime;
    }

    public final Long getValidTime() {
        return this.validTime;
    }

    public final ArrayList<String> getWhiteCountryList() {
        return this.whiteCountryList;
    }

    public final ArrayList<String> getWhiteModelList() {
        return this.whiteModelList;
    }

    public int hashCode() {
        String str = this.appId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        JsonObject jsonObject = this.commonConfig;
        int iHashCode2 = (iHashCode + (jsonObject == null ? 0 : jsonObject.hashCode())) * 31;
        JsonObject jsonObject2 = this.config;
        int iHashCode3 = (iHashCode2 + (jsonObject2 == null ? 0 : jsonObject2.hashCode())) * 31;
        ArrayList<String> arrayList = this.blackCountryList;
        int iHashCode4 = (iHashCode3 + (arrayList == null ? 0 : arrayList.hashCode())) * 31;
        ArrayList<String> arrayList2 = this.whiteCountryList;
        int iHashCode5 = (iHashCode4 + (arrayList2 == null ? 0 : arrayList2.hashCode())) * 31;
        ArrayList<String> arrayList3 = this.blackModelList;
        int iHashCode6 = (iHashCode5 + (arrayList3 == null ? 0 : arrayList3.hashCode())) * 31;
        ArrayList<String> arrayList4 = this.whiteModelList;
        int iHashCode7 = (iHashCode6 + (arrayList4 == null ? 0 : arrayList4.hashCode())) * 31;
        Integer num = this.netType;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.lowestSDKVersion;
        int iHashCode9 = (iHashCode8 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.highestSDKVersion;
        int iHashCode10 = (iHashCode9 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.lowestFrameworkVersion;
        int iHashCode11 = (iHashCode10 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.highestFrameworkVersion;
        int iHashCode12 = (iHashCode11 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Long l11 = this.validTime;
        int iHashCode13 = (iHashCode12 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.openBrowserTime;
        return iHashCode13 + (l12 != null ? l12.hashCode() : 0);
    }

    public final void setBlackCountryList(ArrayList<String> arrayList) {
        this.blackCountryList = arrayList;
    }

    public final void setBlackModelList(ArrayList<String> arrayList) {
        this.blackModelList = arrayList;
    }

    public final void setCommonConfig(JsonObject jsonObject) {
        this.commonConfig = jsonObject;
    }

    public final void setConfig(JsonObject jsonObject) {
        this.config = jsonObject;
    }

    public final void setHighestFrameworkVersion(String str) {
        this.highestFrameworkVersion = str;
    }

    public final void setHighestSDKVersion(String str) {
        this.highestSDKVersion = str;
    }

    public final void setLowestFrameworkVersion(String str) {
        this.lowestFrameworkVersion = str;
    }

    public final void setLowestSDKVersion(String str) {
        this.lowestSDKVersion = str;
    }

    public final void setNetType(Integer num) {
        this.netType = num;
    }

    public final void setOpenBrowserTime(Long l11) {
        this.openBrowserTime = l11;
    }

    public final void setValidTime(Long l11) {
        this.validTime = l11;
    }

    public final void setWhiteCountryList(ArrayList<String> arrayList) {
        this.whiteCountryList = arrayList;
    }

    public final void setWhiteModelList(ArrayList<String> arrayList) {
        this.whiteModelList = arrayList;
    }

    public String toString() {
        return "LauncherPreStrategyModel(appId=" + this.appId + ", commonConfig=" + this.commonConfig + ", config=" + this.config + ", blackCountryList=" + this.blackCountryList + ", whiteCountryList=" + this.whiteCountryList + ", blackModelList=" + this.blackModelList + ", whiteModelList=" + this.whiteModelList + ", netType=" + this.netType + ", lowestSDKVersion=" + this.lowestSDKVersion + ", highestSDKVersion=" + this.highestSDKVersion + ", lowestFrameworkVersion=" + this.lowestFrameworkVersion + ", highestFrameworkVersion=" + this.highestFrameworkVersion + ", validTime=" + this.validTime + ", openBrowserTime=" + this.openBrowserTime + ")";
    }
}
