.class public final enum Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;",
        ">;",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u001f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;",
        "",
        "Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;",
        "objectId",
        "",
        "objectNameEn",
        "objectNameZh",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getObjectId",
        "()Ljava/lang/String;",
        "getObjectNameEn",
        "getObjectNameZh",
        "TASK_START",
        "TASK_FAIL",
        "TASK_FINISH",
        "QUEUE_TIME",
        "DOWNLOAD_TIME",
        "OFFLINE_PKG_API_USAGE_STATUS",
        "OFFLINE_RESOURCE_URL_CHANGE",
        "OFFLINE_VERIFY_SERVER_FILE",
        "OFFLINE_RES_USAGE_STATUS",
        "OFFLINE_PKG_USAGE_STATUS",
        "OFFLINE_PKG_DOWNLOAD_STATUS",
        "PREFETCH_CDN_APPINFO_STATUS",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_PKG_API_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_PKG_DOWNLOAD_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_PKG_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_RESOURCE_URL_CHANGE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_RES_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum PREFETCH_CDN_APPINFO_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum TASK_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum TASK_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

.field public static final enum TASK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;


# instance fields
.field private final objectId:Ljava/lang/String;

.field private final objectNameEn:Ljava/lang/String;

.field private final objectNameZh:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_API_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_RESOURCE_URL_CHANGE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_RES_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_DOWNLOAD_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->PREFETCH_CDN_APPINFO_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v4, "task_start"

    const-string v5, "\u79bb\u7ebf\u4e0b\u8f7d\u4efb\u52a1\u542f\u52a8"

    const-string v1, "TASK_START"

    const/4 v2, 0x0

    const-string v3, "500"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v11, "task_fail"

    const-string v12, "\u79bb\u7ebf\u4e0b\u8f7d\u4efb\u52a1\u5931\u8d25"

    const-string v8, "TASK_FAIL"

    const/4 v9, 0x1

    const-string v10, "501"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FAIL:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v5, "task_finish"

    const-string v6, "\u79bb\u7ebf\u4e0b\u8f7d\u4efb\u52a1\u5b8c\u6210"

    const-string v2, "TASK_FINISH"

    const/4 v3, 0x2

    const-string v4, "502"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->TASK_FINISH:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v11, "queue_time"

    const-string v12, "\u79bb\u7ebf\u5305\u4efb\u52a1\u6392\u961f\u65f6\u957f"

    const-string v8, "QUEUE_TIME"

    const/4 v9, 0x3

    const-string v10, "503"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->QUEUE_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v5, "download_time"

    const-string v6, "\u79bb\u7ebf\u5305\u4efb\u52a1\u4e0b\u8f7d\u65f6\u957f"

    const-string v2, "DOWNLOAD_TIME"

    const/4 v3, 0x4

    const-string v4, "504"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->DOWNLOAD_TIME:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v11, "offline_pkg_api_usage_status"

    const-string v12, "\u79bb\u7ebf\u5305\u83b7\u53d6\u8bf7\u6c42\u72b6\u6001"

    const-string v8, "OFFLINE_PKG_API_USAGE_STATUS"

    const/4 v9, 0x5

    const-string v10, "505"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_API_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v5, "offline_resource_url_change"

    const-string v6, "\u79bb\u7ebf\u8d44\u6e90\u670d\u52a1\u7aef\u6587\u4ef6\u53d8\u5316App\u91cd\u65b0\u542f\u52a8"

    const-string v2, "OFFLINE_RESOURCE_URL_CHANGE"

    const/4 v3, 0x6

    const-string v4, "506"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_RESOURCE_URL_CHANGE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v11, "offline_verify_server_file"

    const-string v12, "\u79bb\u7ebf\u8d44\u6e90\u6821\u9a8c\u670d\u52a1\u7aef\u6587\u4ef6"

    const-string v8, "OFFLINE_VERIFY_SERVER_FILE"

    const/4 v9, 0x7

    const-string v10, "507"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_VERIFY_SERVER_FILE:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v5, "offline_res_usage_status"

    const-string v6, "\u79bb\u7ebf\u8d44\u6e90\u547d\u4e2d\u72b6\u6001"

    const-string v2, "OFFLINE_RES_USAGE_STATUS"

    const/16 v3, 0x8

    const-string v4, "508"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_RES_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v11, "offline_pkg_usage_status"

    const-string v12, "\u79bb\u7ebf\u5c0f\u7a0b\u5e8f\u5305\u547d\u4e2d\u72b6\u6001"

    const-string v8, "OFFLINE_PKG_USAGE_STATUS"

    const/16 v9, 0x9

    const-string v10, "509"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_USAGE_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v5, "offline_download_status"

    const-string v6, "\u79bb\u7ebf\u8d44\u6e90\u5305\u4e0b\u8f7d\u72b6\u6001"

    const-string v2, "OFFLINE_PKG_DOWNLOAD_STATUS"

    const/16 v3, 0xa

    const-string v4, "510"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->OFFLINE_PKG_DOWNLOAD_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    new-instance v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    const-string v11, "prefetch_cdn_appinfo_status"

    const-string v12, "\u9884\u62c9\u53d6 CDN AppInfo \u72b6\u6001"

    const-string v8, "PREFETCH_CDN_APPINFO_STATUS"

    const/16 v9, 0xb

    const-string v10, "520"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->PREFETCH_CDN_APPINFO_STATUS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    invoke-static {}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->$values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectId:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectNameEn:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectNameZh:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->$VALUES:[Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;

    return-object v0
.end method


# virtual methods
.method public final getObjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectNameEn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectNameEn:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectNameZh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/OfflineDownloadAnalyseType;->objectNameZh:Ljava/lang/String;

    return-object v0
.end method
