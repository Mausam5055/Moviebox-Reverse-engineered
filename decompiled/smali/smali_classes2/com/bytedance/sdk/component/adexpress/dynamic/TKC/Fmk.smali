.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/adexpress/vS/Zq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/bytedance/sdk/component/adexpress/vS/Zq;

    invoke-direct {p3, p1}, Lcom/bytedance/sdk/component/adexpress/vS/Zq;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/Zq;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicHeight()I

    move-result p3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicHeight()I

    move-result p2

    invoke-direct {p1, p3, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p2, 0x800015

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/Zq;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/adexpress/vS/Zq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/Zq;

    return-object v0
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/Zq;->Sj()V

    return-void
.end method

.method public synthetic TKC()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;->EjP()Lcom/bytedance/sdk/component/adexpress/vS/Zq;

    move-result-object v0

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Fmk;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/Zq;->sP()V

    return-void
.end method
