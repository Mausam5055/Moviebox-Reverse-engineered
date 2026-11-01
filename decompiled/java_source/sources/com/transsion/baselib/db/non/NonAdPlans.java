package com.transsion.baselib.db.non;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\bk\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B»\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010Y\u001a\u00020\u0003HÆ\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010_\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010/J\u0010\u0010`\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010/J\u000b\u0010a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010h\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010l\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010m\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010/J\u000b\u0010n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\u0003HÆ\u0003JÄ\u0002\u0010s\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010tJ\u0013\u0010u\u001a\u00020v2\b\u0010w\u001a\u0004\u0018\u00010xHÖ\u0003J\t\u0010y\u001a\u00020\nHÖ\u0001J\t\u0010z\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010!\"\u0004\b%\u0010#R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010!\"\u0004\b'\u0010#R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010!\"\u0004\b)\u0010#R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010!\"\u0004\b+\u0010#R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010!\"\u0004\b-\u0010#R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\b3\u0010/\"\u0004\b4\u00101R\u001c\u0010\f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010!\"\u0004\b6\u0010#R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010!\"\u0004\b8\u0010#R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010!\"\u0004\b:\u0010#R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b;\u0010!\"\u0004\b<\u0010#R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010!\"\u0004\b>\u0010#R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010!\"\u0004\b@\u0010#R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bA\u0010!\"\u0004\bB\u0010#R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010!\"\u0004\bD\u0010#R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010!\"\u0004\bF\u0010#R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010!\"\u0004\bH\u0010#R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010!\"\u0004\bJ\u0010#R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010!\"\u0004\bL\u0010#R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u00102\u001a\u0004\bM\u0010/\"\u0004\bN\u00101R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010!\"\u0004\bP\u0010#R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010!\"\u0004\bR\u0010#R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bS\u0010!\"\u0004\bT\u0010#R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bU\u0010!\"\u0004\bV\u0010#R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010!\"\u0004\bX\u0010#¨\u0006{"}, d2 = {"Lcom/transsion/baselib/db/non/NonAdPlans;", "Ljava/io/Serializable;", "id", "", "version", "name", "startTime", "endTime", "extraConfig", "displayTimes", "", "showedTimes", "showDate", "advertiserName", "advertiserAvatar", "advertiserAvatarPath", "brand", "denyBrand", "model", "denyModel", PlaceTypes.COUNTRY, "scenes", "adMaterialList", "adPlanUpdateTime", "sort", "adShowLevel", "filterClientVersion", "adPlanCreateTime", "appStarDesc", "appSizeDesc", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "getVersion", "setVersion", "getName", "setName", "getStartTime", "setStartTime", "getEndTime", "setEndTime", "getExtraConfig", "setExtraConfig", "getDisplayTimes", "()Ljava/lang/Integer;", "setDisplayTimes", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getShowedTimes", "setShowedTimes", "getShowDate", "setShowDate", "getAdvertiserName", "setAdvertiserName", "getAdvertiserAvatar", "setAdvertiserAvatar", "getAdvertiserAvatarPath", "setAdvertiserAvatarPath", "getBrand", "setBrand", "getDenyBrand", "setDenyBrand", "getModel", "setModel", "getDenyModel", "setDenyModel", "getCountry", "setCountry", "getScenes", "setScenes", "getAdMaterialList", "setAdMaterialList", "getAdPlanUpdateTime", "setAdPlanUpdateTime", "getSort", "setSort", "getAdShowLevel", "setAdShowLevel", "getFilterClientVersion", "setFilterClientVersion", "getAdPlanCreateTime", "setAdPlanCreateTime", "getAppStarDesc", "setAppStarDesc", "getAppSizeDesc", "setAppSizeDesc", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/non/NonAdPlans;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class NonAdPlans implements Serializable {
    private String adMaterialList;
    private String adPlanCreateTime;
    private String adPlanUpdateTime;
    private String adShowLevel;
    private String advertiserAvatar;
    private String advertiserAvatarPath;
    private String advertiserName;
    private String appSizeDesc;
    private String appStarDesc;
    private String brand;
    private String country;
    private String denyBrand;
    private String denyModel;
    private Integer displayTimes;
    private String endTime;
    private String extraConfig;
    private String filterClientVersion;
    private String id;
    private String model;
    private String name;
    private String scenes;
    private String showDate;
    private Integer showedTimes;
    private Integer sort;
    private String startTime;
    private String version;

    public NonAdPlans(String id2, String str, String str2, String str3, String str4, String str5, Integer num, Integer num2, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, Integer num3, String str18, String str19, String str20, String str21, String str22) {
        Intrinsics.h(id2, "id");
        this.id = id2;
        this.version = str;
        this.name = str2;
        this.startTime = str3;
        this.endTime = str4;
        this.extraConfig = str5;
        this.displayTimes = num;
        this.showedTimes = num2;
        this.showDate = str6;
        this.advertiserName = str7;
        this.advertiserAvatar = str8;
        this.advertiserAvatarPath = str9;
        this.brand = str10;
        this.denyBrand = str11;
        this.model = str12;
        this.denyModel = str13;
        this.country = str14;
        this.scenes = str15;
        this.adMaterialList = str16;
        this.adPlanUpdateTime = str17;
        this.sort = num3;
        this.adShowLevel = str18;
        this.filterClientVersion = str19;
        this.adPlanCreateTime = str20;
        this.appStarDesc = str21;
        this.appSizeDesc = str22;
    }

    public /* synthetic */ NonAdPlans(String str, String str2, String str3, String str4, String str5, String str6, Integer num, Integer num2, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, Integer num3, String str19, String str20, String str21, String str22, String str23, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5, (i11 & 32) != 0 ? null : str6, (i11 & 64) != 0 ? null : num, (i11 & 128) != 0 ? null : num2, (i11 & 256) != 0 ? null : str7, (i11 & 512) != 0 ? null : str8, (i11 & 1024) != 0 ? null : str9, (i11 & 2048) != 0 ? null : str10, (i11 & 4096) != 0 ? null : str11, (i11 & 8192) != 0 ? null : str12, (i11 & 16384) != 0 ? null : str13, (i11 & 32768) != 0 ? null : str14, (i11 & 65536) != 0 ? null : str15, (i11 & 131072) != 0 ? null : str16, (i11 & 262144) != 0 ? null : str17, (i11 & 524288) != 0 ? null : str18, (i11 & 1048576) != 0 ? Integer.MAX_VALUE : num3, (i11 & 2097152) != 0 ? null : str19, (i11 & 4194304) != 0 ? null : str20, (i11 & 8388608) != 0 ? null : str21, (i11 & 16777216) != 0 ? null : str22, (i11 & ASTNode.PCTX_STORED) == 0 ? str23 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getBrand() {
        return this.brand;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getDenyBrand() {
        return this.denyBrand;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getModel() {
        return this.model;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getDenyModel() {
        return this.denyModel;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getCountry() {
        return this.country;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getScenes() {
        return this.scenes;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getAdMaterialList() {
        return this.adMaterialList;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getAdPlanUpdateTime() {
        return this.adPlanUpdateTime;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final Integer getSort() {
        return this.sort;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getAdShowLevel() {
        return this.adShowLevel;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getFilterClientVersion() {
        return this.filterClientVersion;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getAdPlanCreateTime() {
        return this.adPlanCreateTime;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getAppStarDesc() {
        return this.appStarDesc;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final String getAppSizeDesc() {
        return this.appSizeDesc;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getEndTime() {
        return this.endTime;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getExtraConfig() {
        return this.extraConfig;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Integer getDisplayTimes() {
        return this.displayTimes;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getShowedTimes() {
        return this.showedTimes;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getShowDate() {
        return this.showDate;
    }

    public final NonAdPlans copy(String id2, String version, String name, String startTime, String endTime, String extraConfig, Integer displayTimes, Integer showedTimes, String showDate, String advertiserName, String advertiserAvatar, String advertiserAvatarPath, String brand, String denyBrand, String model, String denyModel, String country, String scenes, String adMaterialList, String adPlanUpdateTime, Integer sort, String adShowLevel, String filterClientVersion, String adPlanCreateTime, String appStarDesc, String appSizeDesc) {
        Intrinsics.h(id2, "id");
        return new NonAdPlans(id2, version, name, startTime, endTime, extraConfig, displayTimes, showedTimes, showDate, advertiserName, advertiserAvatar, advertiserAvatarPath, brand, denyBrand, model, denyModel, country, scenes, adMaterialList, adPlanUpdateTime, sort, adShowLevel, filterClientVersion, adPlanCreateTime, appStarDesc, appSizeDesc);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NonAdPlans)) {
            return false;
        }
        NonAdPlans nonAdPlans = (NonAdPlans) other;
        return Intrinsics.c(this.id, nonAdPlans.id) && Intrinsics.c(this.version, nonAdPlans.version) && Intrinsics.c(this.name, nonAdPlans.name) && Intrinsics.c(this.startTime, nonAdPlans.startTime) && Intrinsics.c(this.endTime, nonAdPlans.endTime) && Intrinsics.c(this.extraConfig, nonAdPlans.extraConfig) && Intrinsics.c(this.displayTimes, nonAdPlans.displayTimes) && Intrinsics.c(this.showedTimes, nonAdPlans.showedTimes) && Intrinsics.c(this.showDate, nonAdPlans.showDate) && Intrinsics.c(this.advertiserName, nonAdPlans.advertiserName) && Intrinsics.c(this.advertiserAvatar, nonAdPlans.advertiserAvatar) && Intrinsics.c(this.advertiserAvatarPath, nonAdPlans.advertiserAvatarPath) && Intrinsics.c(this.brand, nonAdPlans.brand) && Intrinsics.c(this.denyBrand, nonAdPlans.denyBrand) && Intrinsics.c(this.model, nonAdPlans.model) && Intrinsics.c(this.denyModel, nonAdPlans.denyModel) && Intrinsics.c(this.country, nonAdPlans.country) && Intrinsics.c(this.scenes, nonAdPlans.scenes) && Intrinsics.c(this.adMaterialList, nonAdPlans.adMaterialList) && Intrinsics.c(this.adPlanUpdateTime, nonAdPlans.adPlanUpdateTime) && Intrinsics.c(this.sort, nonAdPlans.sort) && Intrinsics.c(this.adShowLevel, nonAdPlans.adShowLevel) && Intrinsics.c(this.filterClientVersion, nonAdPlans.filterClientVersion) && Intrinsics.c(this.adPlanCreateTime, nonAdPlans.adPlanCreateTime) && Intrinsics.c(this.appStarDesc, nonAdPlans.appStarDesc) && Intrinsics.c(this.appSizeDesc, nonAdPlans.appSizeDesc);
    }

    public final String getAdMaterialList() {
        return this.adMaterialList;
    }

    public final String getAdPlanCreateTime() {
        return this.adPlanCreateTime;
    }

    public final String getAdPlanUpdateTime() {
        return this.adPlanUpdateTime;
    }

    public final String getAdShowLevel() {
        return this.adShowLevel;
    }

    public final String getAdvertiserAvatar() {
        return this.advertiserAvatar;
    }

    public final String getAdvertiserAvatarPath() {
        return this.advertiserAvatarPath;
    }

    public final String getAdvertiserName() {
        return this.advertiserName;
    }

    public final String getAppSizeDesc() {
        return this.appSizeDesc;
    }

    public final String getAppStarDesc() {
        return this.appStarDesc;
    }

    public final String getBrand() {
        return this.brand;
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getDenyBrand() {
        return this.denyBrand;
    }

    public final String getDenyModel() {
        return this.denyModel;
    }

    public final Integer getDisplayTimes() {
        return this.displayTimes;
    }

    public final String getEndTime() {
        return this.endTime;
    }

    public final String getExtraConfig() {
        return this.extraConfig;
    }

    public final String getFilterClientVersion() {
        return this.filterClientVersion;
    }

    public final String getId() {
        return this.id;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getName() {
        return this.name;
    }

    public final String getScenes() {
        return this.scenes;
    }

    public final String getShowDate() {
        return this.showDate;
    }

    public final Integer getShowedTimes() {
        return this.showedTimes;
    }

    public final Integer getSort() {
        return this.sort;
    }

    public final String getStartTime() {
        return this.startTime;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        String str = this.version;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.startTime;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.endTime;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.extraConfig;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.displayTimes;
        int iHashCode7 = (iHashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.showedTimes;
        int iHashCode8 = (iHashCode7 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str6 = this.showDate;
        int iHashCode9 = (iHashCode8 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.advertiserName;
        int iHashCode10 = (iHashCode9 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.advertiserAvatar;
        int iHashCode11 = (iHashCode10 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.advertiserAvatarPath;
        int iHashCode12 = (iHashCode11 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.brand;
        int iHashCode13 = (iHashCode12 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.denyBrand;
        int iHashCode14 = (iHashCode13 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.model;
        int iHashCode15 = (iHashCode14 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.denyModel;
        int iHashCode16 = (iHashCode15 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.country;
        int iHashCode17 = (iHashCode16 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.scenes;
        int iHashCode18 = (iHashCode17 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.adMaterialList;
        int iHashCode19 = (iHashCode18 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.adPlanUpdateTime;
        int iHashCode20 = (iHashCode19 + (str17 == null ? 0 : str17.hashCode())) * 31;
        Integer num3 = this.sort;
        int iHashCode21 = (iHashCode20 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str18 = this.adShowLevel;
        int iHashCode22 = (iHashCode21 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.filterClientVersion;
        int iHashCode23 = (iHashCode22 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.adPlanCreateTime;
        int iHashCode24 = (iHashCode23 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.appStarDesc;
        int iHashCode25 = (iHashCode24 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.appSizeDesc;
        return iHashCode25 + (str22 != null ? str22.hashCode() : 0);
    }

    public final void setAdMaterialList(String str) {
        this.adMaterialList = str;
    }

    public final void setAdPlanCreateTime(String str) {
        this.adPlanCreateTime = str;
    }

    public final void setAdPlanUpdateTime(String str) {
        this.adPlanUpdateTime = str;
    }

    public final void setAdShowLevel(String str) {
        this.adShowLevel = str;
    }

    public final void setAdvertiserAvatar(String str) {
        this.advertiserAvatar = str;
    }

    public final void setAdvertiserAvatarPath(String str) {
        this.advertiserAvatarPath = str;
    }

    public final void setAdvertiserName(String str) {
        this.advertiserName = str;
    }

    public final void setAppSizeDesc(String str) {
        this.appSizeDesc = str;
    }

    public final void setAppStarDesc(String str) {
        this.appStarDesc = str;
    }

    public final void setBrand(String str) {
        this.brand = str;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setDenyBrand(String str) {
        this.denyBrand = str;
    }

    public final void setDenyModel(String str) {
        this.denyModel = str;
    }

    public final void setDisplayTimes(Integer num) {
        this.displayTimes = num;
    }

    public final void setEndTime(String str) {
        this.endTime = str;
    }

    public final void setExtraConfig(String str) {
        this.extraConfig = str;
    }

    public final void setFilterClientVersion(String str) {
        this.filterClientVersion = str;
    }

    public final void setId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.id = str;
    }

    public final void setModel(String str) {
        this.model = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setScenes(String str) {
        this.scenes = str;
    }

    public final void setShowDate(String str) {
        this.showDate = str;
    }

    public final void setShowedTimes(Integer num) {
        this.showedTimes = num;
    }

    public final void setSort(Integer num) {
        this.sort = num;
    }

    public final void setStartTime(String str) {
        this.startTime = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "NonAdPlans(id=" + this.id + ", version=" + this.version + ", name=" + this.name + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", extraConfig=" + this.extraConfig + ", displayTimes=" + this.displayTimes + ", showedTimes=" + this.showedTimes + ", showDate=" + this.showDate + ", advertiserName=" + this.advertiserName + ", advertiserAvatar=" + this.advertiserAvatar + ", advertiserAvatarPath=" + this.advertiserAvatarPath + ", brand=" + this.brand + ", denyBrand=" + this.denyBrand + ", model=" + this.model + ", denyModel=" + this.denyModel + ", country=" + this.country + ", scenes=" + this.scenes + ", adMaterialList=" + this.adMaterialList + ", adPlanUpdateTime=" + this.adPlanUpdateTime + ", sort=" + this.sort + ", adShowLevel=" + this.adShowLevel + ", filterClientVersion=" + this.filterClientVersion + ", adPlanCreateTime=" + this.adPlanCreateTime + ", appStarDesc=" + this.appStarDesc + ", appSizeDesc=" + this.appSizeDesc + ")";
    }
}
