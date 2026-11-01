.class public Lcom/bytedance/adsdk/ugeno/Sj/sP/TKC;
.super Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC;",
            "Ljava/lang/String;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public Sj(FLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    sget-object v1, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    if-ne v0, v1, :cond_0

    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    sget-object v1, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Jcg:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->xD()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public vS()Landroid/animation/TypeEvaluator;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    sget-object v1, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Ym:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    return-object v0
.end method
