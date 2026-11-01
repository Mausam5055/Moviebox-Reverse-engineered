.class public Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;
.super Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Ei:Z

.field public FPG:I

.field private Fm:Z

.field private HpB:Z

.field public JcM:I

.field public LD:F

.field public LqL:F

.field public Mts:I

.field public WMZ:I

.field public Wjd:F

.field public Yf:I

.field public fF:I

.field private jb:Z

.field public ley:F

.field public wE:I

.field private xD:Z

.field private xhi:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/Sj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/Sj;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->wE:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->ley:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->LqL:F

    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/sP;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Yf:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->LD:F

    sget-object p1, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->fF:I

    return-void
.end method


# virtual methods
.method public synthetic Sj()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->sP()Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    move-result-object v0

    return-object v0
.end method

.method public Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "alignSelf"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "flexGrow"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "flexShrink"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "position"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v4, "right"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v4, "ratio"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "order"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v4, "left"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v4, "top"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v4, "bottom"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    move v3, v0

    goto :goto_0

    :sswitch_a
    const-string v4, "flexBasis"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p3}, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Yf:I

    return-void

    :pswitch_1
    invoke-static {p3, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->ley:F

    return-void

    :pswitch_2
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p3, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->LqL:F

    return-void

    :pswitch_3
    invoke-static {p3}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj()I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->fF:I

    return-void

    :pswitch_4
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->HpB:Z

    invoke-static {p3, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->FPG:I

    return-void

    :pswitch_5
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->xhi:Z

    invoke-static {p3, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Wjd:F

    :goto_1
    return-void

    :pswitch_6
    invoke-static {p3, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->wE:I

    return-void

    :pswitch_7
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Ei:Z

    invoke-static {p3, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Mts:I

    return-void

    :pswitch_8
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Fm:Z

    invoke-static {p3, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->JcM:I

    return-void

    :pswitch_9
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->jb:Z

    invoke-static {p3, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->WMZ:I

    return-void

    :pswitch_a
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->xD:Z

    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p3, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->LD:F

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a52083b -> :sswitch_a
        -0x527265d5 -> :sswitch_9
        0x1c155 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x651874e -> :sswitch_6
        0x674500b -> :sswitch_5
        0x677c21c -> :sswitch_4
        0x2c929929 -> :sswitch_3
        0x3d759362 -> :sswitch_2
        0x67ef5bac -> :sswitch_1
        0x6953cff1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public TKC()Z
    .locals 4

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public sP()Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;
    .locals 3

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Sj:F

    float-to-int v1, v1

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sP:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;-><init>(II)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->sU:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->vS:F

    :goto_0
    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->aa(F)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->dx:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Jcg:F

    :goto_2
    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_3

    :cond_1
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->sef(F)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->zR:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->Dq:F

    :goto_4
    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_5

    :cond_2
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Ym(F)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->ib:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->uA:F

    :goto_6
    float-to-int v1, v1

    int-to-float v1, v1

    goto :goto_7

    :cond_3
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->HiB:F

    goto :goto_6

    :goto_7
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Fmk(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->wE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Yf:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->HiB(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->ley:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->sP(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->LqL:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->TKC(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->TKC:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->uvD(F)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;->EjP:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->dNu(F)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->xD:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->LD:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->EjP(F)V

    :cond_4
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->fF:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->vS(F)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Fm:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->JcM:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Jcg(F)V

    :cond_5
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->jb:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->WMZ:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->uA(F)V

    :cond_6
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Ei:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Mts:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Dq(F)V

    :cond_7
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->HpB:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->FPG:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->TEQ(F)V

    :cond_8
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->xhi:Z

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->TKC()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Wjd:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_9

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Zq(F)V

    :cond_9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutParams{mOrder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->wE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexGrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->ley:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexShrink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->LqL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mAlignSelf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Yf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFlexBasis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->LD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->fF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->JcM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->WMZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->Mts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/sP/Sj$Sj;->FPG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
