.class public final Lcom/google/android/material/carousel/i;
.super Lcom/google/android/material/carousel/d;


# static fields
.field private static final d:[I

.field private static final e:[I


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/i;->d:[I

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/i;->e:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/carousel/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/carousel/i;->c:I

    return-void
.end method


# virtual methods
.method g(Lcom/google/android/material/carousel/b;Landroid/view/View;)Lcom/google/android/material/carousel/f;
    .locals 17

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/b;->b()I

    move-result v1

    int-to-float v1, v1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/b;->a()I

    move-result v1

    int-to-float v1, v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$n;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/b;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v4, v2

    :cond_1
    move v11, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/d;->d()F

    move-result v2

    add-float v12, v2, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/d;->c()F

    move-result v2

    add-float/2addr v2, v11

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v13

    add-float v2, v4, v11

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v4, v2

    add-float/2addr v4, v11

    add-float v2, v12, v11

    add-float v3, v13, v11

    invoke-static {v4, v2, v3}, Ld1/a;->a(FFF)F

    move-result v15

    add-float v2, v14, v15

    const/high16 v3, 0x40000000    # 2.0f

    div-float v16, v2, v3

    sget-object v2, Lcom/google/android/material/carousel/i;->d:[I

    mul-float/2addr v3, v12

    cmpg-float v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v3, :cond_2

    new-array v2, v5, [I

    aput v4, v2, v4

    :cond_2
    sget-object v3, Lcom/google/android/material/carousel/i;->e:[I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/b;->c()I

    move-result v6

    if-ne v6, v5, :cond_3

    invoke-static {v2}, Lcom/google/android/material/carousel/d;->a([I)[I

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/material/carousel/d;->a([I)[I

    move-result-object v3

    :cond_3
    move-object v6, v2

    move-object v8, v3

    invoke-static {v8}, Lcom/google/android/material/carousel/e;->i([I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    sub-float v2, v1, v2

    invoke-static {v6}, Lcom/google/android/material/carousel/e;->i([I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v13

    sub-float/2addr v2, v3

    div-float/2addr v2, v14

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v2, v2

    div-float v3, v1, v14

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    sub-int v2, v3, v2

    add-int/2addr v2, v5

    new-array v10, v2, [I

    :goto_0
    if-ge v4, v2, :cond_4

    sub-int v5, v3, v4

    aput v5, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    move v3, v15

    move v4, v12

    move v5, v13

    move/from16 v7, v16

    move v9, v14

    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/a;->c(FFFF[IF[IF[I)Lcom/google/android/material/carousel/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/carousel/a;->e()I

    move-result v3

    iput v3, v0, Lcom/google/android/material/carousel/i;->c:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/b;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/carousel/i;->i(Lcom/google/android/material/carousel/a;I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v2, Lcom/google/android/material/carousel/a;->c:I

    filled-new-array {v3}, [I

    move-result-object v6

    iget v3, v2, Lcom/google/android/material/carousel/a;->d:I

    filled-new-array {v3}, [I

    move-result-object v8

    iget v2, v2, Lcom/google/android/material/carousel/a;->g:I

    filled-new-array {v2}, [I

    move-result-object v10

    move v2, v1

    move v3, v15

    move v4, v12

    move v5, v13

    move/from16 v7, v16

    move v9, v14

    invoke-static/range {v2 .. v10}, Lcom/google/android/material/carousel/a;->c(FFFF[IF[IF[I)Lcom/google/android/material/carousel/a;

    move-result-object v2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/b;->c()I

    move-result v4

    invoke-static {v3, v11, v1, v2, v4}, Lcom/google/android/material/carousel/e;->d(Landroid/content/Context;FFLcom/google/android/material/carousel/a;I)Lcom/google/android/material/carousel/f;

    move-result-object v1

    return-object v1
.end method

.method h(Lcom/google/android/material/carousel/b;I)Z
    .locals 2

    iget v0, p0, Lcom/google/android/material/carousel/i;->c:I

    if-ge p2, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/material/carousel/b;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/i;->c:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/i;->c:I

    if-lt p2, v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/material/carousel/b;->getItemCount()I

    move-result p1

    iget p2, p0, Lcom/google/android/material/carousel/i;->c:I

    if-ge p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method i(Lcom/google/android/material/carousel/a;I)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/material/carousel/a;->e()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 p2, 0x1

    if-lez v0, :cond_1

    iget v1, p1, Lcom/google/android/material/carousel/a;->c:I

    if-gtz v1, :cond_0

    iget v1, p1, Lcom/google/android/material/carousel/a;->d:I

    if-le v1, p2, :cond_1

    :cond_0
    move v1, p2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_4

    iget v2, p1, Lcom/google/android/material/carousel/a;->c:I

    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/google/android/material/carousel/a;->c:I

    goto :goto_1

    :cond_2
    iget v2, p1, Lcom/google/android/material/carousel/a;->d:I

    if-le v2, p2, :cond_3

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/google/android/material/carousel/a;->d:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method
