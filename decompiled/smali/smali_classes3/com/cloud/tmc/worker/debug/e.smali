.class public final synthetic Lcom/cloud/tmc/worker/debug/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/debug/e;->a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    iput-object p2, p0, Lcom/cloud/tmc/worker/debug/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/worker/debug/e;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/worker/debug/e;->a:Lcom/cloud/tmc/worker/debug/WebviewWorker;

    iget-object v1, p0, Lcom/cloud/tmc/worker/debug/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/worker/debug/e;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/worker/debug/WebviewWorker;->g(Lcom/cloud/tmc/worker/debug/WebviewWorker;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
