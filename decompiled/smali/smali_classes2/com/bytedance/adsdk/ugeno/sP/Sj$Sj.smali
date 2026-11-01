.class public Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field protected Dq:F

.field protected EjP:F

.field protected Fmk:F

.field protected HiB:F

.field protected Jcg:F

.field protected RiZ:Z

.field protected Sj:F

.field protected TEQ:F

.field protected TKC:F

.field protected TzV:Z

.field protected Ym:F

.field protected Zq:Z

.field protected aa:F

.field protected dNu:Z

.field protected dx:Z

.field protected ib:Z

.field protected kF:Landroid/view/ViewGroup$LayoutParams;

.field protected sP:F

.field protected sU:Z

.field protected sef:F

.field protected uA:F

.field protected uP:Lcom/bytedance/adsdk/ugeno/sP/Sj;

.field protected uvD:Z

.field protected vS:F

.field protected zR:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/Sj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40000000    # -2.0f

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->TKC:F

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->EjP:F

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uP:Lcom/bytedance/adsdk/ugeno/sP/Sj;

    return-void
.end method


# virtual methods
.method public Sj()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    float-to-int v1, v1

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sU:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->vS:F

    :goto_0
    float-to-int v1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    goto :goto_0

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->dx:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Jcg:F

    :goto_2
    float-to-int v1, v1

    goto :goto_3

    :cond_1
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    goto :goto_2

    :goto_3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->zR:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Dq:F

    :goto_4
    float-to-int v1, v1

    goto :goto_5

    :cond_2
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    goto :goto_4

    :goto_5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->ib:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uA:F

    :goto_6
    float-to-int v1, v1

    goto :goto_7

    :cond_3
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    goto :goto_6

    :goto_7
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v1, "wrap_content"

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x2

    const-string v4, "match_parent"

    const/high16 v5, -0x40000000    # -2.0f

    const/4 v6, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "marginLeft"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v7, "marginRight"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v7, "paddingRight"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v7, "paddingBottom"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v7, "width"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v7, "paddingTop"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v7, "minHeight"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_7
    const-string v7, "marginBottom"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_8
    const-string v7, "padding"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_9
    const-string v7, "marginTop"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_a
    const-string v7, "margin"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_b
    const-string v7, "height"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_c
    const-string v7, "minWidth"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_0

    :cond_d
    move v6, v0

    goto :goto_0

    :sswitch_d
    const-string v7, "paddingLeft"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_0

    :cond_e
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->vS:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sU:Z

    return-void

    :pswitch_1
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Jcg:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->dx:Z

    return-void

    :pswitch_2
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Fmk:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->dNu:Z

    return-void

    :pswitch_3
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sef:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->RiZ:Z

    :goto_1
    return-void

    :pswitch_4
    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uP:Lcom/bytedance/adsdk/ugeno/sP/Sj;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LD()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uP:Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Mts()I

    move-result p1

    if-ne p1, v3, :cond_f

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uP:Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HpB()Z

    move-result p1

    if-nez p1, :cond_f

    iput v5, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    return-void

    :cond_f
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    return-void

    :cond_10
    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    iput v5, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    return-void

    :cond_11
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    return-void

    :pswitch_5
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->aa:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->TzV:Z

    return-void

    :pswitch_6
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->EjP:F

    return-void

    :pswitch_7
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uA:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->ib:Z

    return-void

    :pswitch_8
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->TEQ:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Zq:Z

    return-void

    :pswitch_9
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Dq:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->zR:Z

    return-void

    :pswitch_a
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    return-void

    :pswitch_b
    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_13

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uP:Lcom/bytedance/adsdk/ugeno/sP/Sj;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LD()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uP:Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->FPG()I

    move-result p1

    if-ne p1, v3, :cond_12

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uP:Lcom/bytedance/adsdk/ugeno/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HpB()Z

    move-result p1

    if-nez p1, :cond_12

    iput v5, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    return-void

    :cond_12
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    return-void

    :cond_13
    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_14

    iput v5, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    return-void

    :cond_14
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    return-void

    :pswitch_c
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->TKC:F

    return-void

    :pswitch_d
    invoke-static {p1, p3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Ym:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uvD:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x597a2048 -> :sswitch_d
        -0x5201456c -> :sswitch_c
        -0x48c76ed9 -> :sswitch_b
        -0x40737a52 -> :sswitch_a
        -0x3e464339 -> :sswitch_9
        -0x300fc3ef -> :sswitch_8
        -0x113c6e87 -> :sswitch_7
        -0x7f661e7 -> :sswitch_6
        0x55f4784 -> :sswitch_5
        0x6be2dc6 -> :sswitch_4
        0xc0fb19c -> :sswitch_3
        0x2a8c788b -> :sswitch_2
        0x3a1ea90e -> :sswitch_1
        0x757a12d5 -> :sswitch_0
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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutParams{mWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMarginLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->vS:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMarginRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Jcg:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMarginTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Dq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMarginBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uA:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->kF:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
