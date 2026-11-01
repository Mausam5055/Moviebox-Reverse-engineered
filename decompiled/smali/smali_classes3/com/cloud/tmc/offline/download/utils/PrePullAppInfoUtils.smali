.class public final Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004J\"\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\rJ\u0010\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0015\u001a\u00020\tJ\u0006\u0010\u0016\u001a\u00020\tJ\u0006\u0010\u0017\u001a\u00020\tJ\u0006\u0010\u0018\u001a\u00020\tJ:\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aj\n\u0012\u0004\u0012\u00020\u001b\u0018\u0001`\u001c2\u0006\u0010\u0007\u001a\u00020\u00042\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u0006\u0018\u00010\rJ\u000e\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!J<\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u00042$\u0008\u0002\u0010%\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0012\u0004\u0012\u00020\u0006\u0018\u00010&J\u0014\u0010\'\u001a\u0004\u0018\u00010\u0004*\u00020\u000b2\u0006\u0010(\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;",
        "",
        "()V",
        "TAG",
        "",
        "checkCdnAppInfoFileAndDelete",
        "",
        "zipUnCompressPath",
        "checkResponseHeader",
        "",
        "headers",
        "Lokhttp3/Headers;",
        "block",
        "Lkotlin/Function1;",
        "generateDefaultFileNameByUrl",
        "url",
        "generateDownloadFile",
        "Ljava/io/File;",
        "offPkgConfig",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "generatePrePullAppInfoOffPkgConfig",
        "isAllowRequest",
        "isDownloaded",
        "isNotLegalZip",
        "isParsed",
        "loadCdnAppInfo",
        "Ljava/util/ArrayList;",
        "Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;",
        "Lkotlin/collections/ArrayList;",
        "error",
        "",
        "setZipDownloadStatus",
        "info",
        "Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;",
        "unzipFile",
        "srcFile",
        "destFile",
        "unzipCallBack",
        "Lkotlin/Function3;",
        "getHeaderIgnoreCase",
        "name",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

.field private static final TAG:Ljava/lang/String; = "PrePullAppInfoUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic loadCdnAppInfo$default(Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->loadCdnAppInfo(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic unzipFile$default(Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->unzipFile(Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method


# virtual methods
.method public final checkCdnAppInfoFileAndDelete(Ljava/lang/String;)V
    .locals 7

    const-string v0, "PrePullAppInfoUtils"

    const-string v1, "zipUnCompressPath"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check cdnAppInfoFile is not exist, zipUnCompressPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils$checkCdnAppInfoFileAndDelete$listFiles$1;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils$checkCdnAppInfoFileAndDelete$listFiles$1;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->listFiles(Ljava/io/File;ZLkotlin/jvm/functions/Function1;)[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/cloud/tmc/integration/utils/ext/FileExtKt;->getDelete(Ljava/io/File;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check cdnAppInfoFile delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", file: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "check cdnAppInfoFile finished"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final checkResponseHeader(Lokhttp3/Headers;Lkotlin/jvm/functions/Function1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    const-string v1, "Last-Modified"

    invoke-virtual {p0, p1, v1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->getHeaderIgnoreCase(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkResponseHeader server lastModified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrePullAppInfoUtils"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-virtual {v3, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getLastModify(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkResponseHeader local lastModify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkResponseHeader \u5224\u65ad\u672c\u5730\u4e0e\u670d\u52a1\u7aef LastModify \u662f\u5426\u76f8\u540c : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return v0

    :cond_3
    :goto_0
    const-string v0, "checkResponseHeader local lastModify is null or empty"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_4
    :goto_1
    const-string p1, "checkResponseHeader server lastModify is null or empty"

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final generateDefaultFileNameByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->toMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->takeIfNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/cloud/tmc/integration/utils/GenerateIdUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/GenerateIdUtils;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/GenerateIdUtils;->generateRandomId()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->addExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generating file name by url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrePullAppInfoUtils"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final generateDownloadFile(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Ljava/io/File;
    .locals 4

    const-string v0, "offPkgConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateDefaultZipFileInfo(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generating zip file info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrePullAppInfoUtils"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipFileInfo;->getZipCacheAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Unable to create zip directory"

    invoke-static {v2, v3, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    const-string p1, "\u521b\u5efa\u4e0b\u8f7d\u6587\u4ef6\u5939\u5931\u8d25"

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getPkgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generateDefaultFileNameByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generating zip file name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;-><init>()V

    const-string v1, "pre_pull_appInfo"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setGroup(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    move-result-object v0

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setPkgUrl(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setPriority(I)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    move-result-object v0

    const-string v1, "idle"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setDownloadModel(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    move-result-object v0

    const-string v1, "0.0.0"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setVersion(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->build()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderIgnoreCase(Lokhttp3/Headers;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :goto_1
    const-string p2, "PrePullAppInfoUtils"

    const-string v0, "getHeaderIgnoreCase failed"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final isAllowRequest()Z
    .locals 7

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-virtual {v1, v0}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->lastUpdateTime(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoTimeInterval$com_cloud_tmc_offline_download()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->getNowMills()J

    move-result-wide v5

    sub-long v2, v5, v3

    const/4 v4, 0x5

    invoke-static {v5, v6, v2, v3, v4}, Lcom/cloud/tmc/miniutils/util/TimeUtils;->getFitTimeSpan(JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "It"

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has only been "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " since the last update or check"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PrePullAppInfoUtils"

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public final isDownloaded()Z
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNotLegalZip()Z
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isParsed()Z
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getPrefetchCdnAppInfoUrl$com_cloud_tmc_offline_download()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->getZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final loadCdnAppInfo(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/offline/download/model/PrePullAppInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "zipUnCompressPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isDir(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a directory"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v2, "allReleaseAppInfo.json"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/FileUtil;->access(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not exists"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    :cond_3
    const-string p1, "UTF-8"

    invoke-static {v0, p1}, Lcom/cloud/tmc/miniutils/util/FileIOUtils;->readFile2String(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "readFile2String(appInfoFile, \"UTF-8\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils$loadCdnAppInfo$1;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils$loadCdnAppInfo$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v2, "object : TypeToken<Array\u2026rePullAppInfo>>() {}.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "PrePullAppInfoUtils"

    const-string v2, "parse Json fail"

    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-object v1
.end method

.method public final setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/utils/PrePullAppInfoUtils;->generatePrePullAppInfoOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    invoke-virtual {v1, v0, p1}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    return-void
.end method

.method public final unzipFile(Ljava/io/File;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "srcFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/utils/compress/CompressUtils;->unzip(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p3, v0, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unzip file, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PrePullAppInfoUtils"

    invoke-static {v1, p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p3, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method
