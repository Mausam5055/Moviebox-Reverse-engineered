.class public Lcom/transsion/ninegridview/NineGridViewWrapper;
.super Lcom/google/android/material/imageview/ShapeableImageView;


# instance fields
.field private A:Landroid/text/TextPaint;

.field private B:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:F

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/ninegridview/NineGridViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ninegridview/NineGridViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/imageview/ShapeableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->w:I

    const/high16 p1, -0x78000000

    iput p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->x:I

    const/high16 p1, 0x420c0000    # 35.0f

    iput p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->y:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->z:I

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->B:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 p3, 0x2

    invoke-static {p3, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->y:F

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    iget p2, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->y:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    iget p2, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->z:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getMaskColor()I
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->x:I

    return v0
.end method

.method public getMoreNum()I
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->w:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->z:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->y:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->w:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->x:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->B:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setMaskColor(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->x:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMoreNum(I)V
    .locals 2

    iput p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->B:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iput p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->z:I

    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iput p1, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->y:F

    iget-object v0, p0, Lcom/transsion/ninegridview/NineGridViewWrapper;->A:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
