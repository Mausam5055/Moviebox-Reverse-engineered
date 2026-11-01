.class public final synthetic Lcom/cloud/tmc/integration/performance/innerrender/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/PrepareCallbackParam;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/a;->a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    iput-object p2, p0, Lcom/cloud/tmc/integration/performance/innerrender/a;->b:Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/a;->a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    iget-object v1, p0, Lcom/cloud/tmc/integration/performance/innerrender/a;->b:Lcom/cloud/tmc/integration/model/PrepareCallbackParam;

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->c(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V

    return-void
.end method
