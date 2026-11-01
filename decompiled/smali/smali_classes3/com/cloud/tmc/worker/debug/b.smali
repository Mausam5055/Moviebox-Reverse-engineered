.class public final synthetic Lcom/cloud/tmc/worker/debug/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/b;->a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    iput-object p2, p0, Lcom/cloud/tmc/worker/debug/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/b;->a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    iget-object v1, p0, Lcom/cloud/tmc/worker/debug/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->j(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;)V

    return-void
.end method
