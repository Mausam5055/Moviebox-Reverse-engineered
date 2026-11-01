.class public final synthetic Lcom/cloud/tmc/worker/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/worker/WorkerManager;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/worker/WorkerManager;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/a;->a:Lcom/cloud/tmc/worker/WorkerManager;

    iput-object p2, p0, Lcom/cloud/tmc/worker/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/worker/a;->c:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/worker/a;->a:Lcom/cloud/tmc/worker/WorkerManager;

    iget-object v1, p0, Lcom/cloud/tmc/worker/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/worker/a;->c:Lcom/google/gson/JsonObject;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/worker/WorkerManager;->a(Lcom/cloud/tmc/worker/WorkerManager;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method
