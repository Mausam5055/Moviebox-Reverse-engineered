.class public final Lcom/cloud/tmc/integration/performance/WarmupUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/performance/WarmupUtils;",
        "",
        "()V",
        "warmupRenderId",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getWarmupRenderId",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "warmupWorkerId",
        "getWarmupWorkerId",
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


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/performance/WarmupUtils;

.field private static final warmupRenderId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final warmupWorkerId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/performance/WarmupUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/performance/WarmupUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/performance/WarmupUtils;->INSTANCE:Lcom/cloud/tmc/integration/performance/WarmupUtils;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/integration/performance/WarmupUtils;->warmupRenderId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/integration/performance/WarmupUtils;->warmupWorkerId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWarmupRenderId()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupUtils;->warmupRenderId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getWarmupWorkerId()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/performance/WarmupUtils;->warmupWorkerId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method
