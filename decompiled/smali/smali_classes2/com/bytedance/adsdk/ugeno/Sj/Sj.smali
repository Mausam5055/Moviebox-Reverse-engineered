.class public Lcom/bytedance/adsdk/ugeno/Sj/Sj;
.super Ljava/lang/Object;


# instance fields
.field private EjP:Landroid/content/Context;

.field private HiB:I

.field private Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private TKC:Landroid/animation/ValueAnimator;

.field private sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

.field private vS:Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Lcom/bytedance/adsdk/ugeno/Sj/sP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iput-object p3, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->EjP:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->TKC:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->HiB:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public Sj(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->vS:Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj(II)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->vS:Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public TKC()Landroid/animation/ValueAnimator;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Sj/sP;->sP()Ljava/util/Map;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->TKC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "point"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_1
    const-string v8, "float"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "int"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v7, v0

    :goto_1
    packed-switch v7, :pswitch_data_0

    move-object v6, v2

    goto :goto_2

    :pswitch_0
    new-instance v6, Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP;

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->EjP:Landroid/content/Context;

    iget-object v8, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v6, v7, v8, v5, v4}, Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :pswitch_1
    new-instance v6, Lcom/bytedance/adsdk/ugeno/Sj/sP/sP;

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->EjP:Landroid/content/Context;

    iget-object v8, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    invoke-direct {v6, v7, v8, v5, v4}, Lcom/bytedance/adsdk/ugeno/Sj/sP/sP;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/TreeMap;)V

    goto :goto_2

    :pswitch_2
    new-instance v6, Lcom/bytedance/adsdk/ugeno/Sj/sP/TKC;

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->EjP:Landroid/content/Context;

    iget-object v8, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeMap;

    invoke-direct {v6, v7, v8, v5, v4}, Lcom/bytedance/adsdk/ugeno/Sj/sP/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/TreeMap;)V

    :goto_2
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Sj()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-static {v4, v1}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->vS:Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->TKC()Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    return-object v2

    :cond_7
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Jcg()Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v4, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/bytedance/adsdk/ugeno/Sj/Sj$1;-><init>(Lcom/bytedance/adsdk/ugeno/Sj/Sj;Landroid/view/View;Lcom/bytedance/adsdk/ugeno/Sj/sP$Sj;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Sj/sP;->EjP()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/Sj/TKC;->Sj(I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->HiB:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Sj/sP;->TKC()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->HiB:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_9

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_9
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Sj/sP;->vS()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Sj/sP;->HiB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/Sj/TKC;->Sj(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Sj/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Sj/sP;->Dq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/Sj/TKC;->sP(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->TKC:Landroid/animation/ValueAnimator;

    return-object v0

    :cond_a
    :goto_3
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x197ef -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x65e5590 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->TKC:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public sP(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj;->vS:Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
