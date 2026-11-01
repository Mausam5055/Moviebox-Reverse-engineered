.class public Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;
.super Lcom/bytedance/adsdk/ugeno/uA/vS/sP;


# instance fields
.field private GMp:Z

.field private Ph:Z

.field private SP:Ljava/lang/String;

.field private Xqg:Ljava/lang/String;

.field private dLt:Ljava/lang/String;

.field private gq:I

.field private mj:Lcom/bytedance/adsdk/ugeno/Jcg/Sj$Sj;

.field private oWa:I

.field private zwV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;-><init>(Landroid/content/Context;)V

    const-string p1, "row"

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->dLt:Ljava/lang/String;

    return-void
.end method

.method private EjP()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->SP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->SP:Ljava/lang/String;

    const-string v1, "local://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->SP:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->sP(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/HiB;->sP()Lcom/bytedance/adsdk/ugeno/Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->uA:Lcom/bytedance/adsdk/ugeno/core/Dq;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->SP:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj$1;

    invoke-direct {v3, p0}, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj$1;-><init>(Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->sP(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private sP(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->dLt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "row_reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "column"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "column_reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a28e907 -> :sswitch_3
        -0x50c12caa -> :sswitch_2
        -0xc62c683 -> :sswitch_1
        0x1b9da -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected Ei()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ei()V

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->Ph:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->AVc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->GMp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->nP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->liH:Lcom/bytedance/adsdk/ugeno/Jcg/Sj$Sj;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/Jcg/Sj$Sj;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Wjd:I

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(I)V

    :cond_2
    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "highlightBackgroundImage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "highlightBackgroundColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "highlightImage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "image"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "highlightedTextColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "highlightTextColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_0

    :sswitch_6
    const-string v3, "direction"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->Xqg:Ljava/lang/String;

    return-void

    :pswitch_1
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->TKC(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->nP:Z

    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->sP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/Jcg/Sj$Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->mj:Lcom/bytedance/adsdk/ugeno/Jcg/Sj$Sj;

    goto :goto_1

    :cond_7
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->oWa:I

    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->nP:Z

    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->GMp:Z

    return-void

    :pswitch_2
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->zwV:Ljava/lang/String;

    return-void

    :pswitch_3
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->SP:Ljava/lang/String;

    return-void

    :pswitch_4
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->gq:I

    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->Ph:Z

    :goto_2
    return-void

    :pswitch_5
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->dLt:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x395ff881 -> :sswitch_6
        -0x3037341e -> :sswitch_5
        -0x634c0dd -> :sswitch_4
        0x5faa95b -> :sswitch_3
        0x1d91fd07 -> :sswitch_2
        0x432ba381 -> :sswitch_1
        0x437f1d79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected jb()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->jb()V

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->Ph:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->gq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->GMp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->nP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->mj:Lcom/bytedance/adsdk/ugeno/Jcg/Sj$Sj;

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/Jcg/Sj$Sj;)V

    return-void

    :cond_1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->oWa:I

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(I)V

    :cond_2
    return-void
.end method

.method public sP()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/uA/vS/sP;->sP()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->EjP()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/vS/Sj;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method
