.class public Lqh/a;
.super Landroid/text/style/ReplacementSpan;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/ref/WeakReference;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:F

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIFIZ)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    iput-object p1, p0, Lqh/a;->c:Landroid/content/Context;

    iput p2, p0, Lqh/a;->b:I

    iput p4, p0, Lqh/a;->e:I

    iput p3, p0, Lqh/a;->f:I

    int-to-float p2, p6

    invoke-static {p1, p2}, Lqh/a;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lqh/a;->g:I

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lqh/a;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lqh/a;->i:I

    invoke-static {p1, p2}, Lqh/a;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lqh/a;->j:I

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lqh/a;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lqh/a;->h:I

    iput p5, p0, Lqh/a;->k:F

    iput-boolean p7, p0, Lqh/a;->l:Z

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 1

    sget-object v0, Loh/h;->a:Loh/h;

    invoke-virtual {v0, p0, p1}, Loh/h;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method private b()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lqh/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lqh/a;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lqh/a;->d:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v0
.end method

.method private d()I
    .locals 1

    invoke-direct {p0}, Lqh/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public c()Landroid/graphics/drawable/Drawable;
    .locals 6

    iget-object v0, p0, Lqh/a;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lqh/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lqh/a;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lqh/a;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v4, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-object v2, v4

    goto :goto_1

    :goto_0
    throw v0

    :cond_0
    :try_start_2
    iget v0, p0, Lqh/a;->b:I

    const/16 v3, -0x6f

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lqh/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Lqh/a;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lqh/a;->f:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :goto_1
    move-object v4, v2

    :goto_2
    return-object v4
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p9

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getColor()I

    move-result v13

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    iget v0, v6, Lqh/a;->e:I

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, v6, Lqh/a;->l:Z

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eqz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    if-eqz v0, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lqh/a;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v1, v7

    add-float v2, p5, v1

    int-to-float v0, v0

    add-float v0, p5, v0

    int-to-float v3, v8

    sub-float v3, v0, v3

    new-instance v4, Landroid/graphics/RectF;

    iget v5, v6, Lqh/a;->i:I

    add-int v5, p6, v5

    int-to-float v5, v5

    iget v7, v6, Lqh/a;->j:I

    sub-int v7, p8, v7

    int-to-float v7, v7

    invoke-direct {v4, v2, v5, v3, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, v6, Lqh/a;->h:I

    int-to-float v3, v2

    int-to-float v2, v2

    invoke-virtual {v14, v4, v3, v2, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v2, v6, Lqh/a;->f:I

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v6, Lqh/a;->k:F

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v6, Lqh/a;->i:I

    iget v3, v6, Lqh/a;->j:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p7, v2

    iget v3, v6, Lqh/a;->g:I

    int-to-float v3, v3

    add-float v11, p5, v3

    int-to-float v2, v2

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move v3, v12

    move v12, v2

    move v2, v13

    move-object/from16 v13, p9

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct/range {p0 .. p0}, Lqh/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int v3, p7, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v4, v6, Lqh/a;->g:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-direct/range {p0 .. p0}, Lqh/a;->d()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float/2addr v0, v1

    int-to-float v1, v3

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public e(Landroid/graphics/Paint;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3

    iget v0, p0, Lqh/a;->g:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lqh/a;->d()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, p2, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr v0, p2

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p2

    iget v1, p0, Lqh/a;->k:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p1, p3, v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p3

    float-to-int p3, p3

    add-int/2addr v0, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p5

    iget v0, p0, Lqh/a;->k:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p2

    float-to-int p2, p2

    iget p3, p0, Lqh/a;->g:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    invoke-direct {p0}, Lqh/a;->d()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    return p2
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    iget v0, p0, Lqh/a;->k:F

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    iget v0, p0, Lqh/a;->k:F

    iget v1, p1, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
