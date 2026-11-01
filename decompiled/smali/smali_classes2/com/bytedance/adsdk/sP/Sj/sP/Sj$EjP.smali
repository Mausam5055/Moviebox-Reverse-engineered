.class final Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EjP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private EjP:F

.field private final Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private TKC:Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation
.end field

.field private sP:Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->TKC:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->EjP:F

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->Sj:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->TKC(F)Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->sP:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    return-void
.end method

.method private TKC(F)Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->TKC()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->Sj:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->sP:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    if-eq v2, v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj(F)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->Sj:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    return-object p1
.end method


# virtual methods
.method public EjP()F
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->EjP()F

    move-result v0

    return v0
.end method

.method public Sj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Sj(F)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->sP:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->sP:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->HiB()Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->TKC(F)Lcom/bytedance/adsdk/sP/Jcg/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->sP:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    return v1
.end method

.method public TKC()F
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->Sj:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->TKC()F

    move-result v0

    return v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->sP:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    return-object v0
.end method

.method public sP(F)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->TKC:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->sP:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->EjP:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->TKC:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    iput p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$EjP;->EjP:F

    const/4 p1, 0x0

    return p1
.end method
