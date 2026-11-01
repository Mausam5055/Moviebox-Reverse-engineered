.class public final synthetic Lcom/cloud/tmc/integration/performance/innerrender/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/b;->a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/b;->a:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->a(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V

    return-void
.end method
