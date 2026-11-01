.class public Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;
.super Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;


# instance fields
.field private Dq:Z

.field private EjP:F

.field private Fmk:Landroid/graphics/PorterDuffXfermode;

.field private HiB:Landroid/graphics/Paint;

.field private Jcg:Ljava/lang/String;

.field private TEQ:Landroid/graphics/Path;

.field private TKC:F

.field private Ym:Landroid/graphics/Path;

.field private aa:Landroid/graphics/Path;

.field private uA:Z

.field private vS:F


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Dq:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->uA:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Fmk:Landroid/graphics/PorterDuffXfermode;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TEQ:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Ym:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->aa:Landroid/graphics/Path;

    return-void
.end method

.method private TKC(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->ndK()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->ndK()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->ndK()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->HiB:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Fmk:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "right"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v4, "left"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v4, "top"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "center"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v4, "bottom"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    int-to-float v5, v0

    iget v7, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    iget v8, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    iget-object v9, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->HiB:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_1
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    int-to-float v0, v0

    sub-float v5, v1, v0

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->HiB:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_2
    iget v11, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    int-to-float v1, v1

    sub-float v12, v0, v1

    iget-object v13, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->HiB:Landroid/graphics/Paint;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :pswitch_3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TEQ:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Ym:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->aa:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TEQ:Landroid/graphics/Path;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    div-float/2addr v4, v3

    int-to-float v0, v0

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v4, v0, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Ym:Landroid/graphics/Path;

    iget v8, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    div-float v6, v8, v3

    const/4 v7, 0x0

    iget v9, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    move-object v10, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Ym:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TEQ:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->aa:Landroid/graphics/Path;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    div-float v8, v0, v3

    iget v9, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v10, v11

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->aa:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TEQ:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Ym:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->aa:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->HiB:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :pswitch_4
    int-to-float v4, v1

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->HiB:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_4
        -0x514d33ab -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Sj(II)V
    .locals 2

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Dq:Z

    if-eqz v1, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Dq:Z

    :cond_0
    if-lez p2, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->uA:Z

    if-eqz p1, :cond_1

    int-to-float p1, p2

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->EjP:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->uA:Z

    :cond_1
    return-void
.end method

.method public Sj(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public TKC()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->EjP()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->vS:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public sP()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj:Lorg/json/JSONObject;

    const-string v1, "start"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->vS:F

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj:Lorg/json/JSONObject;

    const-string v1, "direction"

    const-string v2, "center"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->Jcg:Ljava/lang/String;

    return-void
.end method

.method public sP(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/HiB;->TKC(Landroid/graphics/Canvas;)V

    return-void
.end method
