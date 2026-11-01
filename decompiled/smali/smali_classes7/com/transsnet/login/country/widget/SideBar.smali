.class public Lcom/transsnet/login/country/widget/SideBar;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/login/country/widget/SideBar$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/text/TextPaint;

.field private c:I

.field private d:Lcom/transsnet/login/country/widget/SideBar$a;

.field private e:F

.field private f:I

.field private g:I

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    iput p2, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsnet/login/R$dimen;->side_bar_txt_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    iget v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    iget v4, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    iget v5, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/tn/lib/widget/R$color;->text_01:I

    invoke-static {v5, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1
    iget v3, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    iput v3, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    :cond_2
    iget v3, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    add-int/lit8 v4, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/transsnet/login/country/widget/SideBar;->h:F

    iget-object v5, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    move v1, v4

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    iget-object v2, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    if-eq v1, p1, :cond_3

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->d:Lcom/transsnet/login/country/widget/SideBar$a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsnet/login/country/widget/SideBar$a;->g(Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/transsnet/login/country/widget/SideBar;->b:Landroid/text/TextPaint;

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsnet/login/country/widget/SideBar;->a(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIndexs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/login/country/widget/SideBar;->a:Ljava/util/List;

    iget v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsnet/login/R$dimen;->side_bar_txt_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->text_03:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->g:I

    iget v0, p0, Lcom/transsnet/login/country/widget/SideBar;->f:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/login/country/widget/SideBar;->e:F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScrollerListener(Lcom/transsnet/login/country/widget/SideBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/country/widget/SideBar;->d:Lcom/transsnet/login/country/widget/SideBar$a;

    return-void
.end method

.method public updateIndex(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/login/country/widget/SideBar;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
