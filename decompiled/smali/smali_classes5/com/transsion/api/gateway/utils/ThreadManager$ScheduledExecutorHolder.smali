.class public Lcom/transsion/api/gateway/utils/ThreadManager$ScheduledExecutorHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/api/gateway/utils/ThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduledExecutorHolder"
.end annotation


# static fields
.field private static mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/api/gateway/utils/ThreadManager$ScheduledExecutorHolder;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/utils/ThreadManager$ScheduledExecutorHolder;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
