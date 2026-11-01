.class public Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Xfermode;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[F

.field private p:[F

.field private q:Landroid/graphics/RectF;

.field private r:Landroid/graphics/RectF;

.field private s:Z

.field private t:Z

.field private u:Landroid/graphics/Path;

.field private v:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->setAttributeSet(Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->u:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    const/16 p1, 0x8

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->r:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->q:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->e:Landroid/graphics/Xfermode;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->h:I

    int-to-float v2, v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    iget v3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->u:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    iget v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    iget v3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->n:I

    iget-object v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->r:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;IILandroid/graphics/RectF;[F)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a(II)V

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->u:Landroid/graphics/Path;

    if-eqz p2, :cond_0

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, p4, p5, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->u:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method private b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    iget v3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->i:I

    int-to-float v3, v3

    aput v3, v1, v0

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    iget v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_1
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    iget v3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->j:I

    int-to-float v3, v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    iget v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    iget v3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->k:I

    int-to-float v3, v3

    aput v3, v1, v0

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    iget v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/16 v0, 0x8

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->o:[F

    iget v3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->l:I

    int-to-float v3, v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    iget v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    aput v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->r:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->f:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->g:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->q:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->f:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->g:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 10

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/dycreator/engine/b;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_c

    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/dycreator/engine/c;

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v5, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView$1;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_9

    const/16 v5, 0xd

    const/4 v6, -0x2

    const-string v7, "wrap"

    const-string v8, "m"

    const-string v9, "f"

    if-eq v4, v5, :cond_5

    const/16 v5, 0xe

    if-eq v4, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_4
    :goto_1
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_3

    :cond_5
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_8
    :goto_2
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_3

    :cond_9
    invoke-interface {p2, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "invisible"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_a
    const-string v5, "gone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->q:Landroid/graphics/RectF;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->f:I

    iget v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v3, v0, v1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v0, v0

    div-float/2addr v3, v0

    iget v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->g:I

    sub-int v1, v5, v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    int-to-float v4, v5

    div-float/2addr v1, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->e:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->u:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->u:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->q:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->p:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->u:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->v:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->s:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeImageView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    :try_start_0
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->f:I

    iput p2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->g:I

    iget-boolean p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->t:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->b()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a()V

    :goto_0
    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->c()V

    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBridgeImageView"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public setAttributeSet(Landroid/util/AttributeSet;)V
    .locals 8

    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/engine/b;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_b

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/dycreator/engine/c;

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v5, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView$1;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/16 v5, 0x8

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->c:I

    iget v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a:I

    iget v6, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->b:I

    iget v7, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->d:I

    invoke-virtual {p0, v5, v6, v4, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a:I

    iget v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->b:I

    iget v6, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->c:I

    iget v7, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->d:I

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :pswitch_2
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->d:I

    iget v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a:I

    iget v6, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->b:I

    iget v7, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->c:I

    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :pswitch_3
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->b:I

    iget v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a:I

    iget v6, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->c:I

    iget v7, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->d:I

    invoke-virtual {p0, v5, v4, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->d:I

    iput v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->c:I

    iput v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->b:I

    iput v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->a:I

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_2

    :pswitch_5
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "fitXY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_2

    :cond_1
    const-string v5, "centerInside"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_2

    :cond_2
    const-string v5, "centerCrop"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "invisible"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_3
    const-string v6, "gone"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v6, Lcom/mbridge/msdk/dycreator/utils/b;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    sget-object v6, Lcom/mbridge/msdk/dycreator/utils/b;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :pswitch_9
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :try_start_0
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    if-eqz v4, :cond_6

    array-length v6, v4

    if-gt v6, v5, :cond_6

    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    :cond_6
    if-eqz v4, :cond_7

    array-length v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    :try_start_1
    aget-object v5, v4, v5

    invoke-static {v5}, Lcom/mbridge/msdk/dycreator/baseview/GradientOrientationUtils;->getOrientation(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v5

    aget-object v6, v4, v2

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    filled-new-array {v6, v4}, [I

    move-result-object v4

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6, v5, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v4

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mbridge/msdk/dycreator/engine/b;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_8
    const-string v5, "@drawable/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    invoke-virtual {v5, v4, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :pswitch_a
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mbridge/msdk/dycreator/engine/b;->a()Lcom/mbridge/msdk/dycreator/engine/b;

    move-result-object v5

    invoke-virtual {v5, v4, p0}, Lcom/mbridge/msdk/dycreator/engine/b;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    :pswitch_b
    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "@+id/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setId(I)V

    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public setBorder(III)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->s:Z

    iput p2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    iput p3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->n:I

    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->h:I

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->h:I

    return-void
.end method

.method public setCustomBorder(IIIIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->s:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->t:Z

    iput p5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->m:I

    iput p6, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->n:I

    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->i:I

    iput p3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->k:I

    iput p2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->j:I

    iput p4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->l:I

    return-void
.end method
