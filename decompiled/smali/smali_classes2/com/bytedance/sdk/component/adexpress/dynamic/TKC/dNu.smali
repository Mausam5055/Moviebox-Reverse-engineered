.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/bytedance/sdk/component/adexpress/vS/zR;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

.field protected HiB:I

.field protected Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

.field protected TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

.field protected sP:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->HiB:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP()V

    return-void
.end method


# virtual methods
.method protected EjP()V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/vS/zR;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Ei()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/vS/zR;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->sP:Landroid/content/Context;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->HiB:I

    rsub-int/lit8 v2, v2, 0x64

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->setGuideText(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public HiB()Lcom/bytedance/sdk/component/adexpress/vS/zR;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    return-object v0
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->Sj()V

    return-void
.end method

.method public synthetic TKC()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->HiB()Lcom/bytedance/sdk/component/adexpress/vS/zR;

    move-result-object v0

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/dNu;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/zR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/zR;->sP()V

    return-void
.end method
