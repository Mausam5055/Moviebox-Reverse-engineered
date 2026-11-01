.class public abstract Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;
.super Ljava/lang/Object;


# instance fields
.field protected EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

.field protected HiB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field protected Jcg:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field protected Sj:Landroid/content/Context;

.field protected TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected sP:Ljava/lang/String;

.field protected vS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Sj:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->sP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->vS:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->sP:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Jcg:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Sj()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->sP()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Sj(FLjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC()V

    :cond_4
    :goto_1
    return-void
.end method

.method public HiB()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP()V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/animation/Keyframe;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Keyframe;

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->vS()Landroid/animation/TypeEvaluator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->vS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->vS:Ljava/util/List;

    return-object v0
.end method

.method public abstract Sj(FLjava/lang/String;)V
.end method

.method public Sj()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public TKC()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/TreeMap;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->TKC:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Sj(FLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract sP()V
.end method

.method public abstract vS()Landroid/animation/TypeEvaluator;
.end method
