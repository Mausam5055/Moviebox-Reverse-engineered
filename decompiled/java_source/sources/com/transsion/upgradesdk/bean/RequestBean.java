package com.transsion.upgradesdk.bean;

import androidx.collection.s;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.meituan.android.walle.ChannelReader;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import vv.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b5\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B»\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u0006¢\u0006\u0002\u0010\u001bJ\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0006HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0017HÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\t\u0010C\u001a\u00020\u0006HÆ\u0003J\t\u0010D\u001a\u00020\u0006HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\t\u0010F\u001a\u00020\u0003HÆ\u0003J\t\u0010G\u001a\u00020\u0003HÆ\u0003J\t\u0010H\u001a\u00020\u0003HÆ\u0003J\t\u0010I\u001a\u00020\u0003HÆ\u0003J\t\u0010J\u001a\u00020\u0003HÆ\u0003Jé\u0001\u0010K\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\u00032\b\b\u0002\u0010\u001a\u001a\u00020\u0006HÆ\u0001J\u0013\u0010L\u001a\u00020M2\b\u0010N\u001a\u0004\u0018\u00010OHÖ\u0003J\t\u0010P\u001a\u00020\u0017HÖ\u0001J\t\u0010Q\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001dR\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001dR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001dR\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001dR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001dR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001dR\u0011\u0010\u0018\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001dR\u0011\u0010\u0010\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001dR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001dR\u0011\u0010\u001a\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0011\u0010\u0019\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001dR\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001dR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001dR\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0011\u0010\u0013\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b1\u0010+R\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001dR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b3\u0010+R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u001d¨\u0006R"}, d2 = {"Lcom/transsion/upgradesdk/bean/RequestBean;", "Ljava/io/Serializable;", UrlKt.KEY_MINI_GAID, "", PushConstants.PROVIDER_FIELD_PKG, "ver", "", "vn", "cy", TtmlNode.TAG_BR, "mod", "androidVer", PushConstants.PROVIDER_FIELD_APP_KEY, "signMd5", "lan", "defaultLocale", "netType", "ua", ChannelReader.CHANNEL_KEY, CampaignEx.JSON_KEY_TIMESTAMP, TmcConstants.EXTRA_APP_DEV_TOKEN, "deviceNum", "systemVersionCode", "", "myCPU", "psVersionName", "psVersionCode", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V", "getAndroidVer", "()Ljava/lang/String;", "getAppKey", "getBr", "getChannel", "getCy", "getDefaultLocale", "getDeviceNum", LauncherMiniAppConfigHelper.KEY_MINI_GET_GAID, "getLan", "getMod", "getMyCPU", "getNetType", "getPkg", "getPsVersionCode", "()J", "getPsVersionName", "getSign", "getSignMd5", "getSystemVersionCode", "()I", "getTimestamp", "getUa", "getVer", "getVn", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "upgradesdk_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class RequestBean implements Serializable {
    private final String androidVer;
    private final String appKey;
    private final String br;
    private final String channel;
    private final String cy;
    private final String defaultLocale;
    private final String deviceNum;
    private final String gaid;
    private final String lan;
    private final String mod;
    private final String myCPU;
    private final String netType;
    private final String pkg;
    private final long psVersionCode;
    private final String psVersionName;
    private final String sign;
    private final String signMd5;
    private final int systemVersionCode;
    private final long timestamp;
    private final String ua;
    private final long ver;
    private final String vn;

    public RequestBean(String str, String pkg, long j11, String vn2, String cy2, String br2, String mod, String androidVer, String appKey, String signMd5, String lan, String defaultLocale, String netType, String ua2, String channel, long j12, String sign, String str2, int i11, String myCPU, String psVersionName, long j13) {
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(vn2, "vn");
        Intrinsics.h(cy2, "cy");
        Intrinsics.h(br2, "br");
        Intrinsics.h(mod, "mod");
        Intrinsics.h(androidVer, "androidVer");
        Intrinsics.h(appKey, "appKey");
        Intrinsics.h(signMd5, "signMd5");
        Intrinsics.h(lan, "lan");
        Intrinsics.h(defaultLocale, "defaultLocale");
        Intrinsics.h(netType, "netType");
        Intrinsics.h(ua2, "ua");
        Intrinsics.h(channel, "channel");
        Intrinsics.h(sign, "sign");
        Intrinsics.h(myCPU, "myCPU");
        Intrinsics.h(psVersionName, "psVersionName");
        this.gaid = str;
        this.pkg = pkg;
        this.ver = j11;
        this.vn = vn2;
        this.cy = cy2;
        this.br = br2;
        this.mod = mod;
        this.androidVer = androidVer;
        this.appKey = appKey;
        this.signMd5 = signMd5;
        this.lan = lan;
        this.defaultLocale = defaultLocale;
        this.netType = netType;
        this.ua = ua2;
        this.channel = channel;
        this.timestamp = j12;
        this.sign = sign;
        this.deviceNum = str2;
        this.systemVersionCode = i11;
        this.myCPU = myCPU;
        this.psVersionName = psVersionName;
        this.psVersionCode = j13;
    }

    public /* synthetic */ RequestBean(String str, String str2, long j11, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, long j12, String str15, String str16, int i11, String str17, String str18, long j13, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, j11, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, j12, str15, (i12 & 131072) != 0 ? "" : str16, i11, str17, str18, j13);
    }

    public static /* synthetic */ RequestBean copy$default(RequestBean requestBean, String str, String str2, long j11, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, long j12, String str15, String str16, int i11, String str17, String str18, long j13, int i12, Object obj) {
        String str19 = (i12 & 1) != 0 ? requestBean.gaid : str;
        String str20 = (i12 & 2) != 0 ? requestBean.pkg : str2;
        long j14 = (i12 & 4) != 0 ? requestBean.ver : j11;
        String str21 = (i12 & 8) != 0 ? requestBean.vn : str3;
        String str22 = (i12 & 16) != 0 ? requestBean.cy : str4;
        String str23 = (i12 & 32) != 0 ? requestBean.br : str5;
        String str24 = (i12 & 64) != 0 ? requestBean.mod : str6;
        String str25 = (i12 & 128) != 0 ? requestBean.androidVer : str7;
        String str26 = (i12 & 256) != 0 ? requestBean.appKey : str8;
        String str27 = (i12 & 512) != 0 ? requestBean.signMd5 : str9;
        String str28 = (i12 & 1024) != 0 ? requestBean.lan : str10;
        String str29 = (i12 & 2048) != 0 ? requestBean.defaultLocale : str11;
        return requestBean.copy(str19, str20, j14, str21, str22, str23, str24, str25, str26, str27, str28, str29, (i12 & 4096) != 0 ? requestBean.netType : str12, (i12 & 8192) != 0 ? requestBean.ua : str13, (i12 & 16384) != 0 ? requestBean.channel : str14, (i12 & 32768) != 0 ? requestBean.timestamp : j12, (i12 & 65536) != 0 ? requestBean.sign : str15, (131072 & i12) != 0 ? requestBean.deviceNum : str16, (i12 & 262144) != 0 ? requestBean.systemVersionCode : i11, (i12 & 524288) != 0 ? requestBean.myCPU : str17, (i12 & 1048576) != 0 ? requestBean.psVersionName : str18, (i12 & 2097152) != 0 ? requestBean.psVersionCode : j13);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getGaid() {
        return this.gaid;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getSignMd5() {
        return this.signMd5;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getLan() {
        return this.lan;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getDefaultLocale() {
        return this.defaultLocale;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getNetType() {
        return this.netType;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getUa() {
        return this.ua;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getChannel() {
        return this.channel;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final long getTimestamp() {
        return this.timestamp;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getSign() {
        return this.sign;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getDeviceNum() {
        return this.deviceNum;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final int getSystemVersionCode() {
        return this.systemVersionCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPkg() {
        return this.pkg;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getMyCPU() {
        return this.myCPU;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getPsVersionName() {
        return this.psVersionName;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final long getPsVersionCode() {
        return this.psVersionCode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final long getVer() {
        return this.ver;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getVn() {
        return this.vn;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCy() {
        return this.cy;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getBr() {
        return this.br;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getMod() {
        return this.mod;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getAndroidVer() {
        return this.androidVer;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getAppKey() {
        return this.appKey;
    }

    public final RequestBean copy(String gaid, String pkg, long ver, String vn2, String cy2, String br2, String mod, String androidVer, String appKey, String signMd5, String lan, String defaultLocale, String netType, String ua2, String channel, long timestamp, String sign, String deviceNum, int systemVersionCode, String myCPU, String psVersionName, long psVersionCode) {
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(vn2, "vn");
        Intrinsics.h(cy2, "cy");
        Intrinsics.h(br2, "br");
        Intrinsics.h(mod, "mod");
        Intrinsics.h(androidVer, "androidVer");
        Intrinsics.h(appKey, "appKey");
        Intrinsics.h(signMd5, "signMd5");
        Intrinsics.h(lan, "lan");
        Intrinsics.h(defaultLocale, "defaultLocale");
        Intrinsics.h(netType, "netType");
        Intrinsics.h(ua2, "ua");
        Intrinsics.h(channel, "channel");
        Intrinsics.h(sign, "sign");
        Intrinsics.h(myCPU, "myCPU");
        Intrinsics.h(psVersionName, "psVersionName");
        return new RequestBean(gaid, pkg, ver, vn2, cy2, br2, mod, androidVer, appKey, signMd5, lan, defaultLocale, netType, ua2, channel, timestamp, sign, deviceNum, systemVersionCode, myCPU, psVersionName, psVersionCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RequestBean)) {
            return false;
        }
        RequestBean requestBean = (RequestBean) other;
        return Intrinsics.c(this.gaid, requestBean.gaid) && Intrinsics.c(this.pkg, requestBean.pkg) && this.ver == requestBean.ver && Intrinsics.c(this.vn, requestBean.vn) && Intrinsics.c(this.cy, requestBean.cy) && Intrinsics.c(this.br, requestBean.br) && Intrinsics.c(this.mod, requestBean.mod) && Intrinsics.c(this.androidVer, requestBean.androidVer) && Intrinsics.c(this.appKey, requestBean.appKey) && Intrinsics.c(this.signMd5, requestBean.signMd5) && Intrinsics.c(this.lan, requestBean.lan) && Intrinsics.c(this.defaultLocale, requestBean.defaultLocale) && Intrinsics.c(this.netType, requestBean.netType) && Intrinsics.c(this.ua, requestBean.ua) && Intrinsics.c(this.channel, requestBean.channel) && this.timestamp == requestBean.timestamp && Intrinsics.c(this.sign, requestBean.sign) && Intrinsics.c(this.deviceNum, requestBean.deviceNum) && this.systemVersionCode == requestBean.systemVersionCode && Intrinsics.c(this.myCPU, requestBean.myCPU) && Intrinsics.c(this.psVersionName, requestBean.psVersionName) && this.psVersionCode == requestBean.psVersionCode;
    }

    public final String getAndroidVer() {
        return this.androidVer;
    }

    public final String getAppKey() {
        return this.appKey;
    }

    public final String getBr() {
        return this.br;
    }

    public final String getChannel() {
        return this.channel;
    }

    public final String getCy() {
        return this.cy;
    }

    public final String getDefaultLocale() {
        return this.defaultLocale;
    }

    public final String getDeviceNum() {
        return this.deviceNum;
    }

    public final String getGaid() {
        return this.gaid;
    }

    public final String getLan() {
        return this.lan;
    }

    public final String getMod() {
        return this.mod;
    }

    public final String getMyCPU() {
        return this.myCPU;
    }

    public final String getNetType() {
        return this.netType;
    }

    public final String getPkg() {
        return this.pkg;
    }

    public final long getPsVersionCode() {
        return this.psVersionCode;
    }

    public final String getPsVersionName() {
        return this.psVersionName;
    }

    public final String getSign() {
        return this.sign;
    }

    public final String getSignMd5() {
        return this.signMd5;
    }

    public final int getSystemVersionCode() {
        return this.systemVersionCode;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final String getUa() {
        return this.ua;
    }

    public final long getVer() {
        return this.ver;
    }

    public final String getVn() {
        return this.vn;
    }

    public int hashCode() {
        String str = this.gaid;
        int iA = a.a(this.sign, (s.a(this.timestamp) + a.a(this.channel, a.a(this.ua, a.a(this.netType, a.a(this.defaultLocale, a.a(this.lan, a.a(this.signMd5, a.a(this.appKey, a.a(this.androidVer, a.a(this.mod, a.a(this.br, a.a(this.cy, a.a(this.vn, (s.a(this.ver) + a.a(this.pkg, (str == null ? 0 : str.hashCode()) * 31, 31)) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31)) * 31, 31);
        String str2 = this.deviceNum;
        return s.a(this.psVersionCode) + a.a(this.psVersionName, a.a(this.myCPU, (this.systemVersionCode + ((iA + (str2 != null ? str2.hashCode() : 0)) * 31)) * 31, 31), 31);
    }

    public String toString() {
        return "RequestBean(gaid=" + this.gaid + ", pkg=" + this.pkg + ", ver=" + this.ver + ", vn=" + this.vn + ", cy=" + this.cy + ", br=" + this.br + ", mod=" + this.mod + ", androidVer=" + this.androidVer + ", appKey=" + this.appKey + ", signMd5=" + this.signMd5 + ", lan=" + this.lan + ", defaultLocale=" + this.defaultLocale + ", netType=" + this.netType + ", ua=" + this.ua + ", channel=" + this.channel + ", timestamp=" + this.timestamp + ", sign=" + this.sign + ", deviceNum=" + this.deviceNum + ", systemVersionCode=" + this.systemVersionCode + ", myCPU=" + this.myCPU + ", psVersionName=" + this.psVersionName + ", psVersionCode=" + this.psVersionCode + ')';
    }
}
