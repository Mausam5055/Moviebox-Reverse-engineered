.class public final Lcom/cloud/tmc/miniapp/utils/OooOO0;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

.field public static final OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0OO:Lcom/cloud/tmc/integration/proxy/PathProxy;

.field public static final OooO0Oo:Lcom/cloud/tmc/integration/proxy/FileProxy;

.field public static final OooO0o0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/OooOO0;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-class v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/PathProxy;

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0OO:Lcom/cloud/tmc/integration/proxy/PathProxy;

    const-class v0, Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/proxy/FileProxy;

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/FileProxy;

    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;ZZZLjava/lang/String;)V
    .locals 3

    const-string p5, "$appModel"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$context"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    sget-object p2, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ":"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": tar \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PreUnzipUtil"

    invoke-static {p4, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object p3, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {p3, p0}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->getManifestJson(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    const-string v2, "appId"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/JsonUtil;->getValueFromJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1, p0}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": manifest \u5185\u5bb9\u6821\u9a8c\u6210\u529f"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p3, p1, p0, p2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0Oo:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {p3, p0}, Lcom/cloud/tmc/integration/proxy/FileProxy;->delectDownloadFileForVersion(Lcom/cloud/tmc/integration/model/AppModel;)V

    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0o0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-interface {p3, p1, p0}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->delectOldVersionFilesAndUpdate(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    sget-object p5, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {p5, p0}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b58\u5165 \u7684 used"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_used"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p1, p0, p4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-interface {p3, p1, p4, p2}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updatePreUnzipStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    sget-object p2, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    invoke-virtual {p2, p1, p0}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    sget-object p2, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    sget-object p2, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    invoke-virtual {p2, p1, p0}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V
    .locals 1

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0OO(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZ)V

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;ZZZLjava/lang/String;)V
    .locals 3

    const-string p5, "$appModel"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$context"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "PreUnzipUtil"

    if-eqz p4, :cond_0

    sget-object p4, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pre unzip :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " zip \u5305\u89e3\u538b\u5b8c\u6210"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p0, p2, p3}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZ)V

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " unzip error "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unzip retry"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0O0:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p1, p0}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Landroid/app/Application;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preUnzipList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    const-class v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/cloud/tmc/integration/model/AppInfoQuery;->Companion:Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;

    invoke-virtual {v3, v2}, Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v6

    const-string v3, "PreUnzipUtil"

    if-eqz v6, :cond_5

    const-string v4, "appModel"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v4, p1, v6}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->checkTarUnCompressStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u5df2\u89e3\u538b\uff0c\u8df3\u8fc7\u9884\u89e3\u538b\u6b65\u9aa4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    invoke-interface {v1, p1, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->isDownloaded(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    const-string v5, "CACHE_TYPE_DOWNLOAD_unzip"

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v4, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->buildDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;)V

    invoke-interface {v1, p1, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->getOfflineCache(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    const-string v5, "CACHE_TYPE_OFFLINE_unzip"

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v4, v6}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->buildDownloadPath(Lcom/cloud/tmc/integration/model/AppModel;)V

    invoke-interface {v1, p1, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->getNativeCache(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooOO0;

    const-string v5, "CACHE_TYPE_NATIVE_unzip"

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/OooOO0;Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZI)V

    :cond_4
    :goto_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "it-> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appmodel is null"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 8

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getFromCacheType()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isReadAssets_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v1, v5, v4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->getSDK_VERSION()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_native_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-interface {v0, v2, v1, v3, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p1, p2, v4}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeZipUnCompressStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    invoke-virtual {v0, p1, p2, v4}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->changeTarUnCompressStatus(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Z)V

    sget-object p1, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0OO:Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getZipUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/FileUtils;->delete(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "native assets remove error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreUnzipUtil"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_1
    :goto_0
    return-void
.end method

.method public final OooO00o(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZ)V
    .locals 4

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual {v0, p2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->checkSHA256(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v1

    const-string v2, "PreUnzipUtil"

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " :"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " sha256 \u6821\u9a8c\u4e0d\u4e00\u81f4\uff0c\u5220\u9664\u6240\u6709\u7f13\u5b58"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sha256 \u6821\u9a8c\u6b63\u786e\uff0c\u89e3\u538b tar \u5305"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO0O0(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZ)V

    return-void
.end method

.method public final OooO0O0(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZ)V
    .locals 2

    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/l;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/cloud/tmc/miniapp/utils/l;-><init>(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;ZZ)V

    invoke-interface {v0, p2, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installApp(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    return-void
.end method

.method public final OooO0OO(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;ZZ)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/k;

    invoke-direct {v1, p2, p1, p3, p4}, Lcom/cloud/tmc/miniapp/utils/k;-><init>(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;ZZ)V

    invoke-interface {v0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcResourceManager;->installZip(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/callback/PackageInstallCallback;)V

    return-void
.end method
