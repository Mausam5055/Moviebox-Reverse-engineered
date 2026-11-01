.class Lcom/bytedance/sdk/openadsdk/core/Jcg$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Jcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Jcg$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Jcg$Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->vS(Lcom/bytedance/sdk/openadsdk/core/Jcg;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Jcg$Sj;->Sj(Landroid/view/View;)V

    :cond_0
    return-void
.end method
