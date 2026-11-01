package com.cloud.tmc.offline.download.model;

import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010@\u001a\u00020AJ\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J.\u0010\u0011\u001a\u00020\u00002&\u0010\f\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\rj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004`\u000eJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0004J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0004J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0004J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0004J\u000e\u00100\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0004J\u000e\u00105\u001a\u00020\u00002\u0006\u00101\u001a\u000202J.\u00109\u001a\u00020\u00002&\u00107\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\rj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004`\u000eJ\u000e\u0010<\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR>\u0010\f\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0006\"\u0004\b\u001b\u0010\bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0006\"\u0004\b\u001e\u0010\bR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0006\"\u0004\b!\u0010\bR\u001c\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0006\"\u0004\b$\u0010\bR\u001c\u0010%\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0006\"\u0004\b'\u0010\bR\u001c\u0010(\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0006\"\u0004\b*\u0010\bR\u001c\u0010+\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u0006\"\u0004\b-\u0010\bR\u001c\u0010.\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\u001a\u00101\u001a\u000202X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u00104\"\u0004\b5\u00106R>\u00107\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\u0010\"\u0004\b9\u0010\u0012R\u001c\u0010:\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010\u0006\"\u0004\b<\u0010\bR\u001c\u0010=\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010\u0006\"\u0004\b?\u0010\b¨\u0006B"}, d2 = {"Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "()V", "app", "", "getApp", "()Ljava/lang/String;", "setApp", "(Ljava/lang/String;)V", "downloadModel", "getDownloadModel", "setDownloadModel", "extInfo", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getExtInfo", "()Ljava/util/HashMap;", "setExtInfo", "(Ljava/util/HashMap;)V", "extParams", "Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;", "getExtParams", "()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;", "setExtParams", "(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;)V", "extraConfig", "getExtraConfig", "setExtraConfig", "group", "getGroup", "setGroup", TmcConstants.KEY_LANGUAGE, "getLanguage", "setLanguage", "name", "getName", "setName", "nation", "getNation", "setNation", NetworkBridge.KEY_NETWORK_TYPE, "getNetworkType", "setNetworkType", "pkgEncrypted", "getPkgEncrypted", "setPkgEncrypted", "pkgUrl", "getPkgUrl", "setPkgUrl", TrackingKey.PRIORITY, "", "getPriority", "()I", "setPriority", "(I)V", "resMap", "getResMap", "setResMap", NativeComponentConstants.KEY_COMPONENT_TYPE, "getType", "setType", "version", "getVersion", "setVersion", "build", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class OfflineDownloadBuilder extends BaseBean {
    private String app;
    private String downloadModel = OfflineConstantsKt.TRIGGER_STARTUP;
    private HashMap<String, String> extInfo;
    private OffPkgConfigExtParams extParams;
    private String extraConfig;
    private String group;
    private String language;
    private String name;
    private String nation;
    private String networkType;
    private String pkgEncrypted;
    private String pkgUrl;
    private int priority;
    private HashMap<String, String> resMap;
    private String type;
    private String version;

    public final OffPkgConfig build() {
        return new OffPkgConfig(this.downloadModel, this.app, this.group, this.language, this.name, this.nation, this.networkType, this.pkgUrl, this.priority, this.version, this.type, this.resMap, this.extInfo, this.extraConfig, this.pkgEncrypted, null, this.extParams, null, 163840, null);
    }

    public final String getApp() {
        return this.app;
    }

    public final String getDownloadModel() {
        return this.downloadModel;
    }

    public final HashMap<String, String> getExtInfo() {
        return this.extInfo;
    }

    public final OffPkgConfigExtParams getExtParams() {
        return this.extParams;
    }

    public final String getExtraConfig() {
        return this.extraConfig;
    }

    public final String getGroup() {
        return this.group;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNation() {
        return this.nation;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getPkgEncrypted() {
        return this.pkgEncrypted;
    }

    public final String getPkgUrl() {
        return this.pkgUrl;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final HashMap<String, String> getResMap() {
        return this.resMap;
    }

    public final String getType() {
        return this.type;
    }

    public final String getVersion() {
        return this.version;
    }

    public final OfflineDownloadBuilder setApp(String app) {
        Intrinsics.h(app, "app");
        this.app = app;
        return this;
    }

    /* JADX INFO: renamed from: setApp, reason: collision with other method in class */
    public final void m260setApp(String str) {
        this.app = str;
    }

    public final OfflineDownloadBuilder setDownloadModel(String downloadModel) {
        Intrinsics.h(downloadModel, "downloadModel");
        this.downloadModel = downloadModel;
        return this;
    }

    /* JADX INFO: renamed from: setDownloadModel, reason: collision with other method in class */
    public final void m261setDownloadModel(String str) {
        Intrinsics.h(str, "<set-?>");
        this.downloadModel = str;
    }

    public final OfflineDownloadBuilder setExtInfo(HashMap<String, String> extInfo) {
        Intrinsics.h(extInfo, "extInfo");
        this.extInfo = extInfo;
        return this;
    }

    /* JADX INFO: renamed from: setExtInfo, reason: collision with other method in class */
    public final void m262setExtInfo(HashMap<String, String> map) {
        this.extInfo = map;
    }

    public final OfflineDownloadBuilder setExtParams(OffPkgConfigExtParams extParams) {
        Intrinsics.h(extParams, "extParams");
        this.extParams = extParams;
        return this;
    }

    /* JADX INFO: renamed from: setExtParams, reason: collision with other method in class */
    public final void m263setExtParams(OffPkgConfigExtParams offPkgConfigExtParams) {
        this.extParams = offPkgConfigExtParams;
    }

    public final OfflineDownloadBuilder setExtraConfig(String extraConfig) {
        Intrinsics.h(extraConfig, "extraConfig");
        this.extraConfig = extraConfig;
        return this;
    }

    /* JADX INFO: renamed from: setExtraConfig, reason: collision with other method in class */
    public final void m264setExtraConfig(String str) {
        this.extraConfig = str;
    }

    public final OfflineDownloadBuilder setGroup(String group) {
        Intrinsics.h(group, "group");
        this.group = group;
        return this;
    }

    /* JADX INFO: renamed from: setGroup, reason: collision with other method in class */
    public final void m265setGroup(String str) {
        this.group = str;
    }

    public final OfflineDownloadBuilder setLanguage(String language) {
        Intrinsics.h(language, "language");
        this.language = language;
        return this;
    }

    /* JADX INFO: renamed from: setLanguage, reason: collision with other method in class */
    public final void m266setLanguage(String str) {
        this.language = str;
    }

    public final OfflineDownloadBuilder setName(String name) {
        Intrinsics.h(name, "name");
        this.name = name;
        return this;
    }

    /* JADX INFO: renamed from: setName, reason: collision with other method in class */
    public final void m267setName(String str) {
        this.name = str;
    }

    public final OfflineDownloadBuilder setNation(String nation) {
        Intrinsics.h(nation, "nation");
        this.nation = nation;
        return this;
    }

    /* JADX INFO: renamed from: setNation, reason: collision with other method in class */
    public final void m268setNation(String str) {
        this.nation = str;
    }

    public final OfflineDownloadBuilder setNetworkType(String networkType) {
        Intrinsics.h(networkType, "networkType");
        this.networkType = networkType;
        return this;
    }

    /* JADX INFO: renamed from: setNetworkType, reason: collision with other method in class */
    public final void m269setNetworkType(String str) {
        this.networkType = str;
    }

    public final OfflineDownloadBuilder setPkgEncrypted(String pkgEncrypted) {
        Intrinsics.h(pkgEncrypted, "pkgEncrypted");
        this.pkgEncrypted = pkgEncrypted;
        return this;
    }

    /* JADX INFO: renamed from: setPkgEncrypted, reason: collision with other method in class */
    public final void m270setPkgEncrypted(String str) {
        this.pkgEncrypted = str;
    }

    public final OfflineDownloadBuilder setPkgUrl(String pkgUrl) {
        Intrinsics.h(pkgUrl, "pkgUrl");
        this.pkgUrl = pkgUrl;
        return this;
    }

    /* JADX INFO: renamed from: setPkgUrl, reason: collision with other method in class */
    public final void m271setPkgUrl(String str) {
        this.pkgUrl = str;
    }

    public final OfflineDownloadBuilder setPriority(int priority) {
        this.priority = priority;
        return this;
    }

    /* JADX INFO: renamed from: setPriority, reason: collision with other method in class */
    public final void m272setPriority(int i11) {
        this.priority = i11;
    }

    public final OfflineDownloadBuilder setResMap(HashMap<String, String> resMap) {
        Intrinsics.h(resMap, "resMap");
        this.resMap = resMap;
        return this;
    }

    /* JADX INFO: renamed from: setResMap, reason: collision with other method in class */
    public final void m273setResMap(HashMap<String, String> map) {
        this.resMap = map;
    }

    public final OfflineDownloadBuilder setType(String type) {
        Intrinsics.h(type, "type");
        this.type = type;
        return this;
    }

    /* JADX INFO: renamed from: setType, reason: collision with other method in class */
    public final void m274setType(String str) {
        this.type = str;
    }

    public final OfflineDownloadBuilder setVersion(String version) {
        Intrinsics.h(version, "version");
        this.version = version;
        return this;
    }

    /* JADX INFO: renamed from: setVersion, reason: collision with other method in class */
    public final void m275setVersion(String str) {
        this.version = str;
    }
}
