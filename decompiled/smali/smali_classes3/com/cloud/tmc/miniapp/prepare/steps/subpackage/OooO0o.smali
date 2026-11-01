.class public final Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;
.super Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:Ljava/lang/String;

.field public final OooOO0:Ljava/lang/Integer;

.field public final OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0:Ljava/lang/Integer;

    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 1

    and-int/lit8 p2, p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Ljava/util/Map;Ljava/util/Map;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Lcom/cloud/tmc/integration/structure/AppLoadResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;",
            "Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;",
            "Lcom/cloud/tmc/integration/structure/AppLoadResult;",
            ")V"
        }
    .end annotation

    const-string v0, "8"

    const-class v1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    const-string v2, "appConfig.json"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    iget-boolean v4, v4, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    if-nez v4, :cond_1

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    invoke-interface {p5, p1, p3}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const-class p3, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-static {p3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cloud/tmc/integration/proxy/PathProxy;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, p1, v4}, Lcom/cloud/tmc/integration/proxy/PathProxy;->getTarUnCompressPath(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    move-object p1, v3

    :goto_2
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appConfigFilePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {p3, p1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_3

    :cond_4
    move-object p3, v3

    :goto_3
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    sget-object p1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    invoke-virtual {p1, p3, v1}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    iput-object p1, p6, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAppConfig finish,isEmpty:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    :goto_5
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5728"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u91cc\u8bfb\u5230\u7684\u5185\u5bb9\u4e3a\u7a7a"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p3, "appConfig\u4e0d\u5b58\u5728\uff1a"

    invoke-static {p1, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p3, "appConfig.json error"

    invoke-direct {p1, v0, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_8
    :goto_6
    :try_start_1
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    const-string p3, "100000"

    invoke-interface {p5, p3, p1}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {p3, p1}, Lcom/cloud/tmc/integration/proxy/FileProxy;->readFile2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_9
    sget-object p1, Lcom/cloud/tmc/integration/utils/JsonUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/JsonUtil;

    invoke-virtual {p1, v3, v1}, Lcom/cloud/tmc/integration/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppConfigModel;

    iput-object p1, p6, Lcom/cloud/tmc/integration/structure/AppLoadResult;->frameworkConfigModel:Lcom/cloud/tmc/integration/model/MiniAppConfigModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    if-eqz p2, :cond_a

    new-instance p1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string p3, "frameworkConfig.json error"

    invoke-direct {p1, v0, p3}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_a
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string p2, "frameworkConfig \u4e0d\u5b58\u5728\uff1a"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_7
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->K0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p5, v1, v2, v3, p6}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubpackageStartStep:absPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";vUrl:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Subpackage::"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "f.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "vUrl"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "getDefault()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, ".html"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6, v3, v4}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Step_LoadStep: tar\u5305\u7ed3\u6784: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;",
            "Lcom/cloud/tmc/integration/model/PrepareContext;",
            "Lcom/cloud/tmc/integration/model/AppModel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v0, p3

    move-object/from16 v10, p8

    const-string v11, "15"

    const-string v12, "frameworkzip error"

    const-string v13, "14"

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v1, v2}, Lcom/cloud/tmc/integration/proxy/FileProxy;->listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, ""

    move-object v1, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;)V

    if-eqz v9, :cond_2

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    invoke-direct {v1, v13, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    if-eqz v9, :cond_3

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    invoke-direct {v1, v13, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_3
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v2, "\u8bf7\u5148\u4e0b\u8f7d\u6846\u67b6\u5305\u8d44\u6e90\u6587\u4ef6\uff1a"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_8

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0o0:Lcom/cloud/tmc/integration/proxy/FileProxy;

    invoke-interface {v2, v0, v10}, Lcom/cloud/tmc/integration/proxy/FileProxy;->listFilesInDir(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o()V

    iget-object v1, v8, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    iget-boolean v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0O0:Z

    if-nez v1, :cond_a

    const-string v7, ""

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_7
    :goto_2
    sget-object v2, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;

    invoke-virtual {v2, v1, v0, v10}, Lcom/cloud/tmc/integration/utils/SubpackageAppPrepareUtils;->clearAllFilesForVersion(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    if-eqz v9, :cond_8

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    const-string v1, "miniappzip error"

    invoke-direct {v0, v11, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    :goto_3
    return-void

    :goto_4
    if-eqz v9, :cond_9

    new-instance v1, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v11, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->moveToError(Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;)V

    :cond_9
    iget-object v0, v8, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "\u8d44\u6e90\u6587\u4ef6\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0o0:Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO0OO:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    return-void

    :cond_4
    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/cloud/tmc/integration/model/AppModel;->getMainPackageUrlEncryption()Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "subpackage_sync_lock_status_%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "miniapp_business_subpackage_record"

    invoke-interface {v3, v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v0

    const/4 v0, 0x2

    if-ge v5, v0, :cond_6

    invoke-interface {v3, v1, v4, v2, v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;->finish()V

    goto :goto_2

    :cond_6
    invoke-interface {v3, v1, v4, v2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public OooO0OO(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lcom/cloud/tmc/integration/model/PrepareCallbackParam;
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    :try_start_0
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v2, "startStep \u521b\u5efanormal app config"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v12

    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    iget-object v2, v10, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO:Ljava/lang/String;

    iget-object v3, v10, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0:Ljava/lang/Integer;

    invoke-virtual {v1, v12, v2, v0, v3}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/Integer;)V

    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooOO0O:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;

    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v9

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const-class v1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;

    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/integration/permission/proxy/AuthenticationProxy;->setPermissionModel(Ljava/lang/String;Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V

    :cond_1
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_used"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v12, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updateAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getPreUnzipStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Tmc"

    const-string v2, "startStep_\u4f7f\u7528\u4e86\u9884\u5148\u89e3\u538b\u7684\u5305"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    const-string v3, "preunzip"

    invoke-interface {v1, v2, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceImprovesProxy;->addPeroformanceImprove(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getStartContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/cloud/tmc/integration/model/AppModel;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->updatePreUnzipStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-class v1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "manager"

    if-eqz v9, :cond_7

    :try_start_1
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v11, v7

    move-object v7, v15

    move-object/from16 v16, v8

    invoke-virtual/range {v1 .. v9}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v11, v7

    move-object/from16 v16, v8

    :goto_5
    new-instance v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;

    invoke-direct {v8}, Lcom/cloud/tmc/integration/structure/AppLoadResult;-><init>()V

    sget-object v1, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;

    invoke-virtual {v1, v12}, Lcom/cloud/tmc/miniapp/utils/MiniAppLaunch;->getMiniAppVersion(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appVersion:Ljava/lang/String;

    const-string v1, "https://100000.miniapp.transsion.com/index.html"

    iput-object v1, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->mainHtmlUrl:Ljava/lang/String;

    move-object/from16 v6, v16

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(ISubPackageResourceManager::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/cloud/tmc/integration/resource/ISubPackageResourceManager;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v5, v14

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0o;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Ljava/util/Map;Ljava/util/Map;Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;Lcom/cloud/tmc/integration/structure/AppLoadResult;)V

    iput-object v15, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->htmlMap:Ljava/util/HashMap;

    const-string v1, "WEB_TINY"

    iput-object v1, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->appType:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/tmc/integration/model/PrepareContext;->getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    iput-object v1, v8, Lcom/cloud/tmc/integration/structure/AppLoadResult;->frameWorkModel:Lcom/cloud/tmc/integration/model/AppModel;

    new-instance v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;)V

    iput-object v8, v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;

    new-instance v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    invoke-direct {v1, v0}, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;-><init>(Lcom/cloud/tmc/integration/model/PrepareContext;)V

    iput-object v8, v1, Lcom/cloud/tmc/integration/model/PrepareCallbackParam;->appLoadResult:Lcom/cloud/tmc/integration/structure/AppLoadResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :goto_6
    iget-object v1, v10, Lcom/cloud/tmc/miniapp/prepare/steps/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method
