.class public final synthetic Lcom/cloud/tmc/worker/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/worker/WorkerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/c;->a:Lcom/cloud/tmc/worker/WorkerManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/c;->a:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {v0}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkLifeCycle;->a(Lcom/cloud/tmc/worker/WorkerManager;)V

    return-void
.end method
