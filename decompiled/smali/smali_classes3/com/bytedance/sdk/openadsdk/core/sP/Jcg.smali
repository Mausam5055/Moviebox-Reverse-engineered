.class public abstract Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;
.super Lcom/bytedance/sdk/openadsdk/core/sP/TKC;


# instance fields
.field private final Sj:Ljava/lang/String;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/sP/TKC;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;Lcom/bytedance/sdk/openadsdk/core/sP/TKC;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;Lcom/bytedance/sdk/openadsdk/core/sP/TKC;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/sP/TKC;

    return-void
.end method


# virtual methods
.method protected Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, p1

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->Sj:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TKC:I

    const v4, 0x22000001

    if-ne v1, v3, :cond_1

    const-string v1, "VAST_TITLE"

    invoke-virtual {p1, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Jcg:I

    if-ne v1, v3, :cond_2

    const-string v1, "VAST_DESCRIPTION"

    invoke-virtual {p1, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->Sj:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/sP/TKC;

    if-eqz v1, :cond_4

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->uP:J

    iput-wide v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->uP:J

    iget-wide v3, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->wE:J

    iput-wide v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->wE:J

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LqL:I

    iput v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Yf:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    :cond_4
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/sP/TKC;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
