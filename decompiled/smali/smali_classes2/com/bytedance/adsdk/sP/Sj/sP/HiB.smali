.class public Lcom/bytedance/adsdk/sP/Sj/sP/HiB;
.super Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/sP/Sj/sP/Jcg<",
        "Lcom/bytedance/adsdk/sP/TKC/sP/EjP;",
        ">;"
    }
.end annotation


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/sP/EjP;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/EjP;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Jcg;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;->TKC()I

    move-result v0

    :goto_0
    new-instance p1, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;-><init>([F[I)V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/HiB;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    return-void
.end method


# virtual methods
.method synthetic Sj(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/sP/Sj/sP/HiB;->sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    move-result-object p1

    return-object p1
.end method

.method sP(Lcom/bytedance/adsdk/sP/Jcg/Sj;F)Lcom/bytedance/adsdk/sP/TKC/sP/EjP;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/EjP;",
            ">;F)",
            "Lcom/bytedance/adsdk/sP/TKC/sP/EjP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/HiB;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    iget-object v1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->Sj:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    iget-object p1, p1, Lcom/bytedance/adsdk/sP/Jcg/Sj;->sP:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    invoke-virtual {v0, v1, p1, p2}, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;->Sj(Lcom/bytedance/adsdk/sP/TKC/sP/EjP;Lcom/bytedance/adsdk/sP/TKC/sP/EjP;F)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/HiB;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    return-object p1
.end method
