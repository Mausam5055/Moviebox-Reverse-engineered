.class public final synthetic Lcom/cloud/tmc/integration/defaultImpl/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

.field public final synthetic b:Lcom/cloud/tmc/kernel/engine/IEngine;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/cloud/tmc/kernel/node/Node;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic i:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->a:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->b:Lcom/cloud/tmc/kernel/engine/IEngine;

    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->d:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->g:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    iput-object p8, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->h:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p9, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->i:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p10, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->j:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p11, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->k:Lkotlin/jvm/internal/Ref$LongRef;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->a:Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->b:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->d:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v4, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->g:Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;

    iget-object v7, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->h:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v8, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->i:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->j:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, p0, Lcom/cloud/tmc/integration/defaultImpl/h;->k:Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static/range {v0 .. v10}, Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory$createWorker$1;->c(Lcom/cloud/tmc/integration/defaultImpl/WorkerManagerFactory;Lcom/cloud/tmc/kernel/engine/IEngine;Landroid/content/Context;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/worker/IWorkerManagerFactory$IWorkerListener;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;)V

    return-void
.end method
