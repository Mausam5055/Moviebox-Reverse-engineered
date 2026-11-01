.class public final Lcom/tn/tranpay/report/ThreadSingleExecutor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/tranpay/report/ThreadSingleExecutor$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/tn/tranpay/report/ThreadSingleExecutor$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tn/tranpay/report/ThreadSingleExecutor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tn/tranpay/report/ThreadSingleExecutor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->b:Lcom/tn/tranpay/report/ThreadSingleExecutor$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/tn/tranpay/report/ThreadSingleExecutor$Companion$INSTANCE$2;->INSTANCE:Lcom/tn/tranpay/report/ThreadSingleExecutor$Companion$INSTANCE$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tn/tranpay/report/a;

    const-string v1, "tran_single"

    invoke-direct {v0, v1}, Lcom/tn/tranpay/report/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->c:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
