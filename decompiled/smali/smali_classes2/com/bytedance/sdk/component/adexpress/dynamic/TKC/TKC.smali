.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# instance fields
.field Sj:Lcom/bytedance/sdk/component/adexpress/vS/HiB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/bytedance/sdk/component/adexpress/vS/HiB;

    invoke-direct {p3, p1}, Lcom/bytedance/sdk/component/adexpress/vS/HiB;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/HiB;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicHeight()I

    move-result p3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicHeight()I

    move-result p2

    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/HiB;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/adexpress/vS/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/HiB;

    return-object v0
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/HiB;->Sj()V

    return-void
.end method

.method public synthetic TKC()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;->EjP()Lcom/bytedance/sdk/component/adexpress/vS/HiB;

    move-result-object v0

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/TKC;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/HiB;->sP()V

    return-void
.end method
