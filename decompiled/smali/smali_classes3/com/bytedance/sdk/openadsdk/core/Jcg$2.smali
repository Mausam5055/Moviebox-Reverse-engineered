.class Lcom/bytedance/sdk/openadsdk/core/Jcg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Jcg;->Sj(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/ViewTreeObserver;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Jcg;Landroid/view/ViewTreeObserver;Z)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->Sj:Landroid/view/ViewTreeObserver;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->sP:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Jcg;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->Sj:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/core/Jcg;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->sP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jcg$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/Jcg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Jcg;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_1
    return-void
.end method
