.class public Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;
.super Landroid/view/View;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:J

.field private d:J

.field private e:Le7/e;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

.field private i:Landroid/graphics/Bitmap;

.field private j:I

.field private final k:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p2, 0x6

    iput-wide p2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->d:J

    const-string p2, "5s"

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->g:Ljava/lang/String;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/cloud/hisavana/sdk/R$dimen;->ad_skip_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/16 p1, 0xd

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->f:I

    :goto_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;I)I
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->j:I

    return p1
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->h:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    return-object p0
.end method

.method private d()V
    .locals 7

    new-instance v6, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c:J

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;JJ)V

    iput-object v6, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->e:Le7/e;

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private getBg()Landroid/graphics/Bitmap;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$drawable;->ad_skip_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->e:Le7/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le7/e;->d()V

    :cond_0
    return-void
.end method

.method public changeFinishMode()V
    .locals 1

    const-string v0, "X"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->g:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getRemainder()J
    .locals 2

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->j:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSupposeFinishTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->d:J

    return-wide v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->e:Le7/e;

    invoke-virtual {v0}, Le7/e;->g()Le7/e;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->h:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;->onStart()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->h:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;->onClick()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->e:Le7/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le7/e;->d()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->getBg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->i:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->k:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    float-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->g:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public setCountDownTimerListener(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->h:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    return-void
.end method

.method public setStartTime(I)V
    .locals 4

    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    const-wide/16 v2, 0x190

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->d:J

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->j:I

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->d()V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->e:Le7/e;

    invoke-virtual {v0}, Le7/e;->g()Le7/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->d:J

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->h:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;->onStart()V

    :cond_0
    return-void
.end method
