.class final Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager$threadPoolExecutor$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
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


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager$threadPoolExecutor$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager$threadPoolExecutor$2;

    invoke-direct {v0}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager$threadPoolExecutor$2;-><init>()V

    sput-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager$threadPoolExecutor$2;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager$threadPoolExecutor$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncManager$threadPoolExecutor$2;->invoke()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;

    invoke-virtual {v0}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;->getThreadPoolParamTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v5

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xc8

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/cloud/tmc/android/miniapp/component/api/protocol/async/MiniAppProtocolModuleThreadFactory;

    invoke-direct {v7}, Lcom/cloud/tmc/android/miniapp/component/api/protocol/async/MiniAppProtocolModuleThreadFactory;-><init>()V

    new-instance v8, Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy;

    invoke-direct {v8}, Lcom/cloud/tmc/component_api_ps/async/MiniAppProtocolModuleThreadPoolPolicy;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x5

    const-wide/16 v3, 0x78

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method
