.class public Lcom/avery/subtitle/widget/SimpleSubtitleView;
.super Landroidx/appcompat/widget/AppCompatTextView;

# interfaces
.implements Lcom/avery/subtitle/b;
.implements Lcom/avery/subtitle/b$a;
.implements Lcom/avery/subtitle/b$b;


# instance fields
.field private a:Lcom/avery/subtitle/b;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/avery/subtitle/widget/BgBubbleDrawable;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->f:Z

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->g:I

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->h:I

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->i:I

    invoke-direct {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->f:Z

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->g:I

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->h:I

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->i:I

    invoke-direct {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->f:Z

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->g:I

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->h:I

    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->i:I

    invoke-direct {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/avery/subtitle/DefaultSubtitleEngine;

    invoke-direct {v0}, Lcom/avery/subtitle/DefaultSubtitleEngine;-><init>()V

    iput-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p0}, Lcom/avery/subtitle/b;->setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p0}, Lcom/avery/subtitle/b;->setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->d(II)V

    return-void
.end method

.method private d(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e(IIII)V

    return-void
.end method

.method private e(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->f:Z

    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p3, p3

    int-to-float p2, p2

    int-to-float p4, p4

    invoke-direct {v0, p1, p3, p2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Lcom/avery/subtitle/widget/BgBubbleDrawable$b;

    invoke-direct {p1}, Lcom/avery/subtitle/widget/BgBubbleDrawable$b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/avery/subtitle/widget/BgBubbleDrawable$b;->u(Landroid/graphics/RectF;)Lcom/avery/subtitle/widget/BgBubbleDrawable$b;

    move-result-object p1

    sget-object p2, Lcom/avery/subtitle/widget/BgBubbleDrawable$BubbleType;->COLOR:Lcom/avery/subtitle/widget/BgBubbleDrawable$BubbleType;

    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/BgBubbleDrawable$b;->s(Lcom/avery/subtitle/widget/BgBubbleDrawable$BubbleType;)Lcom/avery/subtitle/widget/BgBubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->i:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/BgBubbleDrawable$b;->p(F)Lcom/avery/subtitle/widget/BgBubbleDrawable$b;

    move-result-object p1

    sget-object p2, Lcom/avery/subtitle/widget/BgBubbleDrawable$ArrowLocation;->NONE:Lcom/avery/subtitle/widget/BgBubbleDrawable$ArrowLocation;

    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/BgBubbleDrawable$b;->q(Lcom/avery/subtitle/widget/BgBubbleDrawable$ArrowLocation;)Lcom/avery/subtitle/widget/BgBubbleDrawable$b;

    move-result-object p1

    iget p2, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->g:I

    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/BgBubbleDrawable$b;->r(I)Lcom/avery/subtitle/widget/BgBubbleDrawable$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/avery/subtitle/widget/BgBubbleDrawable$b;->t()Lcom/avery/subtitle/widget/BgBubbleDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->d:Lcom/avery/subtitle/widget/BgBubbleDrawable;

    iget p2, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->h:I

    invoke-virtual {p1, p2}, Lcom/avery/subtitle/widget/BgBubbleDrawable;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public closeBg()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->f:Z

    iput v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->g:I

    iput v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->h:I

    iput v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0}, Lcom/avery/subtitle/b;->destroy()V

    return-void
.end method

.method public initSubtitle(Li5/a;Z)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p1, p2}, Lcom/avery/subtitle/b;->initSubtitle(Li5/a;Z)V

    return-void
.end method

.method public layout(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    invoke-direct {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->d:Lcom/avery/subtitle/widget/BgBubbleDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/avery/subtitle/widget/BgBubbleDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onRefreshSubtitle()V
    .locals 0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->refreshImmediately()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->d(II)V

    :cond_0
    return-void
.end method

.method public onSubtitleChanged(Lk5/b;)V
    .locals 3
    .param p1    # Lk5/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p1, Lk5/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->b:Ljava/lang/String;

    iget-object v1, p1, Lk5/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lk5/b;->d:Ljava/lang/String;

    const-string v1, "\\N"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lk5/b;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->b:Ljava/lang/String;

    invoke-static {v0}, Ll5/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lk5/b;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lk5/b;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onSubtitlePrepared()V
    .locals 0

    invoke-virtual {p0}, Lcom/avery/subtitle/widget/SimpleSubtitleView;->start()V

    return-void
.end method

.method public openBg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0}, Lcom/avery/subtitle/b;->pause()V

    return-void
.end method

.method public refreshImmediately()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0}, Lcom/avery/subtitle/b;->refreshImmediately()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0}, Lcom/avery/subtitle/b;->reset()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0}, Lcom/avery/subtitle/b;->resume()V

    return-void
.end method

.method public selectSubtitle(Ljava/lang/String;Ljava/lang/String;Li5/b;)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/avery/subtitle/b;->selectSubtitle(Ljava/lang/String;Ljava/lang/String;Li5/b;)V

    return-void
.end method

.method public setBgAlpha(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->h:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->g:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setBgdRadius(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setDefaultSubtitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p1}, Lcom/avery/subtitle/b;->setDefaultSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p1}, Lcom/avery/subtitle/b;->setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V

    return-void
.end method

.method public setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p1}, Lcom/avery/subtitle/b;->setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V

    return-void
.end method

.method public setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p1, p2}, Lcom/avery/subtitle/b;->setSubtitlePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0}, Lcom/avery/subtitle/b;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0}, Lcom/avery/subtitle/b;->stop()V

    return-void
.end method

.method public subtitleDelay(J)V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->a:Lcom/avery/subtitle/b;

    invoke-interface {v0, p1, p2}, Lcom/avery/subtitle/b;->subtitleDelay(J)V

    return-void
.end method

.method public turnOff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/avery/subtitle/widget/SimpleSubtitleView;->c:Z

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
