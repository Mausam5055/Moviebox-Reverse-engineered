.class Lcom/bytedance/sdk/openadsdk/core/Jcg$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Jcg;-><init>(Landroid/content/Context;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Jcg;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/core/Jcg;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/core/Jcg;)V

    return-void
.end method
