.class public final synthetic Lcom/cloud/tmc/worker/debug/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/tmc/worker/debug/WebviewWorker;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/worker/debug/f;->b:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/worker/debug/f;->b:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    invoke-static {v0, v1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->d(Ljava/lang/String;Lcom/cloud/tmc/worker/debug/WebviewWorker;)V

    return-void
.end method
