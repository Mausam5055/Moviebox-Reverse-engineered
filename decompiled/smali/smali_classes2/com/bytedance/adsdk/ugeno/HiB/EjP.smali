.class Lcom/bytedance/adsdk/ugeno/HiB/EjP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;,
        Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;
    }
.end annotation


# static fields
.field static final synthetic TKC:Z = true


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

.field private HiB:[Z

.field Sj:[I

.field sP:[J

.field private vS:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/bytedance/adsdk/ugeno/HiB/Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    return-void
.end method

.method private EjP(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result p1

    return p1
.end method

.method private EjP(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingBottom()I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingEnd()I

    move-result p1

    return p1
.end method

.method private HiB(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result p1

    return p1
.end method

.method private Sj(ILcom/bytedance/adsdk/ugeno/HiB/sP;I)I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Sj()I

    move-result p3

    invoke-interface {v0, p1, v1, p3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(III)I

    move-result p1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uA()I

    move-result v0

    if-le p3, v0, :cond_0

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uA()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Jcg()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Jcg()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private Sj(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Sj()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sP()I

    move-result p1

    return p1
.end method

.method private Sj(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingStart()I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingTop()I

    move-result p1

    return p1
.end method

.method private Sj(Ljava/util/List;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/HiB/TKC;",
            ">;II)",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/HiB/TKC;",
            ">;"
        }
    .end annotation

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-direct {v0}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;-><init>()V

    iput p2, v0, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    if-nez v1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method private Sj(IIILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP:[J

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(II)J

    move-result-wide p2

    aput-wide p2, v0, p1

    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz p2, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0, p3, p4}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(II)J

    move-result-wide p3

    aput-wide p3, p2, p1

    :cond_1
    return-void
.end method

.method private Sj(IILcom/bytedance/adsdk/ugeno/HiB/TKC;IIZ)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TEQ:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-lez v2, :cond_14

    iget v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    if-ge v4, v2, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v5, v4, v2

    int-to-float v5, v5

    div-float/2addr v5, v0

    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->vS:I

    add-int v0, p5, v0

    iput v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    if-nez p6, :cond_1

    const/high16 v0, -0x80000000

    iput v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    :cond_1
    const/4 v0, 0x0

    move v6, v0

    move v8, v6

    move v9, v1

    :goto_0
    iget v10, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    if-ge v0, v10, :cond_13

    iget v10, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Zq:I

    add-int/2addr v10, v0

    iget-object v11, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v11, v10}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_12

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    iget-object v13, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v13}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexDirection()I

    move-result v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/4 v14, 0x1

    if-eqz v13, :cond_2

    if-ne v13, v14, :cond_3

    :cond_2
    move v15, v2

    move/from16 v2, p1

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget-object v15, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz v15, :cond_4

    aget-wide v14, v15, v10

    invoke-virtual {v7, v14, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(J)I

    move-result v13

    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget-object v15, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz v15, :cond_5

    aget-wide v14, v15, v10

    invoke-virtual {v7, v14, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(J)I

    move-result v14

    :cond_5
    iget-object v15, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_a

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->EjP()F

    move-result v15

    cmpl-float v15, v15, v1

    if-lez v15, :cond_a

    int-to-float v13, v13

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->EjP()F

    move-result v14

    mul-float/2addr v14, v5

    add-float/2addr v13, v14

    iget v14, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v0, v14, :cond_6

    add-float/2addr v13, v9

    move v9, v1

    :cond_6
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TEQ()I

    move-result v1

    if-le v14, v1, :cond_7

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TEQ()I

    move-result v14

    iget-object v1, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    aput-boolean v15, v1, v10

    iget v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TEQ:F

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->EjP()F

    move-result v6

    sub-float/2addr v1, v6

    iput v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TEQ:F

    move v15, v2

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    int-to-float v1, v14

    sub-float/2addr v13, v1

    add-float/2addr v9, v13

    move v15, v2

    float-to-double v1, v9

    cmpl-double v13, v1, v17

    if-lez v13, :cond_8

    add-int/lit8 v14, v14, 0x1

    sub-double v1, v1, v17

    :goto_1
    double-to-float v1, v1

    move v9, v1

    goto :goto_2

    :cond_8
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpg-double v13, v1, v19

    if-gez v13, :cond_9

    add-int/lit8 v14, v14, -0x1

    add-double v1, v1, v17

    goto :goto_1

    :cond_9
    :goto_2
    iget v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Fmk:I

    move/from16 v2, p1

    invoke-direct {v7, v2, v12, v1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(ILcom/bytedance/adsdk/ugeno/HiB/sP;I)I

    move-result v1

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v1, v13}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-direct {v7, v10, v1, v13, v11}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    move/from16 v13, v16

    goto :goto_3

    :cond_a
    move v15, v2

    move/from16 v2, p1

    :goto_3
    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result v1

    add-int/2addr v14, v1

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result v1

    add-int/2addr v14, v1

    iget-object v1, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1, v11}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;)I

    move-result v1

    add-int/2addr v14, v1

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v10

    add-int/2addr v13, v10

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v10

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    iput v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    move/from16 v13, p2

    move/from16 v21, v15

    goto/16 :goto_8

    :goto_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v13, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz v13, :cond_b

    aget-wide v1, v13, v10

    invoke-virtual {v7, v1, v2}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(J)I

    move-result v1

    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v13, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    move/from16 v21, v15

    if-eqz v13, :cond_c

    aget-wide v14, v13, v10

    invoke-virtual {v7, v14, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(J)I

    move-result v2

    :cond_c
    iget-object v13, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    aget-boolean v13, v13, v10

    if-nez v13, :cond_11

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->EjP()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_11

    int-to-float v1, v1

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->EjP()F

    move-result v2

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    if-ne v0, v2, :cond_d

    add-float/2addr v1, v9

    move v9, v14

    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uA()I

    move-result v15

    if-le v2, v15, :cond_e

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uA()I

    move-result v2

    iget-object v1, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    aput-boolean v13, v1, v10

    iget v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TEQ:F

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->EjP()F

    move-result v6

    sub-float/2addr v1, v6

    iput v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TEQ:F

    move v6, v13

    goto :goto_6

    :cond_e
    int-to-float v13, v2

    sub-float/2addr v1, v13

    add-float/2addr v9, v1

    float-to-double v14, v9

    cmpl-double v1, v14, v17

    if-lez v1, :cond_f

    add-int/lit8 v2, v2, 0x1

    sub-double v14, v14, v17

    :goto_5
    double-to-float v1, v14

    move v9, v1

    goto :goto_6

    :cond_f
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    cmpg-double v1, v14, v19

    if-gez v1, :cond_10

    add-int/lit8 v2, v2, -0x1

    add-double v14, v14, v17

    goto :goto_5

    :cond_10
    :goto_6
    iget v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Fmk:I

    move/from16 v13, p2

    invoke-direct {v7, v13, v12, v1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(ILcom/bytedance/adsdk/ugeno/HiB/sP;I)I

    move-result v1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v11, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-direct {v7, v10, v2, v1, v11}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    move v1, v14

    move v2, v15

    goto :goto_7

    :cond_11
    move/from16 v13, p2

    :goto_7
    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v10

    add-int/2addr v2, v10

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v10

    add-int/2addr v2, v10

    iget-object v10, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v10, v11}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;)I

    move-result v10

    add-int/2addr v2, v10

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result v10

    add-int/2addr v1, v10

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result v10

    add-int/2addr v1, v10

    add-int/2addr v8, v1

    iput v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    move v1, v2

    :goto_8
    iget v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    move v8, v1

    goto :goto_9

    :cond_12
    move/from16 v13, p2

    move/from16 v21, v2

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v21

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_13
    move/from16 v13, p2

    move/from16 v21, v2

    if-eqz v6, :cond_14

    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    move/from16 v1, v21

    if-eq v1, v0, :cond_14

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IILcom/bytedance/adsdk/ugeno/HiB/TKC;IIZ)V

    :cond_14
    :goto_a
    return-void
.end method

.method private Sj(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Jcg()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Jcg()I

    move-result v1

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uA()I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uA()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Dq()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Dq()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TEQ()I

    move-result v5

    if-le v2, v5, :cond_3

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TEQ()I

    move-result v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    :cond_4
    return-void
.end method

.method private Sj(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1, p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Dq()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TEQ()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz v0, :cond_0

    aget-wide v1, v0, p3

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, p3, v0, p2, p1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    return-void
.end method

.method private Sj(Landroid/widget/CompoundButton;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Jcg()I

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Dq()I

    move-result v2

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/Jcg/HiB;->Sj(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    :goto_1
    const/4 p1, -0x1

    if-ne v1, p1, :cond_2

    move v1, v4

    :cond_2
    invoke-interface {v0, v1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Sj(I)V

    if-ne v2, p1, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {v0, v2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sP(I)V

    return-void
.end method

.method private Sj(Ljava/util/List;Lcom/bytedance/adsdk/ugeno/HiB/TKC;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/HiB/TKC;",
            ">;",
            "Lcom/bytedance/adsdk/ugeno/HiB/TKC;",
            "II)V"
        }
    .end annotation

    iput p4, p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Fmk:I

    iget-object p4, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p4, p2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/HiB/TKC;)V

    iput p3, p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->uvD:I

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Sj(IILcom/bytedance/adsdk/ugeno/HiB/TKC;)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->sP()I

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private Sj(Landroid/view/View;IIIILcom/bytedance/adsdk/ugeno/HiB/sP;III)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexWrap()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p6}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Ym()Z

    move-result p6

    const/4 v0, 0x1

    if-eqz p6, :cond_1

    return v0

    :cond_1
    if-nez p2, :cond_2

    return v1

    :cond_2
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getMaxLine()I

    move-result p2

    const/4 p6, -0x1

    if-eq p2, p6, :cond_3

    add-int/2addr p9, v0

    if-gt p2, p9, :cond_3

    return v1

    :cond_3
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p2, p1, p7, p8}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;II)I

    move-result p1

    if-lez p1, :cond_4

    add-int/2addr p5, p1

    :cond_4
    add-int/2addr p4, p5

    if-ge p3, p4, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private Sj(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;",
            ">;",
            "Landroid/util/SparseIntArray;",
            ")[I"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    new-array p1, p1, [I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;

    iget v2, v1, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->Sj:I

    aput v2, p1, v0

    iget v1, v1, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->sP:I

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private TKC(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result p1

    return p1
.end method

.method private TKC(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingTop()I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingStart()I

    move-result p1

    return p1
.end method

.method private TKC(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    return-void

    :cond_0
    array-length v1, v0

    if-ge v1, p1, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method private sP(ILcom/bytedance/adsdk/ugeno/HiB/sP;I)I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sP()I

    move-result p3

    invoke-interface {v0, p1, v1, p3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(III)I

    move-result p1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TEQ()I

    move-result v0

    if-le p3, v0, :cond_0

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TEQ()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Dq()I

    move-result v0

    if-ge p3, v0, :cond_1

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Dq()I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method private sP(Landroid/view/View;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method private sP(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sP()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Sj()I

    move-result p1

    return p1
.end method

.method private sP(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingEnd()I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingBottom()I

    move-result p1

    return p1
.end method

.method private sP(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v2, v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;-><init>(Lcom/bytedance/adsdk/ugeno/HiB/EjP$1;)V

    invoke-interface {v2}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TKC()I

    move-result v2

    iput v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->sP:I

    iput v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->Sj:I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private sP(IILcom/bytedance/adsdk/ugeno/HiB/TKC;IIZ)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    iget v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Ym:F

    const/4 v2, 0x0

    cmpg-float v5, v1, v2

    if-lez v5, :cond_14

    if-le v4, v0, :cond_0

    goto/16 :goto_8

    :cond_0
    sub-int v5, v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v1

    iget v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->vS:I

    add-int v1, p5, v1

    iput v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    if-nez p6, :cond_1

    const/high16 v1, -0x80000000

    iput v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    :cond_1
    const/4 v1, 0x0

    move v6, v1

    move v8, v6

    move v9, v2

    :goto_0
    iget v10, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    if-ge v1, v10, :cond_13

    iget v10, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Zq:I

    add-int/2addr v10, v1

    iget-object v11, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v11, v10}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_12

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    iget-object v13, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v13}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexDirection()I

    move-result v13

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    if-eqz v13, :cond_2

    if-ne v13, v14, :cond_3

    :cond_2
    move v2, v0

    move v15, v1

    move/from16 v1, p1

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget-object v15, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz v15, :cond_4

    aget-wide v14, v15, v10

    invoke-virtual {v7, v14, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(J)I

    move-result v13

    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    iget-object v15, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz v15, :cond_5

    aget-wide v14, v15, v10

    invoke-virtual {v7, v14, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(J)I

    move-result v14

    :cond_5
    iget-object v15, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    aget-boolean v15, v15, v10

    if-nez v15, :cond_a

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->HiB()F

    move-result v15

    cmpl-float v15, v15, v2

    if-lez v15, :cond_a

    int-to-float v13, v13

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->HiB()F

    move-result v14

    mul-float/2addr v14, v5

    sub-float/2addr v13, v14

    iget v14, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ne v1, v14, :cond_6

    add-float/2addr v13, v9

    move v9, v2

    :cond_6
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Dq()I

    move-result v2

    if-ge v14, v2, :cond_7

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Dq()I

    move-result v14

    iget-object v2, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    aput-boolean v15, v2, v10

    iget v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Ym:F

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->HiB()F

    move-result v6

    sub-float/2addr v2, v6

    iput v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Ym:F

    move v2, v0

    move v15, v1

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    int-to-float v2, v14

    sub-float/2addr v13, v2

    add-float/2addr v9, v13

    move v2, v0

    move v15, v1

    float-to-double v0, v9

    cmpl-double v13, v0, v17

    if-lez v13, :cond_8

    add-int/lit8 v14, v14, 0x1

    sub-float v9, v9, v19

    goto :goto_1

    :cond_8
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v0, v0, v16

    if-gez v0, :cond_9

    add-int/lit8 v14, v14, -0x1

    add-float v9, v9, v19

    :cond_9
    :goto_1
    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Fmk:I

    move/from16 v1, p1

    invoke-direct {v7, v1, v12, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(ILcom/bytedance/adsdk/ugeno/HiB/sP;I)I

    move-result v0

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v0, v13}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-direct {v7, v10, v0, v13, v11}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    move/from16 v13, v16

    goto :goto_2

    :cond_a
    move v2, v0

    move v15, v1

    move/from16 v1, p1

    :goto_2
    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result v0

    add-int/2addr v14, v0

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result v0

    add-int/2addr v14, v0

    iget-object v0, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0, v11}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;)I

    move-result v0

    add-int/2addr v14, v0

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v10

    add-int/2addr v13, v10

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v10

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    iput v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    move/from16 v13, p2

    goto/16 :goto_6

    :goto_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v13, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz v13, :cond_b

    aget-wide v0, v13, v10

    invoke-virtual {v7, v0, v1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(J)I

    move-result v0

    :cond_b
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v13, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    move/from16 v20, v15

    if-eqz v13, :cond_c

    aget-wide v14, v13, v10

    invoke-virtual {v7, v14, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(J)I

    move-result v1

    :cond_c
    iget-object v13, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    aget-boolean v13, v13, v10

    if-nez v13, :cond_11

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->HiB()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-lez v13, :cond_11

    int-to-float v0, v0

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->HiB()F

    move-result v1

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    move/from16 v15, v20

    if-ne v15, v1, :cond_d

    add-float/2addr v0, v9

    move v9, v14

    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Jcg()I

    move-result v14

    if-ge v1, v14, :cond_e

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Jcg()I

    move-result v1

    iget-object v0, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB:[Z

    aput-boolean v13, v0, v10

    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Ym:F

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->HiB()F

    move-result v6

    sub-float/2addr v0, v6

    iput v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Ym:F

    move v6, v13

    goto :goto_4

    :cond_e
    int-to-float v13, v1

    sub-float/2addr v0, v13

    add-float/2addr v9, v0

    float-to-double v13, v9

    cmpl-double v0, v13, v17

    if-lez v0, :cond_f

    add-int/lit8 v1, v1, 0x1

    sub-float v9, v9, v19

    goto :goto_4

    :cond_f
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    cmpg-double v0, v13, v16

    if-gez v0, :cond_10

    add-int/lit8 v1, v1, -0x1

    add-float v9, v9, v19

    :cond_10
    :goto_4
    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Fmk:I

    move/from16 v13, p2

    invoke-direct {v7, v13, v12, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(ILcom/bytedance/adsdk/ugeno/HiB/sP;I)I

    move-result v0

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    invoke-direct {v7, v10, v1, v0, v11}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    move v0, v14

    move/from16 v1, v16

    goto :goto_5

    :cond_11
    move/from16 v13, p2

    move/from16 v15, v20

    :goto_5
    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v10

    add-int/2addr v1, v10

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, v7, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v10, v11}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;)I

    move-result v10

    add-int/2addr v1, v10

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result v10

    add-int/2addr v0, v10

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result v10

    add-int/2addr v0, v10

    add-int/2addr v8, v0

    iput v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    move v0, v1

    :goto_6
    iget v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    move v8, v0

    goto :goto_7

    :cond_12
    move/from16 v13, p2

    move v2, v0

    move v15, v1

    :goto_7
    add-int/lit8 v1, v15, 0x1

    move v0, v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_13
    move/from16 v13, p2

    move v2, v0

    if-eqz v6, :cond_14

    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    if-eq v2, v0, :cond_14

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(IILcom/bytedance/adsdk/ugeno/HiB/TKC;IIZ)V

    :cond_14
    :goto_8
    return-void
.end method

.method private sP(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1, p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Jcg()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uA()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS:[J

    if-eqz v0, :cond_0

    aget-wide v1, v0, p3

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(J)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    invoke-direct {p0, p3, p2, v0, p1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    return-void
.end method

.method private vS(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result p1

    return p1
.end method


# virtual methods
.method Sj(J)I
    .locals 0

    long-to-int p1, p1

    return p1
.end method

.method Sj()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(I)V

    return-void
.end method

.method Sj(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexDirection()I

    move-result v2

    iget-object v3, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getAlignItems()I

    move-result v3

    const-string v4, "Invalid flex direction: "

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v3, v7, :cond_9

    iget-object v3, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj:[I

    if-eqz v3, :cond_1

    aget v1, v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    :goto_1
    if-ge v1, v10, :cond_8

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    iget v12, v11, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_7

    iget v14, v11, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Zq:I

    add-int/2addr v14, v13

    iget-object v15, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v15}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result v15

    if-ge v13, v15, :cond_6

    iget-object v15, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v15, v14}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v5, 0x8

    if-eq v9, v5, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    invoke-interface {v5}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->vS()I

    move-result v9

    const/4 v6, -0x1

    if-eq v9, v6, :cond_2

    invoke-interface {v5}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->vS()I

    move-result v5

    if-ne v5, v7, :cond_6

    :cond_2
    if-eqz v2, :cond_5

    if-eq v2, v8, :cond_5

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_3
    iget v5, v11, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-direct {v0, v15, v5, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(Landroid/view/View;II)V

    goto :goto_4

    :cond_5
    iget v5, v11, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-direct {v0, v15, v5, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/view/View;II)V

    :cond_6
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void

    :cond_9
    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    iget-object v5, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->sef:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v7, v9}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(I)Landroid/view/View;

    move-result-object v7

    if-eqz v2, :cond_d

    if-eq v2, v8, :cond_d

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eq v2, v9, :cond_c

    if-ne v2, v10, :cond_b

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_6
    iget v11, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v0, v7, v11, v6}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(Landroid/view/View;II)V

    goto :goto_5

    :cond_d
    const/4 v9, 0x2

    const/4 v10, 0x3

    iget v11, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v0, v7, v11, v6}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/view/View;II)V

    goto :goto_5

    :cond_e
    return-void
.end method

.method Sj(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(III)V

    return-void
.end method

.method Sj(III)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->TKC(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexDirection()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexDirection()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid flex direction: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getLargestMainSize()I

    move-result v1

    :goto_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingBottom()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    goto :goto_4

    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getLargestMainSize()I

    move-result v3

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingRight()I

    move-result v2

    goto :goto_2

    :goto_4
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj:[I

    if-eqz v2, :cond_6

    aget p3, v2, p3

    goto :goto_5

    :cond_6
    const/4 p3, 0x0

    :goto_5
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_6
    if-ge p3, v10, :cond_9

    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    iget v2, v5, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    if-ge v2, v1, :cond_7

    iget-boolean v3, v5, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->dNu:Z

    if-eqz v3, :cond_7

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, v1

    move v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IILcom/bytedance/adsdk/ugeno/HiB/TKC;IIZ)V

    goto :goto_7

    :cond_7
    if-le v2, v1, :cond_8

    iget-boolean v2, v5, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TzV:Z

    if-eqz v2, :cond_8

    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, v1

    move v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(IILcom/bytedance/adsdk/ugeno/HiB/TKC;IIZ)V

    :cond_8
    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method Sj(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/HiB/TKC;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getAlignItems()I

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->vS()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->vS()I

    move-result v1

    :cond_0
    iget v2, p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    const/4 v3, 0x2

    if-eqz v1, :cond_7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 p2, 0x4

    if-eq v1, p2, :cond_7

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexWrap()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget p2, p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->aa:I

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p4, p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    iget p2, p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->aa:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v1

    add-int/2addr p2, v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result p2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result p2

    sub-int/2addr v2, p2

    div-int/2addr v2, v3

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_4

    add-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_4
    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void

    :cond_5
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_6

    add-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int p2, p4, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result p6

    sub-int/2addr p2, p6

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result p6

    sub-int/2addr p4, p6

    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    sub-int/2addr p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p4, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result p2

    add-int/2addr p4, p2

    sub-int/2addr p6, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p6, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexWrap()I

    move-result p2

    if-eq p2, v3, :cond_8

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result p2

    add-int/2addr p4, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_8
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method Sj(Landroid/view/View;Lcom/bytedance/adsdk/ugeno/HiB/TKC;ZIIII)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getAlignItems()I

    move-result v1

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->vS()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->vS()I

    move-result v1

    :cond_0
    iget p2, p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_5

    const/4 p2, 0x4

    if-eq v1, p2, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/Jcg/vS;->Sj(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/Jcg/vS;->sP(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    sub-int/2addr p2, v0

    div-int/2addr p2, v2

    if-nez p3, :cond_2

    add-int/2addr p4, p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    sub-int/2addr p4, p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void

    :cond_3
    if-nez p3, :cond_4

    add-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p4, p3

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result p3

    sub-int/2addr p4, p3

    add-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_4
    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p4, p3

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result p3

    add-int/2addr p4, p3

    sub-int/2addr p6, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p6, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_5
    if-nez p3, :cond_6

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result p2

    add-int/2addr p4, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result p2

    add-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method Sj(Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;II)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;IIIIILjava/util/List;)V

    return-void
.end method

.method Sj(Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;IIIIILjava/util/List;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;",
            "IIIII",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/HiB/TKC;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p6

    iget-object v0, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj()Z

    move-result v15

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-nez p7, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p7

    :goto_0
    iput-object v7, v11, Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;->Sj:Ljava/util/List;

    const/4 v6, -0x1

    if-ne v14, v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v10, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Z)I

    move-result v1

    invoke-direct {v10, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(Z)I

    move-result v2

    invoke-direct {v10, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->TKC(Z)I

    move-result v16

    invoke-direct {v10, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP(Z)I

    move-result v17

    new-instance v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-direct {v3}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;-><init>()V

    move/from16 v6, p5

    iput v6, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Zq:I

    add-int/2addr v2, v1

    iput v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    iget-object v1, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result v1

    const/high16 v18, -0x80000000

    move/from16 v19, v0

    move/from16 v22, v18

    const/4 v0, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_2
    if-ge v6, v1, :cond_18

    iget-object v4, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v4, v6}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-direct {v10, v6, v1, v3}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IILcom/bytedance/adsdk/ugeno/HiB/TKC;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {v10, v7, v3, v6, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Ljava/util/List;Lcom/bytedance/adsdk/ugeno/HiB/TKC;II)V

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v11, 0x8

    if-ne v5, v11, :cond_4

    iget v4, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->uA:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->uA:I

    iget v4, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    invoke-direct {v10, v6, v1, v3}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IILcom/bytedance/adsdk/ugeno/HiB/TKC;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {v10, v7, v3, v6, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Ljava/util/List;Lcom/bytedance/adsdk/ugeno/HiB/TKC;II)V

    :cond_3
    :goto_3
    move/from16 v12, p4

    move/from16 v24, v8

    move/from16 v26, v9

    move v4, v13

    move v11, v14

    const/16 v27, 0x0

    move v8, v2

    move-object v14, v7

    const/4 v7, 0x1

    move v2, v1

    move v1, v6

    const/4 v6, -0x1

    goto/16 :goto_10

    :cond_4
    instance-of v5, v4, Landroid/widget/CompoundButton;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Landroid/widget/CompoundButton;

    invoke-direct {v10, v5}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/widget/CompoundButton;)V

    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->vS()I

    move-result v5

    move/from16 v25, v1

    const/4 v1, 0x4

    if-ne v5, v1, :cond_6

    iget-object v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->sef:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-direct {v10, v11, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v1

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->aa()F

    move-result v5

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v5, v5, v26

    if-eqz v5, :cond_7

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v9, v5, :cond_7

    int-to-float v1, v8

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->aa()F

    move-result v5

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_7
    if-eqz v15, :cond_8

    iget-object v5, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    const/4 v14, 0x1

    invoke-direct {v10, v11, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->TKC(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v24

    add-int v24, v2, v24

    invoke-direct {v10, v11, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v26

    add-int v14, v24, v26

    invoke-interface {v5, v12, v14, v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(III)I

    move-result v1

    iget-object v5, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    add-int v14, v16, v17

    move/from16 v24, v8

    const/4 v8, 0x1

    invoke-direct {v10, v11, v8}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v26

    add-int v14, v14, v26

    invoke-direct {v10, v11, v8}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v26

    add-int v14, v14, v26

    add-int/2addr v14, v0

    move/from16 v26, v9

    invoke-direct {v10, v11, v8}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v9

    invoke-interface {v5, v13, v14, v9}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(III)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    invoke-direct {v10, v6, v1, v5, v4}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    move v9, v1

    const/4 v14, 0x0

    goto :goto_4

    :cond_8
    move/from16 v24, v8

    move/from16 v26, v9

    const/4 v8, 0x1

    iget-object v5, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    add-int v9, v16, v17

    const/4 v14, 0x0

    invoke-direct {v10, v11, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v23

    add-int v9, v9, v23

    invoke-direct {v10, v11, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v23

    add-int v9, v9, v23

    add-int/2addr v9, v0

    invoke-direct {v10, v11, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v8

    invoke-interface {v5, v13, v9, v8}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(III)I

    move-result v5

    iget-object v8, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-direct {v10, v11, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->TKC(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v9

    add-int/2addr v9, v2

    invoke-direct {v10, v11, v14}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v23

    add-int v9, v9, v23

    invoke-interface {v8, v12, v9, v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(III)I

    move-result v1

    invoke-virtual {v4, v5, v1}, Landroid/view/View;->measure(II)V

    invoke-direct {v10, v6, v5, v1, v4}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IIILandroid/view/View;)V

    move v9, v1

    :goto_4
    invoke-direct {v10, v4, v6}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/view/View;I)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    move/from16 v5, v20

    invoke-static {v5, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v20

    iget v5, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    invoke-direct {v10, v4, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/view/View;Z)I

    move-result v1

    invoke-direct {v10, v11, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->TKC(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v8

    add-int/2addr v1, v8

    invoke-direct {v10, v11, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v8

    add-int/2addr v8, v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    move v1, v0

    move-object/from16 v0, p0

    move v12, v1

    move/from16 v14, v25

    move-object v1, v4

    move v14, v2

    move/from16 v2, v26

    move-object/from16 v28, v3

    move/from16 v3, v24

    move/from16 v29, v14

    const/16 v27, 0x0

    move-object v14, v4

    move v4, v5

    move v5, v8

    move/from16 p5, v6

    const/4 v8, -0x1

    move-object v6, v11

    move-object/from16 p7, v14

    move-object v14, v7

    move/from16 v7, p5

    move v13, v8

    move/from16 v8, v21

    move/from16 v30, v9

    move/from16 v9, v23

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/view/View;IIIILcom/bytedance/adsdk/ugeno/HiB/sP;III)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {v28 .. v28}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->sP()I

    move-result v0

    if-lez v0, :cond_a

    if-lez p5, :cond_9

    add-int/lit8 v4, p5, -0x1

    :goto_5
    move-object/from16 v3, v28

    goto :goto_6

    :cond_9
    move/from16 v4, v27

    goto :goto_5

    :goto_6
    invoke-direct {v10, v14, v3, v4, v12}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Ljava/util/List;Lcom/bytedance/adsdk/ugeno/HiB/TKC;II)V

    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    add-int/2addr v0, v12

    goto :goto_7

    :cond_a
    move v0, v12

    :goto_7
    if-eqz v15, :cond_c

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sP()I

    move-result v1

    if-ne v1, v13, :cond_b

    iget-object v1, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingTop()I

    move-result v2

    iget-object v3, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sP()I

    move-result v3

    move/from16 v4, p3

    move v6, v13

    invoke-interface {v1, v4, v2, v3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->sP(III)I

    move-result v1

    move-object/from16 v2, p7

    move/from16 v3, v30

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    move/from16 v1, p5

    invoke-direct {v10, v2, v1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/view/View;I)V

    goto :goto_8

    :cond_b
    move/from16 v4, p3

    move/from16 v1, p5

    move-object/from16 v2, p7

    move v6, v13

    goto :goto_8

    :cond_c
    move/from16 v4, p3

    move/from16 v1, p5

    move-object/from16 v2, p7

    move v6, v13

    move/from16 v3, v30

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Sj()I

    move-result v5

    if-ne v5, v6, :cond_d

    iget-object v5, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v5}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingLeft()I

    move-result v7

    iget-object v8, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v8}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Fmk()I

    move-result v8

    add-int/2addr v7, v8

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Zq()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v0

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->Sj()I

    move-result v8

    invoke-interface {v5, v4, v7, v8}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(III)I

    move-result v5

    invoke-virtual {v2, v5, v3}, Landroid/view/View;->measure(II)V

    invoke-direct {v10, v2, v1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/view/View;I)V

    :cond_d
    :goto_8
    new-instance v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-direct {v3}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;-><init>()V

    const/4 v7, 0x1

    iput v7, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    move/from16 v8, v29

    iput v8, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    iput v1, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Zq:I

    move/from16 v9, v18

    move/from16 v5, v27

    goto :goto_9

    :cond_e
    move/from16 v4, p3

    move/from16 v1, p5

    move-object/from16 v2, p7

    move v6, v13

    move-object/from16 v3, v28

    move/from16 v8, v29

    const/4 v7, 0x1

    iget v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    add-int/2addr v0, v7

    iput v0, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Dq:I

    add-int/lit8 v0, v21, 0x1

    move v5, v0

    move v0, v12

    move/from16 v9, v22

    :goto_9
    iget-boolean v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->dNu:Z

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->EjP()F

    move-result v13

    const/16 v21, 0x0

    cmpl-float v13, v13, v21

    if-eqz v13, :cond_f

    move v13, v7

    goto :goto_a

    :cond_f
    move/from16 v13, v27

    :goto_a
    or-int/2addr v12, v13

    iput-boolean v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->dNu:Z

    iget-boolean v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TzV:Z

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->HiB()F

    move-result v13

    cmpl-float v13, v13, v21

    if-eqz v13, :cond_10

    move v13, v7

    goto :goto_b

    :cond_10
    move/from16 v13, v27

    :goto_b
    or-int/2addr v12, v13

    iput-boolean v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TzV:Z

    iget-object v12, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj:[I

    if-eqz v12, :cond_11

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    aput v13, v12, v1

    :cond_11
    iget v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    invoke-direct {v10, v2, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Landroid/view/View;Z)I

    move-result v13

    invoke-direct {v10, v11, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->TKC(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v21

    add-int v13, v13, v21

    invoke-direct {v10, v11, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v21

    add-int v13, v13, v21

    add-int/2addr v12, v13

    iput v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->HiB:I

    iget v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TEQ:F

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->EjP()F

    move-result v13

    add-float/2addr v12, v13

    iput v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->TEQ:F

    iget v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Ym:F

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->HiB()F

    move-result v13

    add-float/2addr v12, v13

    iput v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Ym:F

    iget-object v12, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v12, v2, v1, v5, v3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;IILcom/bytedance/adsdk/ugeno/HiB/TKC;)V

    invoke-direct {v10, v2, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(Landroid/view/View;Z)I

    move-result v12

    invoke-direct {v10, v11, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->HiB(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v10, v11, v15}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->vS(Lcom/bytedance/adsdk/ugeno/HiB/sP;Z)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v13, v2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    if-eqz v15, :cond_12

    iget-object v12, v10, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v12}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexWrap()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_13

    iget v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->aa:I

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v2

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->sef()I

    move-result v11

    add-int/2addr v2, v11

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->aa:I

    :cond_12
    :goto_c
    move/from16 v2, v25

    goto :goto_d

    :cond_13
    iget v12, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->aa:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v2

    sub-int/2addr v13, v2

    invoke-interface {v11}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->uvD()I

    move-result v2

    add-int/2addr v13, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->aa:I

    goto :goto_c

    :goto_d
    invoke-direct {v10, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(IILcom/bytedance/adsdk/ugeno/HiB/TKC;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-direct {v10, v14, v3, v1, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Ljava/util/List;Lcom/bytedance/adsdk/ugeno/HiB/TKC;II)V

    iget v11, v3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    add-int/2addr v0, v11

    :cond_14
    move/from16 v11, p6

    if-eq v11, v6, :cond_15

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_15

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    iget v12, v12, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->uvD:I

    if-lt v12, v11, :cond_15

    if-lt v1, v11, :cond_15

    if-nez v19, :cond_15

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Sj()I

    move-result v0

    neg-int v0, v0

    move/from16 v12, p4

    move/from16 v19, v7

    goto :goto_e

    :cond_15
    move/from16 v12, p4

    :goto_e
    if-le v0, v12, :cond_17

    if-nez v19, :cond_16

    goto :goto_f

    :cond_16
    move-object/from16 v0, p1

    move/from16 v5, v20

    goto :goto_11

    :cond_17
    :goto_f
    move/from16 v21, v5

    move/from16 v22, v9

    :goto_10
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, p2

    move v6, v1

    move v1, v2

    move v13, v4

    move v2, v8

    move-object v7, v14

    move/from16 v8, v24

    move/from16 v9, v26

    move v14, v11

    move-object/from16 v11, p1

    goto/16 :goto_2

    :cond_18
    move/from16 v5, v20

    move-object/from16 v0, p1

    :goto_11
    iput v5, v0, Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;->sP:I

    return-void
.end method

.method Sj(Landroid/util/SparseIntArray;)[I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method Sj(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->sP(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;-><init>(Lcom/bytedance/adsdk/ugeno/HiB/EjP$1;)V

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    instance-of p1, p3, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    invoke-interface {p3}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TKC()I

    move-result p1

    iput p1, v2, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->sP:I

    goto :goto_0

    :cond_0
    iput v3, v2, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->sP:I

    :goto_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_3

    if-ne p2, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    iput p2, v2, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->Sj:I

    :goto_1
    if-ge p2, v0, :cond_4

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;

    iget p3, p1, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->Sj:I

    add-int/2addr p3, v3

    iput p3, p1, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->Sj:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iput v0, v2, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->Sj:I

    goto :goto_3

    :cond_3
    :goto_2
    iput v0, v2, Lcom/bytedance/adsdk/ugeno/HiB/EjP$sP;->Sj:I

    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v3

    invoke-direct {p0, v0, v1, p4}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    move-result-object p1

    return-object p1
.end method

.method sP(J)I
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method sP(II)J
    .locals 4

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long p1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method sP(III)V
    .locals 12

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexDirection()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid flex direction: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    move v11, p2

    move p2, p1

    move p1, v11

    :goto_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexLinesInternal()Ljava/util/List;

    move-result-object v0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p2, v4, :cond_14

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getSumOfCrossSize()I

    move-result p2

    add-int/2addr p2, p3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    sub-int/2addr p1, p3

    iput p1, p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, v2, :cond_14

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getAlignContent()I

    move-result p3

    if-eq p3, v3, :cond_13

    if-eq p3, v2, :cond_12

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq p3, v1, :cond_c

    const/4 v1, 0x4

    if-eq p3, v1, :cond_9

    const/4 v1, 0x5

    if-eq p3, v1, :cond_4

    goto/16 :goto_8

    :cond_4
    if-ge p2, p1, :cond_14

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    move p3, v6

    :goto_2
    if-ge v5, p2, :cond_8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    iget v2, v1, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-ne v5, v8, :cond_5

    add-float/2addr v2, p3

    move p3, v6

    :cond_5
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v9, v8

    sub-float/2addr v2, v9

    add-float/2addr p3, v2

    cmpl-float v2, p3, v7

    if-lez v2, :cond_6

    add-int/lit8 v8, v8, 0x1

    sub-float/2addr p3, v7

    goto :goto_3

    :cond_6
    cmpg-float v2, p3, v4

    if-gez v2, :cond_7

    add-int/lit8 v8, v8, -0x1

    add-float/2addr p3, v7

    :cond_7
    :goto_3
    iput v8, v1, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    return-void

    :cond_9
    if-lt p2, p1, :cond_a

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->setFlexLines(Ljava/util/List;)V

    return-void

    :cond_a
    sub-int/2addr p1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    mul-int/2addr p2, v2

    div-int/2addr p1, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-direct {p3}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;-><init>()V

    iput p1, p3, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1, p2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->setFlexLines(Ljava/util/List;)V

    return-void

    :cond_c
    if-ge p2, p1, :cond_14

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    move v1, v6

    :goto_5
    if-ge v5, p3, :cond_11

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    if-eq v5, v8, :cond_10

    new-instance v8, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-direct {v8}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-ne v5, v9, :cond_d

    add-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v8, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    move v1, v6

    goto :goto_6

    :cond_d
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v8, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    :goto_6
    iget v9, v8, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    int-to-float v10, v9

    sub-float v10, p1, v10

    add-float/2addr v1, v10

    cmpl-float v10, v1, v7

    if-lez v10, :cond_e

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    sub-float/2addr v1, v7

    goto :goto_7

    :cond_e
    cmpg-float v10, v1, v4

    if-gez v10, :cond_f

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    add-float/2addr v1, v7

    :cond_f
    :goto_7
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_11
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {p1, p2}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->setFlexLines(Ljava/util/List;)V

    return-void

    :cond_12
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->setFlexLines(Ljava/util/List;)V

    return-void

    :cond_13
    sub-int/2addr p1, p2

    new-instance p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/HiB/TKC;-><init>()V

    iput p1, p2, Lcom/bytedance/adsdk/ugeno/HiB/TKC;->Jcg:I

    invoke-interface {v0, v5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_14
    :goto_8
    return-void
.end method

.method sP(Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;II)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->Sj(Lcom/bytedance/adsdk/ugeno/HiB/EjP$Sj;IIIIILjava/util/List;)V

    return-void
.end method

.method sP(Landroid/util/SparseIntArray;)Z
    .locals 6

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->getFlexItemCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/HiB/Sj;

    invoke-interface {v4, v3}, Lcom/bytedance/adsdk/ugeno/HiB/Sj;->Sj(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/bytedance/adsdk/ugeno/HiB/sP;

    invoke-interface {v4}, Lcom/bytedance/adsdk/ugeno/HiB/sP;->TKC()I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method
