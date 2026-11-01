.class Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->getCurView()Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/TKC/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/TKC;->TKC()V

    return-void
.end method
