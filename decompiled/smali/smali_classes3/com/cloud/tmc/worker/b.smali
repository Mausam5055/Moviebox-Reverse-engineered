.class public final synthetic Lcom/cloud/tmc/worker/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/gson/JsonObject;

.field public final synthetic b:Lcom/cloud/tmc/worker/WorkerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/b;->a:Lcom/google/gson/JsonObject;

    iput-object p2, p0, Lcom/cloud/tmc/worker/b;->b:Lcom/cloud/tmc/worker/WorkerManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/worker/b;->a:Lcom/google/gson/JsonObject;

    iget-object v1, p0, Lcom/cloud/tmc/worker/b;->b:Lcom/cloud/tmc/worker/WorkerManager;

    invoke-static {v0, v1}, Lcom/cloud/tmc/worker/WorkerManager$MyWorkCall;->a(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/worker/WorkerManager;)V

    return-void
.end method
