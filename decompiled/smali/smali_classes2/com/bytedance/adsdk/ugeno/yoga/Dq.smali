.class public Lcom/bytedance/adsdk/ugeno/yoga/Dq;
.super Landroid/view/ViewGroup;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj/HiB;
.implements Lcom/bytedance/adsdk/ugeno/sP/sP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;,
        Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

.field private final Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/bytedance/adsdk/ugeno/yoga/aa;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:Lcom/bytedance/adsdk/ugeno/EjP;

.field private final sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-static {}, Lcom/bytedance/adsdk/ugeno/yoga/Fmk;->Sj()Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Ljava/lang/Object;)V

    new-instance p2, Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;-><init>()V

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/uA;)V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    invoke-static {p2, p1, p0}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;Lcom/bytedance/adsdk/ugeno/yoga/aa;Landroid/view/View;)V

    return-void
.end method

.method private Sj(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->vS(F)V

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->EjP(F)V

    :cond_1
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Ym(F)V

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    int-to-float p2, v0

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TEQ(F)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    const/high16 p2, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(FF)V

    return-void
.end method

.method private Sj(Landroid/view/View;Z)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/yoga/aa;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP()Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(I)Lcom/bytedance/adsdk/ugeno/yoga/aa;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    const/high16 p2, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, p2, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(FF)V

    :cond_3
    return-void
.end method

.method protected static Sj(Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;Lcom/bytedance/adsdk/ugeno/yoga/aa;Landroid/view/View;)V
    .locals 7

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/EjP;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/EjP;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/EjP;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    sget-object p2, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->sP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    sget-object p2, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    sget-object p2, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_21

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;->Sj:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/sP;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC(Lcom/bytedance/adsdk/ugeno/yoga/sP;)V

    goto/16 :goto_1

    :cond_2
    if-nez v0, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/sP;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/sP;)V

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/sP;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/sP;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/sP;)V

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x19

    if-ne v0, v3, :cond_5

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->aa(F)V

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC(F)V

    goto/16 :goto_1

    :cond_6
    if-ne v0, v1, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/vS;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/vS;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/vS;)V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x6

    if-ne v0, v3, :cond_8

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(F)V

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x7

    if-ne v0, v3, :cond_9

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(F)V

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x10

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, -0x40800000    # -1.0f

    if-ne v0, v3, :cond_c

    cmpl-float v0, v2, v6

    if-nez v0, :cond_a

    invoke-virtual {p1, v5}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Jcg(F)V

    goto/16 :goto_1

    :cond_a
    cmpl-float v0, v2, v4

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->EjP()V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->vS(F)V

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0x12

    if-ne v0, v3, :cond_d

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x3

    if-ne v0, v3, :cond_e

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/Jcg;)V

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0x11

    if-ne v0, v3, :cond_f

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->sP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto/16 :goto_1

    :cond_f
    const/16 v3, 0x14

    if-ne v0, v3, :cond_10

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto/16 :goto_1

    :cond_10
    const/16 v3, 0x13

    if-ne v0, v3, :cond_11

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0x1c

    if-ne v0, v3, :cond_12

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->uA(F)V

    goto/16 :goto_1

    :cond_12
    const/16 v3, 0x1b

    if-ne v0, v3, :cond_13

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Dq(F)V

    goto/16 :goto_1

    :cond_13
    const/16 v3, 0x16

    if-ne v0, v3, :cond_14

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto/16 :goto_1

    :cond_14
    const/16 v3, 0x15

    if-ne v0, v3, :cond_15

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->sP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto/16 :goto_1

    :cond_15
    const/16 v3, 0x18

    if-ne v0, v3, :cond_16

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto/16 :goto_1

    :cond_16
    const/16 v3, 0x17

    if-ne v0, v3, :cond_17

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto :goto_1

    :cond_17
    const/16 v3, 0xb

    if-ne v0, v3, :cond_18

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto :goto_1

    :cond_18
    const/16 v3, 0xa

    if-ne v0, v3, :cond_19

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->sP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto :goto_1

    :cond_19
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1a

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto :goto_1

    :cond_1a
    const/16 v3, 0xc

    if-ne v0, v3, :cond_1b

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC(Lcom/bytedance/adsdk/ugeno/yoga/HiB;F)V

    goto :goto_1

    :cond_1b
    const/16 v3, 0xe

    if-ne v0, v3, :cond_1c

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/Zq;)V

    goto :goto_1

    :cond_1c
    const/16 v3, 0xf

    if-ne v0, v3, :cond_1f

    cmpl-float v0, v2, v6

    if-nez v0, :cond_1d

    invoke-virtual {p1, v5}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->HiB(F)V

    goto :goto_1

    :cond_1d
    cmpl-float v0, v2, v4

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC()V

    goto :goto_1

    :cond_1e
    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->EjP(F)V

    goto :goto_1

    :cond_1f
    const/4 v3, 0x2

    if-ne v0, v3, :cond_20

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/yoga/uvD;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/uvD;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/uvD;)V

    :cond_20
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_21
    return-void
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;)V
    .locals 1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP()Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP()Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;)V

    return-void

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, v0, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(FF)V

    return-void
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;FF)V
    .locals 6

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->uA()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->HiB()F

    move-result v1

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->vS()F

    move-result v2

    add-float/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Jcg()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Dq()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;FF)V

    goto :goto_1

    :cond_2
    instance-of v3, v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    if-nez v3, :cond_3

    invoke-virtual {p1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->HiB()F

    move-result v4

    add-float/2addr v4, p2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->vS()F

    move-result v5

    add-float/2addr v5, p3

    invoke-direct {p0, v3, v4, v5}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;FF)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->HiB(F)V

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->TKC()V

    return-void

    :cond_1
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->EjP(F)V

    return-void
.end method

.method private sP(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/high16 p2, 0x42c80000    # 100.0f

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Jcg(F)V

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->EjP()V

    return-void

    :cond_1
    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->vS(F)V

    return-void
.end method


# virtual methods
.method public EjP(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/yoga/aa;

    const v1, 0x900ff00

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, -0x1

    if-nez p2, :cond_1

    if-eqz v2, :cond_2

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;)I

    move-result p2

    if-ne p2, v3, :cond_2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/yoga/aa;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;)V

    return-void

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;)I

    move-result p2

    if-eq p2, v3, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->sP(I)Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/yoga/aa;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/yoga/aa;

    return-object p1
.end method

.method public Sj(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    return-void
.end method

.method public TKC(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/uA;)V

    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/yoga/Sj;

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    instance-of p2, p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->getYogaNode()Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/yoga/aa;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/yoga/Fmk;->Sj()Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Ljava/lang/Object;)V

    new-instance p3, Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;

    invoke-direct {p3}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$sP;-><init>()V

    invoke-virtual {p2, p3}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/uA;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    invoke-static {p3, p2, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;Lcom/bytedance/adsdk/ugeno/yoga/aa;Landroid/view/View;)V

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x900ff00

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V

    return-void

    :cond_4
    throw v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/EjP;->sP(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;-><init>(II)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq$Sj;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBorderRadius()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj()F

    move-result v0

    return v0
.end method

.method public getRipple()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getRipple()F

    move-result v0

    return v0
.end method

.method public getRubIn()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getRubIn()F

    move-result v0

    return v0
.end method

.method public getShine()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getShine()F

    move-result v0

    return v0
.end method

.method public getStretch()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->getStretch()F

    move-result v0

    return v0
.end method

.method public getYogaNode()Lcom/bytedance/adsdk/ugeno/yoga/aa;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Jcg()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/EjP;->Dq()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/EjP;->vS()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    if-nez p1, :cond_1

    sub-int p1, p4, p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    sub-int v1, p5, p3

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(II)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Lcom/bytedance/adsdk/ugeno/yoga/aa;FF)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(IIII)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(II)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP;->Sj(II)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Jcg()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/yoga/aa;->Dq()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/EjP;->HiB()V

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->TKC:Lcom/bytedance/adsdk/ugeno/EjP;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/adsdk/ugeno/EjP;->sP(IIII)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public removeAllViews()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 3

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 3

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public sP(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/aa;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public sP(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->Sj(Landroid/view/View;)Lcom/bytedance/adsdk/ugeno/yoga/aa;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->sP(Lcom/bytedance/adsdk/ugeno/yoga/aa;I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj(I)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->Sj(F)V

    return-void
.end method

.method public setRipple(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->sP(F)V

    :cond_0
    return-void
.end method

.method public setRubIn(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->HiB(F)V

    :cond_0
    return-void
.end method

.method public setShine(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->TKC(F)V

    :cond_0
    return-void
.end method

.method public setStretch(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Dq;->EjP:Lcom/bytedance/adsdk/ugeno/Sj/vS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/Sj/vS;->EjP(F)V

    :cond_0
    return-void
.end method
