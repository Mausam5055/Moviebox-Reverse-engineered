.class public Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;
.super Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;


# instance fields
.field private final Dq:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

.field private final Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;Lcom/bytedance/adsdk/sP/TKC/TKC/sP;Lcom/bytedance/adsdk/sP/Jcg;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;)V

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Dq:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    new-instance p3, Lcom/bytedance/adsdk/sP/TKC/sP/uvD;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/HiB;->sef()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "__container"

    invoke-direct {p3, v1, p2, v0}, Lcom/bytedance/adsdk/sP/TKC/sP/uvD;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/uvD;Lcom/bytedance/adsdk/sP/Jcg;)V

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Dq:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TEQ()Lcom/bytedance/adsdk/sP/TKC/sP/Sj;

    move-result-object v0

    return-object v0
.end method

.method public Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Dq:Lcom/bytedance/adsdk/sP/TKC/TKC/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Ym()Lcom/bytedance/adsdk/sP/HiB/TEQ;

    move-result-object v0

    return-object v0
.end method

.method public sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->sP(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Jcg;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/EjP;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
