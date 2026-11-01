.class final Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $app:Lcom/cloud/tmc/integration/structure/App;

.field final synthetic $appId:Ljava/lang/String;

.field final synthetic $countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $downloadFile:Ljava/io/File;

.field final synthetic $downloadSuccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filePath:Ljava/lang/String;

.field final synthetic $ret:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $src:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/App;Ljava/io/File;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/structure/App;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$app:Lcom/cloud/tmc/integration/structure/App;

    iput-object p2, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$downloadFile:Ljava/io/File;

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$ret:Ljava/util/List;

    iput-object p5, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$appId:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$src:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p8, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$downloadSuccess:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getIFileResourceManager()Lcom/cloud/tmc/kernel/resource/IFileResourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$downloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$app:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$filePath:Ljava/lang/String;

    const-string v4, "temp_data"

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/kernel/resource/IFileResourceManager;->generateVUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$ret:Ljava/util/List;

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$appId:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    const-string v4, "appId"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    iget-object v4, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$src:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v4, v3

    :cond_1
    const-string v5, "src"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "saveFilePath"

    invoke-static {v5, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/Pair;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v4, v5, v2

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v5}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge$preloadResources$4$block$1$1;->$downloadSuccess:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
