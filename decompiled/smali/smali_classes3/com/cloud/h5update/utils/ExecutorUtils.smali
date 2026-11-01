.class public abstract Lcom/cloud/h5update/utils/ExecutorUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final c:Lkotlin/Lazy;

.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final e:Lkotlin/Lazy;

.field private static f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final g:Lkotlin/Lazy;

.field private static final h:Lkotlin/Lazy;

.field private static i:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final j:Lkotlin/Lazy;

.field private static final k:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/cloud/h5update/utils/ExecutorUtils;->a:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$ioE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$ioE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->c:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$computationE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$computationE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->e:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$newE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$newE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->g:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$singleE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$singleE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->h:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$scheduledE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$scheduledE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->j:Lkotlin/Lazy;

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils$mainE$2;->INSTANCE:Lcom/cloud/h5update/utils/ExecutorUtils$mainE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Lcom/cloud/h5update/utils/ExecutorUtils;->a:I

    return v0
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic e()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private static final f()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/utils/ExecutorUtils;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final g()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/cloud/h5update/utils/ExecutorUtils;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
