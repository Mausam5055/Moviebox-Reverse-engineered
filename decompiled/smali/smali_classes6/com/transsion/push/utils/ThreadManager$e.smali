.class abstract Lcom/transsion/push/utils/ThreadManager$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/utils/ThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/push/utils/ThreadManager$e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/transsion/push/utils/ThreadManager$e;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
