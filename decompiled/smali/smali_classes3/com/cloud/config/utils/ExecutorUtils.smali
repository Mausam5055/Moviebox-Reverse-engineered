.class public final Lcom/cloud/config/utils/ExecutorUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\r\u001a\u0006\u0010\u001e\u001a\u00020\u0005\u001a\u0006\u0010\u001f\u001a\u00020\u0005\u001a\u0006\u0010 \u001a\u00020\u0005\u001a\u0006\u0010!\u001a\u00020\u0005\u001a\u0006\u0010\"\u001a\u00020\u0017\u001a\u0006\u0010#\u001a\u00020\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\"\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u000b\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\t\u001a\u0004\u0008\u000c\u0010\u0007\"\u001b\u0010\u000e\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\t\u001a\u0004\u0008\u000f\u0010\u0007\"\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0012\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\t\u001a\u0004\u0008\u0013\u0010\u0007\"\u000e\u0010\u0015\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\t\u001a\u0004\u0008\u0018\u0010\u0019\"\u001b\u0010\u001b\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\t\u001a\u0004\u0008\u001c\u0010\u0007\u00a8\u0006$"
    }
    d2 = {
        "CPU_CORE",
        "",
        "computationA",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "computationE",
        "Ljava/util/concurrent/ExecutorService;",
        "getComputationE",
        "()Ljava/util/concurrent/ExecutorService;",
        "computationE$delegate",
        "Lkotlin/Lazy;",
        "ioA",
        "ioE",
        "getIoE",
        "ioE$delegate",
        "mainE",
        "getMainE",
        "mainE$delegate",
        "newA",
        "newE",
        "getNewE",
        "newE$delegate",
        "scheduledA",
        "scheduledE",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "getScheduledE",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "scheduledE$delegate",
        "singleE",
        "getSingleE",
        "singleE$delegate",
        "computation",
        "io",
        "main",
        "new",
        "scheduled",
        "single",
        "config_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
.end annotation


# static fields
.field private static final CPU_CORE:I

.field private static computationA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final computationE$delegate:Lkotlin/Lazy;

.field private static ioA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final ioE$delegate:Lkotlin/Lazy;

.field private static final mainE$delegate:Lkotlin/Lazy;

.field private static newA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final newE$delegate:Lkotlin/Lazy;

.field private static scheduledA:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final scheduledE$delegate:Lkotlin/Lazy;

.field private static final singleE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cloud/config/utils/ExecutorUtils;->CPU_CORE:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->ioA:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$ioE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$ioE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->ioE$delegate:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->computationA:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$computationE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$computationE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->computationE$delegate:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->newA:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$newE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$newE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->newE$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$singleE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$singleE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->singleE$delegate:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->scheduledA:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$scheduledE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$scheduledE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->scheduledE$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils$mainE$2;->INSTANCE:Lcom/cloud/config/utils/ExecutorUtils$mainE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/config/utils/ExecutorUtils;->mainE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCPU_CORE$p()I
    .locals 1

    sget v0, Lcom/cloud/config/utils/ExecutorUtils;->CPU_CORE:I

    return v0
.end method

.method public static final synthetic access$getComputationA$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->computationA:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$getIoA$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->ioA:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$getNewA$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->newA:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$getScheduledA$p()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->scheduledA:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final computation()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getComputationE()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static final getComputationE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->computationE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static final getIoE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->ioE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static final getMainE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->mainE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static final getNewE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->newE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static final getScheduledE()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->scheduledE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static final getSingleE()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/config/utils/ExecutorUtils;->singleE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final io()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getIoE()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final main()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getMainE()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final new()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getNewE()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final scheduled()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getScheduledE()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final single()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->getSingleE()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
