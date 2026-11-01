.class final Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HiB"
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
.field private final Sj:Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation
.end field

.field private sP:F


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

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;->sP:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;->Sj:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    return-void
.end method


# virtual methods
.method public EjP()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;->Sj:Lcom/bytedance/adsdk/sP/Jcg/Sj;

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
    .locals 0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;->Sj:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Jcg/Sj;->HiB()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public TKC()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;->Sj:Lcom/bytedance/adsdk/sP/Jcg/Sj;

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

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;->Sj:Lcom/bytedance/adsdk/sP/Jcg/Sj;

    return-object v0
.end method

.method public sP(F)Z
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;->sP:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iput p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$HiB;->sP:F

    const/4 p1, 0x0

    return p1
.end method
