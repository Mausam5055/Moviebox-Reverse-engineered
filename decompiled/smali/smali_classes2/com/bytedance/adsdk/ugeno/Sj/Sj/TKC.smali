.class public Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;
.super Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;


# instance fields
.field private Dq:Landroid/graphics/Paint;

.field private EjP:F

.field private HiB:F

.field private Jcg:Landroid/graphics/Paint;

.field private TEQ:Landroid/graphics/LinearGradient;

.field private TKC:Ljava/lang/String;

.field private Ym:Landroid/graphics/Matrix;

.field private uA:Landroid/graphics/PorterDuffXfermode;

.field private vS:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->vS:Landroid/view/View;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Jcg:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->vS:Landroid/view/View;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->uA:Landroid/graphics/PorterDuffXfermode;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    return-void
.end method

.method private TKC(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    iget-object v4, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Jcg:Landroid/graphics/Paint;

    iget-object v5, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->uA:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v4, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TKC:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :sswitch_1
    const-string v5, "left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_1

    :sswitch_2
    const-string v5, "top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_1

    :sswitch_3
    const-string v5, "bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const v5, 0x3f666666    # 0.9f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x437f0000    # 255.0f

    if-eqz v4, :cond_7

    if-eq v4, v8, :cond_5

    if-eq v4, v6, :cond_3

    if-eq v4, v7, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v14, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    iget v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    int-to-float v3, v3

    sub-float v15, v0, v3

    iget-object v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Jcg:Landroid/graphics/Paint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    iget v4, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    sub-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v0

    cmpg-float v0, v0, v9

    if-gtz v0, :cond_2

    iget-object v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    iget-object v0, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v2

    mul-float/2addr v2, v10

    sub-float/2addr v10, v2

    float-to-int v2, v10

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    iget v5, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    iget v6, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    sub-float v8, v6, v3

    iget-object v9, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_3
    int-to-float v0, v3

    iget v14, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    iget v15, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Jcg:Landroid/graphics/Paint;

    const/4 v12, 0x0

    move-object/from16 v11, p1

    move v13, v0

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v2

    cmpg-float v2, v2, v9

    if-gtz v2, :cond_4

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v3

    mul-float/2addr v3, v10

    sub-float/2addr v10, v3

    float-to-int v3, v10

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    iget v13, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    iget-object v15, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, p1

    move v14, v0

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_5
    iget v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    int-to-float v0, v0

    sub-float v14, v3, v0

    iget v15, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Jcg:Landroid/graphics/Paint;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    iget v4, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    sub-float/2addr v4, v0

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v2

    cmpg-float v2, v2, v9

    if-gtz v2, :cond_6

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_6

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v3

    mul-float/2addr v3, v10

    sub-float/2addr v10, v3

    float-to-int v3, v10

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    iget v5, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    iget v6, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    sub-float v7, v5, v0

    iget-object v9, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_7
    int-to-float v0, v0

    iget v14, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    iget v15, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Jcg:Landroid/graphics/Paint;

    const/4 v13, 0x0

    move-object/from16 v11, p1

    move v12, v0

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    iget v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Ym:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v2

    cmpg-float v2, v2, v9

    if-gtz v2, :cond_8

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    iget-object v2, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    iget-object v3, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->qRN()F

    move-result v3

    mul-float/2addr v3, v10

    sub-float/2addr v10, v3

    float-to-int v3, v10

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    iget v14, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    iget-object v15, v1, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->Dq:Landroid/graphics/Paint;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, p1

    move v13, v0

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_2
    return-void

    :goto_3
    const-string v2, "BaseEffectWrapper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public Sj(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-float v1, v1

    iput v1, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    move/from16 v1, p2

    int-to-float v1, v1

    iput v1, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TKC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "top"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "bottom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    neg-float v4, v2

    iget v7, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    const/4 v9, -0x1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    return-void

    :pswitch_1
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v12, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->EjP:F

    const/16 v17, -0x1

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    return-void

    :pswitch_2
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v4, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    :goto_1
    return-void

    :pswitch_3
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->HiB:F

    neg-float v12, v2

    const/16 v16, -0x1

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TEQ:Landroid/graphics/LinearGradient;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Sj(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TKC(Landroid/graphics/Canvas;)V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "rubIn"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->TEQ:Lcom/bytedance/adsdk/ugeno/Sj/EjP;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/Sj/EjP;->sP()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public sP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/Sj;->Sj:Lorg/json/JSONObject;

    const-string v1, "direction"

    const-string v2, "left"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TKC:Ljava/lang/String;

    return-void
.end method

.method public sP(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/Sj/TKC;->TKC(Landroid/graphics/Canvas;)V

    return-void
.end method
