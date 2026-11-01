.class public Lcom/bytedance/adsdk/ugeno/TKC;
.super Lcom/bytedance/adsdk/ugeno/sP/Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/sP/Sj<",
        "Lcom/bytedance/adsdk/ugeno/vS/sP;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private AVc:Ljava/lang/String;

.field private GMp:Lorg/json/JSONArray;

.field private Grp:F

.field private Ph:F

.field private RrR:Z

.field private SP:Z

.field private TX:F

.field private Xqg:Ljava/lang/String;

.field private dLt:F

.field private gq:I

.field private hzV:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private mj:I

.field private oWa:Z

.field private vb:F

.field private zwV:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/Sj;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->RrR:Z

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->SP:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/TKC;->dLt:F

    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/TKC;->zwV:F

    const-string v0, "normal"

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/TKC;->Xqg:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->oWa:Z

    const-string p1, "#666666"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->mj:I

    const-string p1, "#ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->gq:I

    return-void
.end method


# virtual methods
.method public Sj()Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/sP;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/sP;->Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    return-object v0
.end method

.method public Sj(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->hzV:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/vS/TKC;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/vS/TKC;)V

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "dataList"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "autoplay"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "indicatorSelectedColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "pageMargin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "pageCount"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "speed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "loop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_7
    const-string v3, "previousMargin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_8
    const-string v3, "indicator"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_9
    const-string v3, "direction"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_a
    const-string v3, "effect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_b
    const-string v3, "nextMargin"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_c
    const-string v3, "indicatorColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    move v2, v0

    goto :goto_0

    :sswitch_d
    const-string v3, "delayStart"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/sP;->Sj(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->GMp:Lorg/json/JSONArray;

    return-void

    :pswitch_1
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->SP:Z

    return-void

    :pswitch_2
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->gq:I

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->TX:F

    :goto_1
    return-void

    :pswitch_4
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->Ph:F

    return-void

    :pswitch_5
    const/high16 p1, 0x43fa0000    # 500.0f

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->zwV:F

    return-void

    :pswitch_6
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->RrR:Z

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->vb:F

    return-void

    :pswitch_8
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->oWa:Z

    return-void

    :pswitch_9
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/TKC;->AVc:Ljava/lang/String;

    return-void

    :pswitch_a
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/TKC;->Xqg:Ljava/lang/String;

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->Grp:F

    return-void

    :pswitch_c
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->mj:I

    return-void

    :pswitch_d
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->dLt:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62d26b61 -> :sswitch_d
        -0x5dec0d6c -> :sswitch_c
        -0x56a0457f -> :sswitch_b
        -0x4dd9466f -> :sswitch_a
        -0x395ff881 -> :sswitch_9
        -0x2a7041f1 -> :sswitch_8
        -0xc0b287b -> :sswitch_7
        0x32c6a4 -> :sswitch_6
        0x6890047 -> :sswitch_5
        0x33223fc0 -> :sswitch_4
        0x416f6d1d -> :sswitch_3
        0x4757b7b9 -> :sswitch_2
        0x55cdf963 -> :sswitch_1
        0x6a9f2f68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public sP()V
    .locals 4

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->sP()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/TKC;->GMp:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->TX:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->vb:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->Grp:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->oWa:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->gq:I

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->mj:I

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->Xqg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->RrR:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->Ph:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(F)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->SP:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->zwV:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->oWa:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/TKC;->GMp:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/uA;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/uA;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TO:Lcom/bytedance/adsdk/ugeno/core/aa;

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/TKC;->hzV:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Yf()Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/TKC;->GMp:Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v1, Lcom/bytedance/adsdk/ugeno/vS/sP;

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/vS/Sj;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/TKC;->SP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/vS/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP()V

    :cond_2
    :goto_1
    return-void
.end method
