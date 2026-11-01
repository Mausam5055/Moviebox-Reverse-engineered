.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/offline/IOfflineManagerProxy;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadPkg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/gson/JsonObject;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "group"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgEncrypted"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paths"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl$downloadPkg$tempPaths$1;

    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl$downloadPkg$tempPaths$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<ArrayList<String>>() {}.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p6

    const-string v1, "downloadPkg failed!"

    invoke-static {v1, p6}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p6, v0

    :goto_0
    new-instance v1, Lcom/cloud/tmc/offline/download/model/PackageInclude;

    invoke-direct {v1, p2, p6, p5}, Lcom/cloud/tmc/offline/download/model/PackageInclude;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    new-instance p6, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    invoke-direct {p6}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;-><init>()V

    invoke-virtual {p6, p1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setApp(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    invoke-virtual {p6, p2}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setGroup(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    invoke-virtual {p6, p3}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setNetworkType(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    invoke-virtual {p6, p4}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setPkgEncrypted(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    invoke-virtual {p6, p5}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setPkgUrl(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    new-instance p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, p2, p3, v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V

    invoke-virtual {p6, p1}, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->setExtParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;

    new-instance p1, Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl$OooO00o;

    invoke-direct {p1, p7}, Lcom/cloud/tmc/miniapp/defaultimpl/TmcOfflineManagerProxyImpl$OooO00o;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {p6, p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkg(Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public downloadPkgFromPlatform(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1, v0}, Lcom/cloud/tmc/offline/download/OfflineManager;->downloadPkgFromPlatform$default(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public enableVerifyServerFile(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/cloud/tmc/offline/download/OfflineManager;->enableVerifyServerFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getOfflinePkgCachePath(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/gson/JsonObject;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pkgUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflinePkgCachePath(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflinePkgCachePath;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object p1, p2

    :goto_1
    if-eqz p3, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p2

    :cond_1
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public getOfflineResources(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    invoke-static {p1, p2}, Lcom/cloud/tmc/offline/download/OfflineManager;->getOfflineResources(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/cloud/tmc/offline/download/OfflineManager;->verifyServerFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
