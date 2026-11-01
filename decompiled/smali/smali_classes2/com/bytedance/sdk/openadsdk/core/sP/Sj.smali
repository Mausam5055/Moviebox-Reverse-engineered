.class public Lcom/bytedance/sdk/openadsdk/core/sP/Sj;
.super Lcom/bytedance/sdk/openadsdk/core/sP/sP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;
    }
.end annotation


# instance fields
.field private FPG:Z

.field private Mts:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private Sj:Z

.field private TKC:Z

.field private Wjd:I

.field private sP:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->sP:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->TKC:Z

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->FPG:Z

    return-void
.end method

.method private Dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->LD()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private EjP(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->gq:I

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->jb:I

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Ei:I

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->HpB:I

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->xhi:I

    if-ne v1, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1f00001e

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->vb:I

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    move v1, v0

    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->EjP(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method private TEQ()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->uA()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Wjd:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Wjd:I

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->sP()Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj()Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->TKC()Z

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Wjd:I

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Dq()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->sP()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->TKC()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Wjd:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v3
.end method

.method private sP(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "open_ad"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "banner_call"

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "slide_banner_ad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "interaction"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "embeded_ad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "banner_ad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string p1, ""

    return-object p1

    :pswitch_0
    return-object v1

    :pswitch_1
    const-string p1, "interaction_call"

    return-object p1

    :pswitch_2
    const-string p1, "feed_call"

    return-object p1

    :pswitch_3
    return-object v0

    :pswitch_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_4
        -0x4b4ad1c8 -> :sswitch_3
        -0x2a77c376 -> :sswitch_2
        0x6deace12 -> :sswitch_1
        0x7cab2108 -> :sswitch_0
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

.method private uA()Z
    .locals 1

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    return v0
.end method


# virtual methods
.method public EjP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->FPG:Z

    return-void
.end method

.method public Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move/from16 v9, p7

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;IFFFFLandroid/util/SparseArray;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Z)V

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jU()V

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uA()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Z)V

    :cond_1
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->SPg()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;J)V

    :cond_2
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sef:Lu5/b;

    if-eqz v0, :cond_4

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    :cond_3
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sef:Lu5/b;

    invoke-interface {v1}, Lu5/b;->HiB()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xzt()I

    move-result v6

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD(I)V

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uvD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    if-eqz v0, :cond_6

    if-lez v6, :cond_5

    move v1, v6

    goto :goto_0

    :cond_5
    move v1, v7

    :goto_0
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;->Sj(I)V

    :cond_6
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    const-string v5, "auto_click"

    const-string v1, "click_probability_jump"

    const-string v2, "dsp_click_type"

    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-lez v6, :cond_a

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    :cond_8
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    const/16 v3, 0xb

    if-eqz v0, :cond_9

    if-ge v6, v3, :cond_9

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-lt v6, v3, :cond_a

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->AE()I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/model/Jcg;->Sj(I)I

    move-result v0

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz v10, :cond_b

    const v0, 0x22000001

    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_b
    const-string v0, "VAST_ACTION_BUTTON"

    :goto_1
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    :cond_c
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Mts:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Mts:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;->getVideoProgress()J

    move-result-wide v1

    goto :goto_2

    :cond_d
    const-wide/16 v1, 0x0

    :goto_2
    const-string v3, "VAST_ICON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(J)V

    goto :goto_3

    :cond_e
    const-string v3, "VAST_END_CARD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC()Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC()Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(J)V

    goto :goto_3

    :cond_f
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Jcg(J)V

    :cond_10
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->TEQ()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->EjP(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->TKC:Z

    if-nez v0, :cond_11

    invoke-super/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    return-void

    :cond_11
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    if-nez v0, :cond_12

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    :cond_12
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {v11, v10, v9}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sef;

    const/16 v19, -0x1

    const/16 v20, 0x0

    if-eqz v1, :cond_15

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/model/sef;->aa:I

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Fmk:Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/model/sef;->dNu:Lorg/json/JSONObject;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    move/from16 v16, v0

    move/from16 v21, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_4

    :cond_15
    move-object/from16 v17, v0

    move/from16 v21, v7

    move/from16 v16, v19

    move-object/from16 v18, v20

    :goto_4
    iget-wide v3, v11, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->uP:J

    iget-wide v1, v11, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->wE:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uA:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP()Landroid/view/View;

    move-result-object v0

    :goto_5
    move-object/from16 v22, v0

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_5

    :goto_6
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TEQ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB()Landroid/view/View;

    move-result-object v0

    :goto_7
    move-object/from16 v23, v0

    goto :goto_8

    :cond_17
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Jcg(Landroid/content/Context;)F

    move-result v13

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->uA(Landroid/content/Context;)I

    move-result v14

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Dq(Landroid/content/Context;)F

    move-result v15

    move-object/from16 v0, p0

    move-wide/from16 v24, v1

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v26, v3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v28, v5

    move-object/from16 v5, p6

    move/from16 v29, v6

    move-wide/from16 v6, v26

    move/from16 v26, v8

    move-wide/from16 v8, v24

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    invoke-virtual/range {v0 .. v18}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    const/4 v8, 0x2

    if-eqz v21, :cond_19

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz p7, :cond_18

    move/from16 v8, v26

    :cond_18
    const-string v5, "click"

    const/4 v6, 0x1

    move-object/from16 p1, v5

    move-object/from16 p2, v2

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move/from16 p5, v6

    move-object/from16 p6, v4

    move/from16 p7, v8

    invoke-static/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    return-void

    :cond_19
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v8, :cond_1a

    if-eq v0, v3, :cond_1a

    if-eq v0, v2, :cond_1f

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1b

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1a

    move-object/from16 v4, p1

    move/from16 v0, v19

    goto/16 :goto_16

    :cond_1a
    move-object/from16 v4, p1

    const/4 v5, 0x0

    goto/16 :goto_10

    :cond_1b
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->sP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz p7, :cond_1c

    move/from16 v15, v26

    goto :goto_9

    :cond_1c
    move v15, v8

    :goto_9
    const-string v9, "click_call"

    const/4 v13, 0x1

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aNB()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sP(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz p7, :cond_1e

    move/from16 v15, v26

    goto :goto_a

    :cond_1e
    move v15, v8

    :goto_a
    const-string v9, "click"

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    move-object/from16 v4, p1

    goto/16 :goto_16

    :cond_1f
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    if-nez v2, :cond_20

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TzV:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    if-eqz v2, :cond_21

    :cond_20
    move-object/from16 v4, p1

    goto :goto_b

    :cond_21
    move-object/from16 v4, p1

    goto :goto_e

    :goto_b
    if-eqz v4, :cond_22

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v20

    :cond_22
    if-nez v20, :cond_23

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    move-object v9, v2

    goto :goto_c

    :cond_23
    move-object/from16 v9, v20

    :goto_c
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v11, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Dq:I

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TzV:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uvD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    const/16 v16, 0x1

    move/from16 v17, v29

    invoke-static/range {v9 .. v17}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;ZI)Z

    move-result v21

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj:Z

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz p7, :cond_24

    move/from16 v23, v26

    goto :goto_d

    :cond_24
    move/from16 v23, v8

    :goto_d
    const-string v17, "click"

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-static/range {v17 .. v23}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_16

    :goto_e
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uvD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    if-eqz v2, :cond_33

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;->EjP()V

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->uA()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Dq()Z

    move-result v2

    if-nez v2, :cond_25

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v3, v28

    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Z)V

    :cond_25
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj:Z

    if-eqz v2, :cond_33

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    if-eqz p7, :cond_26

    move/from16 v15, v26

    goto :goto_f

    :cond_26
    move v15, v8

    :goto_f
    const-string v9, "click"

    const/4 v13, 0x1

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_16

    :goto_10
    if-ne v0, v3, :cond_28

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_28

    const-string v6, "play.google.com/store"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "?id="

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v6, v3, v2, v7, v9}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj:Z

    if-eqz v2, :cond_33

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz p7, :cond_27

    move/from16 v15, v26

    goto :goto_11

    :cond_27
    move v15, v8

    :goto_11
    const-string v9, "click"

    const/4 v13, 0x1

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_16

    :cond_28
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    if-nez v2, :cond_29

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->sP:Z

    if-eqz v2, :cond_2b

    :cond_29
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz p7, :cond_2a

    move/from16 v15, v26

    goto :goto_12

    :cond_2a
    move v15, v8

    :goto_12
    const-string v9, "click_button"

    const/4 v13, 0x1

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_2b
    if-eqz v4, :cond_2c

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1f00001e

    if-eq v2, v3, :cond_2d

    instance-of v2, v4, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    if-nez v2, :cond_2d

    :cond_2c
    const v2, 0x1f000042

    invoke-virtual {v4, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2d
    invoke-static/range {v26 .. v26}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2e
    if-eqz v4, :cond_2f

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v20

    :cond_2f
    if-nez v20, :cond_30

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    move-object v9, v2

    goto :goto_13

    :cond_30
    move-object/from16 v9, v20

    :goto_13
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->FPG:Z

    if-eqz v2, :cond_31

    move v13, v5

    goto :goto_14

    :cond_31
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v11, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Dq:I

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TzV:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uvD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    const/16 v16, 0x1

    move/from16 v17, v29

    invoke-static/range {v9 .. v17}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;ZI)Z

    move-result v7

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Z)V

    move v13, v7

    :goto_14
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj:Z

    if-eqz v2, :cond_33

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v11, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz p7, :cond_32

    move/from16 v15, v26

    goto :goto_15

    :cond_32
    move v15, v8

    :goto_15
    const-string v9, "click"

    invoke-static/range {v9 .. v15}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_33
    :goto_16
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;

    if-eqz v2, :cond_34

    invoke-interface {v2, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;->Sj(Landroid/view/View;I)V

    :cond_34
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Mts:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj:Z

    return-void
.end method

.method protected Sj()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v4

    :cond_5
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    :goto_1
    return v1

    :cond_8
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v0

    return v0
.end method

.method public TKC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->TKC:Z

    return-void
.end method

.method public TKC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->sP:Z

    return-void
.end method

.method public sP()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
