.class public abstract Lcom/airbnb/lottie/model/layer/a;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/e;
.implements Ln4/a$b;
.implements Lp4/e;


# instance fields
.field private A:Landroid/graphics/Paint;

.field B:F

.field C:Landroid/graphics/BlurMaskFilter;

.field D:Ll4/a;

.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Matrix;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Paint;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/RectF;

.field private final m:Landroid/graphics/RectF;

.field private final n:Ljava/lang/String;

.field final o:Landroid/graphics/Matrix;

.field final p:Lcom/airbnb/lottie/LottieDrawable;

.field final q:Lcom/airbnb/lottie/model/layer/Layer;

.field private r:Ln4/h;

.field private s:Ln4/d;

.field private t:Lcom/airbnb/lottie/model/layer/a;

.field private u:Lcom/airbnb/lottie/model/layer/a;

.field private v:Ljava/util/List;

.field private final w:Ljava/util/List;

.field public final x:Ln4/p;

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->c:Landroid/graphics/Matrix;

    new-instance v0, Ll4/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ll4/a;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    new-instance v0, Ll4/a;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Ll4/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->e:Landroid/graphics/Paint;

    new-instance v0, Ll4/a;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v3}, Ll4/a;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    new-instance v0, Ll4/a;

    invoke-direct {v0, v1}, Ll4/a;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->g:Landroid/graphics/Paint;

    new-instance v4, Ll4/a;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Ll4/a;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->h:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->l:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->m:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->w:Ljava/util/List;

    iput-boolean v1, p0, Lcom/airbnb/lottie/model/layer/a;->y:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/airbnb/lottie/model/layer/a;->B:F

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#draw"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->n:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->i()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object p1

    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_0
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->x()Lq4/n;

    move-result-object p1

    invoke-virtual {p1}, Lq4/n;->b()Ln4/p;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {p1, p0}, Ln4/p;->b(Ln4/a$b;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->h()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ln4/h;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->h()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ln4/h;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {p1}, Ln4/h;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {p1}, Ln4/h;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->O()V

    return-void
.end method

.method private C(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 10

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->A()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v0}, Ln4/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v4}, Ln4/h;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/model/content/Mask;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v5}, Ln4/h;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln4/a;

    invoke-virtual {v5}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v5, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v5, Lcom/airbnb/lottie/model/layer/a$a;->b:[I

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->a()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/Mask;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->m:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->m:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/a;->m:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/a;->m:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/a;->m:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, p0, Lcom/airbnb/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/a;->m:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    return-void
.end method

.method private D(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 4

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->i()Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->INVERT:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->l:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->l:Landroid/graphics/RectF;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, p2, v3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    return-void
.end method

.method private E()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic F()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->s:Ln4/d;

    invoke-virtual {v0}, Ln4/d;->q()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/layer/a;->N(Z)V

    return-void
.end method

.method private G(F)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->p:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->O()Lcom/airbnb/lottie/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->n()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/Layer;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/PerformanceTracker;->a(Ljava/lang/String;F)V

    return-void
.end method

.method private N(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/a;->y:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/a;->y:Z

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->E()V

    :cond_0
    return-void
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ln4/d;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->f()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ln4/d;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->s:Ln4/d;

    invoke-virtual {v0}, Ln4/a;->m()V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->s:Ln4/d;

    new-instance v2, Ls4/a;

    invoke-direct {v2, p0}, Ls4/a;-><init>(Lcom/airbnb/lottie/model/layer/a;)V

    invoke-virtual {v0, v2}, Ln4/a;->a(Ln4/a$b;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->s:Ln4/d;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/a;->N(Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->s:Ln4/d;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/airbnb/lottie/model/layer/a;->N(Z)V

    :goto_1
    return-void
.end method

.method public static synthetic g(Lcom/airbnb/lottie/model/layer/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->F()V

    return-void
.end method

.method private j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V
    .locals 1

    invoke-virtual {p3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->e:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lv4/l;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lv4/l;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    const p4, 0x40233333    # 2.55f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private m(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->e:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lv4/l;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private n(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lv4/l;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    int-to-float p4, p4

    const v1, 0x40233333    # 2.55f

    mul-float/2addr p4, v1

    float-to-int p4, p4

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object p4, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {p4, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "Layer#saveLayer"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->e:Landroid/graphics/Paint;

    const/16 v3, 0x13

    invoke-static {p1, v0, v2, v3}, Lv4/l;->o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->s(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v1}, Ln4/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v1}, Ln4/h;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/content/Mask;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v2}, Ln4/h;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln4/a;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v3}, Ln4/h;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/a;

    sget-object v4, Lcom/airbnb/lottie/model/layer/a$a;->b:[I

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/Mask;->a()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v5, 0xff

    const/4 v6, 0x1

    if-eq v4, v6, :cond_a

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/Mask;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/airbnb/lottie/model/layer/a;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/airbnb/lottie/model/layer/a;->j(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/Mask;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/airbnb/lottie/model/layer/a;->m(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/airbnb/lottie/model/layer/a;->k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_8
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/content/Mask;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/airbnb/lottie/model/layer/a;->n(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;Ln4/a;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1, p2, v2}, Lcom/airbnb/lottie/model/layer/a;->p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;)V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->q()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p2

    const-string v0, "Layer#restoreLayer"

    if-eqz p2, :cond_d

    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {v0}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_e
    return-void
.end method

.method private p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Ln4/a;)V
    .locals 1

    invoke-virtual {p3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Path;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    invoke-virtual {p3, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private q()Z
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v0}, Ln4/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v2}, Ln4/h;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v2}, Ln4/h;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/content/Mask;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/content/Mask;->a()Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->v:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->u:Lcom/airbnb/lottie/model/layer/a;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->v:Ljava/util/List;

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->v:Ljava/util/List;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->u:Lcom/airbnb/lottie/model/layer/a;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/airbnb/lottie/model/layer/a;->u:Lcom/airbnb/lottie/model/layer/a;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private s(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "Layer#clearLayer"

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v5, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v2, v3

    iget v2, v0, Landroid/graphics/RectF;->right:F

    add-float v7, v2, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v8, v0, v3

    iget-object v9, p0, Lcom/airbnb/lottie/model/layer/a;->h:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_1
    return-void
.end method

.method static u(Lcom/airbnb/lottie/model/layer/b;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;)Lcom/airbnb/lottie/model/layer/a;
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/model/layer/a$a;->a:[I

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/Layer;->g()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown layer type "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/Layer;->g()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/f;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/airbnb/lottie/model/layer/g;

    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/model/layer/g;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/airbnb/lottie/model/layer/d;

    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/model/layer/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/airbnb/lottie/model/layer/c;

    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/model/layer/c;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/airbnb/lottie/model/layer/f;

    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/model/layer/f;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/airbnb/lottie/model/layer/b;

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/airbnb/lottie/h;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/airbnb/lottie/model/layer/b;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Ljava/util/List;Lcom/airbnb/lottie/h;)V

    return-object p0

    :pswitch_5
    new-instance v0, Lcom/airbnb/lottie/model/layer/e;

    invoke-direct {v0, p2, p1, p0, p3}, Lcom/airbnb/lottie/model/layer/e;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/model/layer/b;Lcom/airbnb/lottie/h;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method A()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln4/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method B()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H(Ln4/a;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method I(Lp4/d;ILjava/util/List;Lp4/d;)V
    .locals 0

    return-void
.end method

.method J(Lcom/airbnb/lottie/model/layer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    return-void
.end method

.method K(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Ll4/a;

    invoke-direct {v0}, Ll4/a;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/model/layer/a;->z:Z

    return-void
.end method

.method L(Lcom/airbnb/lottie/model/layer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->u:Lcom/airbnb/lottie/model/layer/a;

    return-void
.end method

.method M(F)V
    .locals 5

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "BaseLayer#setProgress.transform"

    const-string v2, "BaseLayer#setProgress"

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {v0, p1}, Ln4/p;->j(F)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v3, "BaseLayer#setProgress.mask"

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_2
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v4}, Ln4/h;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->r:Ln4/h;

    invoke-virtual {v4}, Ln4/h;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln4/a;

    invoke-virtual {v4, p1}, Ln4/a;->n(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->s:Ln4/d;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v3, "BaseLayer#setProgress.inout"

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->s:Ln4/d;

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v3, "BaseLayer#setProgress.matte"

    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->M(F)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_8
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v3, "BaseLayer#setProgress.animations."

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/a;

    invoke-virtual {v0, p1}, Ln4/a;->n(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    invoke-static {v2}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_b
    return-void
.end method

.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->E()V

    return-void
.end method

.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {v0, p1, p2}, Ln4/p;->c(Ljava/lang/Object;Lw4/c;)Z

    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public d(Lp4/d;ILjava/util/List;Lp4/d;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lp4/d;->a(Ljava/lang/String;)Lp4/d;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lp4/d;->c(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, v1}, Lp4/d;->i(Lp4/e;)Lp4/d;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lp4/d;->h(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lp4/d;->e(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v2, p1, v1, p3, v0}, Lcom/airbnb/lottie/model/layer/a;->I(Lp4/d;ILjava/util/List;Lp4/d;)V

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lp4/d;->g(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, "__container"

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lp4/d;->a(Ljava/lang/String;)Lp4/d;

    move-result-object p4

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lp4/d;->c(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4, p0}, Lp4/d;->i(Lp4/e;)Lp4/d;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lp4/d;->h(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lp4/d;->e(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/layer/a;->I(Lp4/d;ILjava/util/List;Lp4/d;)V

    :cond_4
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->r()V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->v:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->v:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/model/layer/a;

    iget-object p3, p3, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {p3}, Ln4/p;->f()Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->u:Lcom/airbnb/lottie/model/layer/a;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {p1}, Ln4/p;->f()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {p2}, Ln4/p;->f()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 11

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/a;->y:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/model/layer/a;->r()V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v1, "Layer#parentMatrix"

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->v:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/layer/a;

    iget-object v3, v3, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {v3}, Ln4/p;->f()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {v0}, Ln4/p;->h()Ln4/a;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    const/16 v0, 0x64

    :goto_1
    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->B()Z

    move-result v0

    const-string v1, "Layer#drawLayer"

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->A()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->v()Lcom/airbnb/lottie/model/content/LBlendMode;

    move-result-object v0

    sget-object v2, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    if-ne v0, v2, :cond_7

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {v0}, Ln4/p;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_6
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->G(F)V

    return-void

    :cond_7
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v2, "Layer#computeBounds"

    if-eqz v0, :cond_8

    invoke-static {v2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    invoke-direct {p0, v0, p2}, Lcom/airbnb/lottie/model/layer/a;->D(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {v3}, Ln4/p;->f()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v3}, Lcom/airbnb/lottie/model/layer/a;->C(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_9
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/a;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_a
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v2}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_b
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_18

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v3, "Layer#saveLayer"

    if-eqz v0, :cond_c

    invoke-static {v3}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->v()Lcom/airbnb/lottie/model/content/LBlendMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/model/content/LBlendMode;->toNativeBlendMode()Landroidx/core/graphics/BlendModeCompat;

    move-result-object v4

    invoke-static {v0, v4}, Lz0/d;->b(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->d:Landroid/graphics/Paint;

    invoke-static {p1, v0, v4}, Lv4/l;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v3}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_d
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->v()Lcom/airbnb/lottie/model/content/LBlendMode;

    move-result-object v0

    sget-object v4, Lcom/airbnb/lottie/model/content/LBlendMode;->MULTIPLY:Lcom/airbnb/lottie/model/content/LBlendMode;

    if-eq v0, v4, :cond_e

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->s(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_e
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->D:Ll4/a;

    if-nez v0, :cond_f

    new-instance v0, Ll4/a;

    invoke-direct {v0}, Ll4/a;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->D:Ll4/a;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_f
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v4, v2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float v7, v4, v2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float v8, v4, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v9, v0, v2

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/a;->D:Ll4/a;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0, p3}, Lcom/airbnb/lottie/model/layer/a;->t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_11
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->A()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/model/layer/a;->o(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_12
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/a;->B()Z

    move-result v0

    const-string v1, "Layer#restoreLayer"

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    const-string v2, "Layer#drawMatte"

    if-eqz v0, :cond_13

    invoke-static {v2}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/a;->g:Landroid/graphics/Paint;

    const/16 v5, 0x13

    invoke-static {p1, v0, v4, v5}, Lv4/l;->o(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;I)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {v3}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_14
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->s(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->t:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    invoke-static {v2}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_16
    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p2

    if-eqz p2, :cond_17

    invoke-static {v1}, Lcom/airbnb/lottie/d;->b(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lcom/airbnb/lottie/d;->g()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-static {v1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    :cond_18
    iget-boolean p2, p0, Lcom/airbnb/lottie/model/layer/a;->z:Z

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    if-eqz p2, :cond_19

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    const p3, -0x3d7fd

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    const/high16 p3, 0x40800000    # 4.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    const p3, 0x50ebebeb

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/a;->i:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/a;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_19
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->G(F)V

    return-void

    :cond_1a
    :goto_3
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->n:Ljava/lang/String;

    invoke-static {p1}, Lcom/airbnb/lottie/d;->c(Ljava/lang/String;)F

    return-void
.end method

.method public i(Ln4/a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
.end method

.method public v()Lcom/airbnb/lottie/model/content/LBlendMode;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->a()Lcom/airbnb/lottie/model/content/LBlendMode;

    move-result-object v0

    return-object v0
.end method

.method public w()Lr4/a;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->b()Lr4/a;

    move-result-object v0

    return-object v0
.end method

.method public x(F)Landroid/graphics/BlurMaskFilter;
    .locals 3

    iget v0, p0, Lcom/airbnb/lottie/model/layer/a;->B:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/a;->C:Landroid/graphics/BlurMaskFilter;

    return-object p1

    :cond_0
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->C:Landroid/graphics/BlurMaskFilter;

    iput p1, p0, Lcom/airbnb/lottie/model/layer/a;->B:F

    return-object v0
.end method

.method public y()Lu4/j;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/Layer;->d()Lu4/j;

    move-result-object v0

    return-object v0
.end method

.method z()Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->q:Lcom/airbnb/lottie/model/layer/Layer;

    return-object v0
.end method
