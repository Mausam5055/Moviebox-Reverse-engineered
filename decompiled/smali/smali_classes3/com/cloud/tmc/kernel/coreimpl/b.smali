.class public final synthetic Lcom/cloud/tmc/kernel/coreimpl/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/coreimpl/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/coreimpl/b;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;->a(Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
