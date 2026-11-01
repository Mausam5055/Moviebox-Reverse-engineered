.class public final Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;
.super Ljava/lang/Object;


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

.field public static OooO0O0:I = -0x1

.field public static final OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AthenaUtil"

    const-string v2, "checkOverFlow Fail:"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final OooO0O0()I
    .locals 3

    sget v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->INSTANCE:Lcom/cloud/tmc/integration/MiniAppConfigHelper;

    const-string v1, "athenaCacheSize"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/MiniAppConfigHelper;->getConfigTargetInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0:I

    :cond_0
    sget v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACHE_MAX_COUNT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AthenaUtil"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0O0:I

    return v0
.end method
