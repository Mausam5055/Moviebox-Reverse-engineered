.class Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService$1;->this$0:Lcom/cloud/tmc/kernel/coreimpl/DefaultExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
