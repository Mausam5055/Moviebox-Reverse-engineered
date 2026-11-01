.class public final synthetic Lcom/cloud/tmc/worker/debug/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

.field public final synthetic b:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/h;->a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    iput-object p2, p0, Lcom/cloud/tmc/worker/debug/h;->b:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/h;->a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    iget-object v1, p0, Lcom/cloud/tmc/worker/debug/h;->b:Lcom/google/gson/JsonObject;

    invoke-static {v0, v1}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->h(Lcom/cloud/tmc/worker/debug/WebviewWorker;Lcom/google/gson/JsonObject;)V

    return-void
.end method
