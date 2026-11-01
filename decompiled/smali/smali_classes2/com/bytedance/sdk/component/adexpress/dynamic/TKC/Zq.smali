.class public Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Jcg<",
        "Lcom/bytedance/sdk/component/adexpress/vS/RiZ;",
        ">;"
    }
.end annotation


# instance fields
.field private Dq:I

.field private EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

.field private HiB:Ljava/lang/String;

.field private Jcg:I

.field private Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

.field private sP:Landroid/content/Context;

.field private uA:Lorg/json/JSONObject;

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;Ljava/lang/String;IIILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->HiB:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->vS:I

    iput p6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Jcg:I

    iput p7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Dq:I

    iput-object p8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->uA:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->HiB()V

    return-void
.end method

.method private HiB()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->TKC:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/HiB;->getDynamicClickListener()Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "convertActionType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const-string v1, "16"

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->HiB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->sP:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->Dq(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->vS:I

    iget v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Jcg:I

    iget v7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Dq:I

    iget-object v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->uA:Lorg/json/JSONObject;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;-><init>(Landroid/content/Context;Landroid/view/View;IIILorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->getShakeLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->getShakeLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->sP:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/component/adexpress/TKC/Sj;->Jcg(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->vS:I

    iget v7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Jcg:I

    iget v8, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Dq:I

    iget-object v9, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->uA:Lorg/json/JSONObject;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;-><init>(Landroid/content/Context;Landroid/view/View;IIILorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    :cond_1
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->sP:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->kb()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sdp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->setShakeText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq$1;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->setOnShakeViewListener(Lcom/bytedance/sdk/component/adexpress/vS/RiZ$Sj;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/adexpress/vS/RiZ;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    return-object v0
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/vS/RiZ;->Sj()V

    return-void
.end method

.method public synthetic TKC()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->EjP()Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    move-result-object v0

    return-object v0
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Zq;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/RiZ;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
