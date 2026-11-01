.class Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->sef:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->sef:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v6

    new-instance v5, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;

    invoke-direct {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;-><init>()V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Zq()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->Sj(I)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->uvD()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->sP(I)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->dNu()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->TKC(I)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TzV()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->Sj(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->RiZ()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->sP(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->sU()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->TKC(Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->dx()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->EjP(I)V

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->zR()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;->HiB(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    new-instance v7, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    iget-object v2, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Ym:Landroid/content/Context;

    iget-object v4, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->aa:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/TEQ;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    iput-object v7, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->RiZ:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    iget-object v3, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->Ym:Landroid/content/Context;

    iget-object v4, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->aa:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-direct {v1, v3, v2, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V

    iput-object v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->RiZ:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->RiZ:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->sP(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->RiZ:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    invoke-static {v0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->RiZ:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS$4;->Sj:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;

    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/vS;->RiZ:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/uA;->TKC()V

    return-void
.end method
