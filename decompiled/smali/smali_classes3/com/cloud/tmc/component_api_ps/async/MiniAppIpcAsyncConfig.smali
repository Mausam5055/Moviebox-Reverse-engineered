.class public final Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;",
        "",
        "()V",
        "THREAD_POOL_PARAM_CORE_SIZE",
        "",
        "THREAD_POOL_PARAM_KEEP_ALIVE_TIME",
        "",
        "THREAD_POOL_PARAM_MAX_SIZE",
        "THREAD_POOL_PARAM_QUEUE_SIZE",
        "threadPoolParamTimeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "getThreadPoolParamTimeUnit",
        "()Ljava/util/concurrent/TimeUnit;",
        "com.cloud.tmc.component_api_ps"
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
.field public static final INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;

.field public static final THREAD_POOL_PARAM_CORE_SIZE:I = 0x3

.field public static final THREAD_POOL_PARAM_KEEP_ALIVE_TIME:J = 0x78L

.field public static final THREAD_POOL_PARAM_MAX_SIZE:I = 0x5

.field public static final THREAD_POOL_PARAM_QUEUE_SIZE:I = 0xc8

.field private static final threadPoolParamTimeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;

    invoke-direct {v0}, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;-><init>()V

    sput-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;->INSTANCE:Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;->threadPoolParamTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getThreadPoolParamTimeUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/component_api_ps/async/MiniAppIpcAsyncConfig;->threadPoolParamTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method
