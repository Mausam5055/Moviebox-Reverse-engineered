.class Lcom/bytedance/sdk/openadsdk/dNu/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/dNu/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->isMonitorOpen()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
