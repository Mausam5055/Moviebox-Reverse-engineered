.class final Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->isNeedDownload(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.cloud.tmc.offline.download.utils.OfflineUtils$isNeedDownload$2$1"
    f = "OfflineUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $diffUpdateEntity:Lcom/cloud/h5update/bean/UpdateEntity;

.field final synthetic $offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

.field label:I


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/h5update/bean/UpdateEntity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
            "Lcom/cloud/h5update/bean/UpdateEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$diffUpdateEntity:Lcom/cloud/h5update/bean/UpdateEntity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$diffUpdateEntity:Lcom/cloud/h5update/bean/UpdateEntity;

    invoke-direct {p1, v0, v1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;-><init>(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/h5update/bean/UpdateEntity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_0
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$offPkgConfigCache:Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/utils/OfflineUtils$isNeedDownload$2$1;->$diffUpdateEntity:Lcom/cloud/h5update/bean/UpdateEntity;

    invoke-virtual {p1, v0, v1, v2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->deleteOfflineZipUnCompressDir(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/h5update/bean/UpdateEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "TmcOfflineDownload: OfflineUtils"

    const-string v1, "Error deleting"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
