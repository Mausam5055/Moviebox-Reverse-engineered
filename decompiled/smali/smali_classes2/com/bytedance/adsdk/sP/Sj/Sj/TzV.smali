.class public Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/uA;

.field private final HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;

.field private final Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

.field private final Sj:Landroid/graphics/Path;

.field private final TKC:Z

.field private final sP:Ljava/lang/String;

.field private vS:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/dNu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/dNu;->Sj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->sP:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/dNu;->TKC()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->TKC:Z

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->EjP:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/dNu;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/Dq;->EjP()Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    return-void
.end method

.method private sP()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->vS:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->EjP:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public EjP()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->vS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->TKC:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->vS:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;->Sj(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->vS:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Sj:Landroid/graphics/Path;

    return-object v0
.end method

.method public Sj()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->sP()V

    return-void
.end method

.method public Sj(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;

    instance-of v2, v1, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->sP()Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    move-result-object v3

    sget-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;->Sj(Lcom/bytedance/adsdk/sP/Sj/Sj/dx;)V

    invoke-virtual {v2, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/bytedance/adsdk/sP/Sj/Sj/RiZ;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Lcom/bytedance/adsdk/sP/Sj/Sj/RiZ;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/TzV;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/Fmk;->Sj(Ljava/util/List;)V

    return-void
.end method
