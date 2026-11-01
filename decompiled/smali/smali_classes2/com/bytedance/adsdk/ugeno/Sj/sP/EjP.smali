.class public Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP;
.super Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;


# instance fields
.field private Dq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP;->Dq:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public HiB()Ljava/util/List;
    .locals 5
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

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/animation/Keyframe;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/Keyframe;

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->vS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Y"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP;->Dq:Ljava/util/List;

    new-array v3, v3, [Landroid/animation/Keyframe;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/Keyframe;

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->vS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP;->vS()Landroid/animation/TypeEvaluator;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    invoke-virtual {v0, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->vS:Ljava/util/List;

    return-object v0
.end method

.method public Sj(FLjava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    double-to-float p2, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    sget-object v2, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->Sj:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Sj:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Sj:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result v0

    :cond_2
    invoke-static {p1, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP;->Dq:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sP()V
    .locals 3

    sget-object v0, Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP$1;->Sj:[I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Jcg:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->uvD()F

    move-result v0

    invoke-static {v2, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Jcg:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->dNu()F

    move-result v1

    invoke-static {v2, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Jcg:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sef()F

    move-result v0

    invoke-static {v2, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->Jcg:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Zq()F

    move-result v1

    invoke-static {v2, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/Sj;->HiB:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/sP/EjP;->Dq:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public vS()Landroid/animation/TypeEvaluator;
    .locals 1

    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    return-object v0
.end method
