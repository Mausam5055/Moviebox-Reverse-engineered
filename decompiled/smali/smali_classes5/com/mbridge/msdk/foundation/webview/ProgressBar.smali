.class public Lcom/mbridge/msdk/foundation/webview/ProgressBar;
.super Landroid/view/View;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:F

.field private c:F

.field private d:F

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:F

.field private g:J

.field private h:Landroid/os/Handler;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:J

.field private n:F

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/Rect;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:F

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/mbridge/msdk/foundation/webview/ProgressBar$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar$a;-><init>(Lcom/mbridge/msdk/foundation/webview/ProgressBar;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->a:Ljava/lang/Runnable;

    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->g:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->k:Z

    const v1, 0x3f733333    # 0.95f

    iput v1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->n:F

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->o:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->q:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/mbridge/msdk/foundation/webview/ProgressBar$a;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar$a;-><init>(Lcom/mbridge/msdk/foundation/webview/ProgressBar;)V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->a:Ljava/lang/Runnable;

    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->g:J

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->h:Landroid/os/Handler;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->k:Z

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->n:F

    iput-boolean p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->o:Z

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->q:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 6

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->f:F

    iget v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->s:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    div-float v4, v0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v5, v4

    float-to-int v4, v5

    if-gez v4, :cond_0

    move v4, v2

    :cond_0
    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v2, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v2, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->b:F

    iget v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->n:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->j:I

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr p2, v3

    iget v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->s:F

    mul-float/2addr p2, v3

    add-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->j:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lt p2, v0, :cond_9

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    neg-int p2, p2

    iput p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->j:I

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->j:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    iget-boolean p2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    return-void
.end method

.method private getVelocity()F
    .locals 7

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-nez v0, :cond_5

    iget-wide v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->x:J

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    const v3, 0x3d4ccccd    # 0.05f

    if-gez v0, :cond_4

    iget v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->v:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->u:I

    const v1, 0x3e4ccccd    # 0.2f

    if-ne v0, v4, :cond_3

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->l:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->l:Z

    if-eqz v0, :cond_4

    move v3, v1

    :cond_4
    return v3

    :cond_5
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->l:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->k:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->o:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->m:J

    sub-long v2, v0, v2

    :goto_0
    long-to-float v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->d:F

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->m:J

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->x:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->x:J

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->getVelocity()F

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->c:F

    iget v1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->b:F

    iget v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->d:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->b:F

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->n:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->b:F

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->q:Landroid/graphics/Rect;

    iget v1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->b:F

    iget v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->s:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->a:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->d:F

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->a(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->b:F

    return v0
.end method

.method public initResource(Z)V
    .locals 5

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mbridge_cm_highlight"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mbridge_cm_head"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mbridge_cm_tail"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mbridge_cm_end_animation"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->s:F

    return-void
.end method

.method public onThemeChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->initResource(Z)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->o:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->m:J

    :cond_0
    return-void
.end method

.method public setProgress(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->startEndAnimation()V

    :cond_0
    return-void
.end method

.method public setProgressBarListener(Lcom/mbridge/msdk/foundation/webview/c;)V
    .locals 0

    return-void
.end method

.method public setProgressState(I)V
    .locals 4

    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->w:I

    iget p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->v:I

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->startEndAnimation()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->startEndAnimation()V

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->v:I

    iget p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->w:I

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->startEndAnimation()V

    :cond_3
    iput-wide v1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->x:J

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->u:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->v:I

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->w:I

    iput-wide v1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->x:J

    :cond_5
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->m:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->d:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->x:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->f:F

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->b:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->s:F

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->o:Z

    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->u:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->v:I

    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->w:I

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->j:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->j:I

    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->r:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_4
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public startEndAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->t:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->f:F

    :cond_0
    return-void
.end method
