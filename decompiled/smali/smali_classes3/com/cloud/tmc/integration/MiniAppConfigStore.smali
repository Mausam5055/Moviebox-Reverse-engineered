.class public final Lcom/cloud/tmc/integration/MiniAppConfigStore;
.super Lcom/cloud/config/AbsConfigStore;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u0006H\u0016J\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\rJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/MiniAppConfigStore;",
        "Lcom/cloud/config/AbsConfigStore;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "CONFIG_QUERY_KEY",
        "",
        "getCONFIG_QUERY_KEY",
        "()Ljava/lang/String;",
        "CONFIG_QUERY_KEY$delegate",
        "Lkotlin/Lazy;",
        "getConfigUrl",
        "getContentArray",
        "",
        "getPackageName",
        "registerCloudConfig",
        "setDebugMode",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final CONFIG_QUERY_KEY$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/config/AbsConfigStore;-><init>(Landroid/content/Context;)V

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/cloud/tmc/integration/MiniAppConfigStore$CONFIG_QUERY_KEY$2;

    invoke-direct {v1, p1}, Lcom/cloud/tmc/integration/MiniAppConfigStore$CONFIG_QUERY_KEY$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/MiniAppConfigStore;->CONFIG_QUERY_KEY$delegate:Lkotlin/Lazy;

    invoke-static {}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getMultiMMKVInstance()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/config/AbsConfigStore;->setMMKV(Lcom/tencent/mmkv/MMKV;)V

    return-void
.end method

.method private final getCONFIG_QUERY_KEY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/MiniAppConfigStore;->CONFIG_QUERY_KEY$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_CONFIG_QUERY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/MiniAppConfigStore;->registerCloudConfig()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getKEY_OFFLINE_CONFIG()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/integration/MiniAppConfigStore;->getCONFIG_QUERY_KEY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final registerCloudConfig()Ljava/util/List;
    .locals 200
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v198, "autoAgreePrivacy"

    const-string v199, "privacyEnableHosts"

    const-string v0, "miniZeroNewsRequestNum"

    const-string v1, "enableOpenBrowserConfig"

    const-string v2, "hybridUrlBlackList"

    const-string v3, "preManagerConfigUrl"

    const-string v4, "miniWidgetForbidLoadStatus"

    const-string v5, "closeMiniAppSDK"

    const-string v6, "whiteScreen"

    const-string v7, "jsapiPermission"

    const-string v8, "appinfoRefreshInterval"

    const-string v9, "fwRefreshInterval"

    const-string v10, "updateConfigByLaunch"

    const-string v11, "packageSize"

    const-string v12, "updateCompareVersion"

    const-string v13, "layerHardware"

    const-string v14, "shortShareUrl"

    const-string v15, "minicardTargetAppUrl"

    const-string v16, "minicardEnable"

    const-string v17, "minicardLimitNum"

    const-string v18, "mutipleTaskV2"

    const-string v19, "shellSchemeFilter"

    const-string v20, "byteBridge"

    const-string v21, "fps"

    const-string v22, "miniappStorageWhiteList"

    const-string v23, "miniappStorageEnable"

    const-string v24, "enableAnimMemorySize"

    const-string v25, "logEReport"

    const-string v26, "scopeConfig"

    const-string v27, "scopeRequestDiff"

    const-string v28, "miniStorageWhiteMaxSize"

    const-string v29, "miniStorageDefaultMaxSize"

    const-string v30, "miniStorageAllMaxSize"

    const-string v31, "miniLoadProgressConfig"

    const-string v32, "miniLogoAnimateConfig"

    const-string v33, "networkImproveNumV2"

    const-string v34, "enableAdsense"

    const-string v35, "scanCode"

    const-string v36, "appInfoCDNConfig"

    const-string v37, "miniFeedbackId"

    const-string v38, "miniAddHomeBubbleForbidId"

    const-string v39, "miniPopwindowintervalTime"

    const-string v40, "miniShowAddHomeBubbleDelay"

    const-string v41, "miniCameraEnable"

    const-string v42, "miniPopWindowTime"

    const-string v43, "privacyAgreementDialogWhiteListV4"

    const-string v44, "miniPermissionIgnoreId"

    const-string v45, "requestConfig"

    const-string v46, "webviewCacheStrategy"

    const-string v47, "miniEnableForceUpdateModelList"

    const-string v48, "miniAddHomeTime"

    const-string v49, "miniAddHomeNum"

    const-string v50, "resourceResponseEncoding"

    const-string v51, "athenaReportPaths"

    const-string v52, "miniBackInterceptorTime"

    const-string v53, "miniBackInterceptorShowTime"

    const-string v54, "miniBackInterceptorNum"

    const-string v55, "miniBackInterceptorEnable"

    const-string v56, "miniShowMsgBubbleDelay"

    const-string v57, "miniMsgBubbleEnable"

    const-string v58, "miniPopwindowMsgBubbleForbidId"

    const-string v59, "msgRefreshInterval"

    const-string v60, "msgTotalEnable"

    const-string v61, "msgBubbleEnable"

    const-string v62, "msgBottomItemEnable"

    const-string v63, "miniOfflineDownloadDisableAntiShake"

    const-string v64, "miniAddHomeCustomWhitelist"

    const-string v65, "miniSharpNewsInterval"

    const-string v66, "enableSharpNewsPreRequest"

    const-string v67, "enableSharpNewsPreFullSearch"

    const-string v68, "enableSharpNewsPreZero"

    const-string v69, "enableSharpNewsVideo"

    const-string v70, "innerWarmup"

    const-string v71, "innerWarmupSetting"

    const-string v72, "innerWebviewWarmupV3"

    const-string v73, "miniStartRecordForbidId"

    const-string v74, "enablePreUnZipV3"

    const-string v75, "preUnZipIdList"

    const-string v76, "enablePreUnZipRetry"

    const-string v77, "miniEnableQuickModeLaunch"

    const-string v78, "enableBackgroundUnzipV3"

    const-string v79, "enableCheckDownloadZip"

    const-string v80, "enableWebViewMask"

    const-string v81, "miniShowAddHomeBubbleInterval"

    const-string v82, "miniShowMsgBubbleInterval"

    const-string v83, "miniEnableNewMiniappInit"

    const-string v84, "enableZeroNewsPreRequest"

    const-string v85, "maxSharpNewsZeroScreenPreRequest"

    const-string v86, "maxSharpNewsZeroTopicPreRequest"

    const-string v87, "enableSharpNewsPreZeroNews"

    const-string v88, "enableZeroNewsTopicPreRequest"

    const-string v89, "enableZeroScreenNewsSync"

    const-string v90, "enableZeroScreenTopicSync"

    const-string v91, "zeroNewsPreSize"

    const-string v92, "zeroTopicPreSize"

    const-string v93, "miniEnableClearPreStorage"

    const-string v94, "miniClearPreDiff"

    const-string v95, "miniTopicRequestNum"

    const-string v96, "miniFullSearchRequestNum"

    const-string v97, "enableShellDestory"

    const-string v98, "enableSystemDestory"

    const-string v99, "appInfoConfig"

    const-string v100, "enableH5DomMonitor"

    const-string v101, "enableShellDomMonitor"

    const-string v102, "enableCheckAddHomeButtom"

    const-string v103, "enableCheckAsyncInit"

    const-string v104, "warmUpEntranceConfig"

    const-string v105, "getGaid"

    const-string v106, "miniPreHtmlRequestNum"

    const-string v107, "maxminiPreRequest"

    const-string v108, "enableShellPreRequest"

    const-string v109, "enablePreConfig"

    const-string v110, "enablePreHtmlPreConfig"

    const-string v111, "enableOfflinePackageConfig"

    const-string v112, "enableAppinfoPreConfig"

    const-string v113, "forceUpdatePreConfig"

    const-string v114, "updatePreConfigInterval"

    const-string v115, "enablePreInitV2"

    const-string v116, "jumpStoreDeeplink"

    const-string v117, "preHtmlExpiredTime"

    const-string v118, "enablePreManagerCongig"

    const-string v119, "enableMoveToBack"

    const-string v120, "enableFixMiniHotOpen"

    const-string v121, "enableFixHotStartUrl"

    const-string v122, "corsList"

    const-string v123, "enableAppinfoCdn"

    const-string v124, "enableOpenBrowserConfig"

    const-string v125, "enableMiniWidget"

    const-string v126, "corsList"

    const-string v127, "athenaInitDelay"

    const-string v128, "athenaCacheSize"

    const-string v129, "nativeWebviewDownloadConfig"

    const-string v130, "miniAppFilePathValid"

    const-string v131, "maxNativeWebviewNum"

    const-string v132, "miniGoHomeAllowId"

    const-string v133, "miniShellJumpUrlWhiteList"

    const-string v134, "clearOfflineDownloadCache"

    const-string v135, "enableAsyncAddHomeReceiver"

    const-string v136, "hideLoadingNativeTime"

    const-string v137, "hideLoadingH5Time"

    const-string v138, "injectJSConfigV3"

    const-string v139, "enablePreHybridPreConfig"

    const-string v140, "showAddHomeCustomDialog"

    const-string v141, "enableAddHomeUseAssets"

    const-string v142, "hideLoadingNativeTime"

    const-string v143, "hideLoadingH5Time"

    const-string v144, "downgradeScanFile"

    const-string v145, "enableCheckShareButtom"

    const-string v146, "addHomeTipsRequestInterval"

    const-string v147, "enableAddHomeTopTip"

    const-string v148, "enableAddHomeBottomTip"

    const-string v149, "enableAddHomeBackDialogTip"

    const-string v150, "offScreenRender"

    const-string v151, "keyGamePerformanceMonitorStr"

    const-string v152, "fixEncodeUrl"

    const-string v153, "keyGamePerformanceMonitorStrUseLocal"

    const-string v154, "enablePreStrategyTrackPoint"

    const-string v155, "enablePreZeroScreenUpdate"

    const-string v156, "enableUseOxygenBus"

    const-string v157, "clearStartTimeDataInterval"

    const-string v158, "collectUsageDataDurationCondition"

    const-string v159, "forceAthenaReportMode"

    const-string v160, "postInitAdsense"

    const-string v161, "mfahList"

    const-string v162, "enableForceAddHome"

    const-string v163, "enableUpdateAddHome"

    const-string v164, "miniAppServerId"

    const-string v165, "cameraSlowAutoFocusDeviceWhiteList"

    const-string v166, "enableMiniSubPackage"

    const-string v167, "prefetchConfigUrl"

    const-string v168, "prefetchV2Enable"

    const-string v169, "prefetchFreshTime"

    const-string v170, "eofflineafq"

    const-string v171, "forceFinishMiniApp"

    const-string v172, "ccrInterval"

    const-string v173, "cdnrInterval"

    const-string v174, "cdnConfigsuccess"

    const-string v175, "fpnav"

    const-string v176, "addHomeSwitch"

    const-string v177, "offlineAppsSwitch"

    const-string v178, "offlineAppsAbilitySwitch"

    const-string v179, "offlineAppsList"

    const-string v180, "offlineAppsScanLevel"

    const-string v181, "oflHostInterval"

    const-string v182, "oflInterval"

    const-string v183, "uofhs"

    const-string v184, "uofms"

    const-string v185, "merqm"

    const-string v186, "muscl"

    const-string v187, "enableDevUserAgreement"

    const-string v188, "enableduaWhitlist"

    const-string v189, "miniPsStorageSizeMin"

    const-string v190, "miniPsStoragews"

    const-string v191, "miniStartToPs"

    const-string v192, "miniStartSyncOnlyPsLink"

    const-string v193, "enableAppinfoDownload"

    const-string v194, "showAddHomeCustomLowVersion"

    const-string v195, "miniesti"

    const-string v196, "privacyAutoBlackCountry"

    const-string v197, "privacyAutoWhiteCountry"

    filled-new-array/range {v0 .. v199}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDebugMode()Z
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getCONFIG_DEV_MODE()Z

    move-result v0

    return v0
.end method
