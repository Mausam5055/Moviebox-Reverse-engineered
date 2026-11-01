.class public Lcom/bytedance/adsdk/sP/Sj/Sj/dx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

.field private final HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Sj:Ljava/lang/String;

.field private final TKC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Z

.field private final vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->TKC:Ljava/util/List;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->Sj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->Sj:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->vS()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->sP:Z

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->sP()Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->HiB()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p2, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-object v0
.end method

.method public HiB()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-object v0
.end method

.method public Sj()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->TKC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->TKC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;->Sj()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->TKC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public TKC()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-object v0
.end method

.method sP()Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    return-object v0
.end method

.method public vS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->sP:Z

    return v0
.end method
