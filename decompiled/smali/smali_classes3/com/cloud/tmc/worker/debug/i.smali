.class public final synthetic Lcom/cloud/tmc/worker/debug/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/worker/debug/WebviewWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/i;->a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/i;->a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    invoke-static {v0}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->i(Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    return-void
.end method
