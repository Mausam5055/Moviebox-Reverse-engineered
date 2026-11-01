.class public final Lcom/transsion/baseui/widget/c;
.super Landroid/text/style/ImageSpan;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Ljava/lang/ref/WeakReference;

.field private d:Landroid/graphics/drawable/Animatable;

.field private e:Landroid/graphics/Rect;

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Z

.field private final i:Lcom/transsion/baseui/widget/c$a;

.field private j:Landroid/view/ViewTreeObserver;

.field private final k:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;II)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput p4, p0, Lcom/transsion/baseui/widget/c;->a:I

    if-eqz p2, :cond_0

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lcom/transsion/baseui/widget/c;->b:Ljava/lang/ref/WeakReference;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/transsion/baseui/widget/c;->f:Landroid/os/Handler;

    new-instance p3, Lcom/transsion/baseui/widget/c$a;

    invoke-direct {p3, p0, p2}, Lcom/transsion/baseui/widget/c$a;-><init>(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)V

    iput-object p3, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    new-instance p4, Lcom/transsion/baseui/widget/a;

    invoke-direct {p4, p0, p2}, Lcom/transsion/baseui/widget/a;-><init>(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)V

    iput-object p4, p0, Lcom/transsion/baseui/widget/c;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    instance-of p2, p1, Landroid/graphics/drawable/Animatable;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/graphics/drawable/Animatable;

    iput-object p2, p0, Lcom/transsion/baseui/widget/c;->d:Landroid/graphics/drawable/Animatable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->l()V

    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->j()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/baseui/widget/c;->i(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/transsion/baseui/widget/c;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baseui/widget/c;->e:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/baseui/widget/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baseui/widget/c;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/baseui/widget/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/baseui/widget/c;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/baseui/widget/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/baseui/widget/c;->h:Z

    return p0
.end method

.method public static final synthetic f(Lcom/transsion/baseui/widget/c;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/widget/c;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private final g(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_2
    return-void
.end method

.method private final h()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final i(Lcom/transsion/baseui/widget/c;Landroid/widget/TextView;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/transsion/baseui/widget/c;->h:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/transsion/baseui/widget/c;->g(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final j()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->h()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/transsion/baseui/widget/c;->j:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method private final l()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->h()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->h()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method private final n()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->j:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/baseui/widget/c;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    iput-object v1, p0, Lcom/transsion/baseui/widget/c;->j:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method private final o(FIIILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getVerticalAlignment()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p4, 0x1

    if-eq p2, p4, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget p4, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p3, p4

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p4

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p3, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p4, p2

    :goto_0
    float-to-int p1, p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    add-int/2addr p5, p3

    invoke-direct {p2, p1, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/transsion/baseui/widget/c;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 11

    move-object v7, p0

    move-object v8, p1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object v1, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    move-object/from16 v9, p9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_0

    return-void

    :cond_0
    iget-boolean v0, v7, Lcom/transsion/baseui/widget/c;->h:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/transsion/baseui/widget/c;->o(FIIILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/transsion/baseui/widget/c;->o(FIIILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V

    instance-of v0, v10, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->h()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->h()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    iget-object v3, v7, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v7, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    invoke-virtual {v10, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    if-eqz v0, :cond_4

    move-object v2, v10

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    move-object v0, v10

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getVerticalAlignment()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int v2, p7, v1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_6
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p7, v1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int v2, v1, v0

    goto :goto_2

    :cond_7
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p8, v0

    :goto_2
    int-to-float v0, v2

    move/from16 v1, p5

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const-string p3, "paint"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "text"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    const-string p3, "getBounds(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-virtual {p0}, Landroid/text/style/DynamicDrawableSpan;->getVerticalAlignment()I

    move-result p3

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    if-eq p3, p4, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    iget p4, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x4

    neg-int p1, p3

    sub-int/2addr p1, p4

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p3, p4

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_0

    :cond_1
    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p3, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_2
    :goto_0
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget p2, p0, Lcom/transsion/baseui/widget/c;->a:I

    add-int/2addr p1, p2

    return p1
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/baseui/widget/c;->h:Z

    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->l()V

    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->j()V

    return-void
.end method

.method public final m()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/baseui/widget/c;->h:Z

    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->g:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/transsion/baseui/widget/c;->f:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/transsion/baseui/widget/c;->g:Ljava/lang/Runnable;

    :cond_0
    invoke-direct {p0}, Lcom/transsion/baseui/widget/c;->n()V

    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->d:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/baseui/widget/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/baseui/widget/c;->i:Lcom/transsion/baseui/widget/c$a;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    return-void
.end method
