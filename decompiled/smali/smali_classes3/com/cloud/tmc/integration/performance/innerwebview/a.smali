.class public final synthetic Lcom/cloud/tmc/integration/performance/innerwebview/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerwebview/a;->a:Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerwebview/a;->a:Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;->a(Lcom/cloud/tmc/integration/performance/innerwebview/InnerH5WebviewPool;)V

    return-void
.end method
