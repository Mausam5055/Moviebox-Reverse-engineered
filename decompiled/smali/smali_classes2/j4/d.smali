.class public Lj4/d;
.super Ljava/lang/Object;

# interfaces
.implements Lj4/c;


# instance fields
.field private final a:Landroidx/work/impl/utils/SerialExecutorImpl;

.field private final b:Lkotlinx/coroutines/i0;

.field final c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lj4/d;->c:Landroid/os/Handler;

    new-instance v0, Lj4/d$a;

    invoke-direct {v0, p0}, Lj4/d$a;-><init>(Lj4/d;)V

    iput-object v0, p0, Lj4/d;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-direct {v0, p1}, Landroidx/work/impl/utils/SerialExecutorImpl;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lj4/d;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    invoke-static {v0}, Lkotlinx/coroutines/m1;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;

    move-result-object p1

    iput-object p1, p0, Lj4/d;->b:Lkotlinx/coroutines/i0;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lj4/d;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Lkotlinx/coroutines/i0;
    .locals 1

    iget-object v0, p0, Lj4/d;->b:Lkotlinx/coroutines/i0;

    return-object v0
.end method

.method public bridge synthetic c()Lj4/a;
    .locals 1

    invoke-virtual {p0}, Lj4/d;->e()Landroidx/work/impl/utils/SerialExecutorImpl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lj4/b;->a(Lj4/c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Landroidx/work/impl/utils/SerialExecutorImpl;
    .locals 1

    iget-object v0, p0, Lj4/d;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    return-object v0
.end method
