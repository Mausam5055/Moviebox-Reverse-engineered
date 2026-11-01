.class public Lcom/airbnb/lottie/model/layer/g;
.super Lcom/airbnb/lottie/model/layer/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/layer/g$d;
    }
.end annotation


# instance fields
.field private final E:Ljava/lang/StringBuilder;

.field private final F:Landroid/graphics/RectF;

.field private final G:Landroid/graphics/Matrix;

.field private final H:Landroid/graphics/Paint;

.field private final I:Landroid/graphics/Paint;

.field private final J:Ljava/util/Map;

.field private final K:Landroidx/collection/x;

.field private final L:Ljava/util/List;

.field private final M:Ln4/o;

.field private final N:Lcom/airbnb/lottie/LottieDrawable;

.field private final O:Lcom/airbnb/lottie/h;

.field private P:Lcom/airbnb/lottie/model/content/TextRangeUnits;

.field private Q:Ln4/a;

.field private R:Ln4/a;

.field private S:Ln4/a;

.field private T:Ln4/a;

.field private U:Ln4/a;

.field private V:Ln4/a;

.field private W:Ln4/a;

.field private X:Ln4/a;

.field private Y:Ln4/a;

.field private Z:Ln4/a;

.field private a0:Ln4/a;

.field private b0:Ln4/a;

.field private c0:Ln4/a;

.field private d0:Ln4/a;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->E:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->G:Landroid/graphics/Matrix;

    new-instance v0, Lcom/airbnb/lottie/model/layer/g$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/g$a;-><init>(Lcom/airbnb/lottie/model/layer/g;I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    new-instance v0, Lcom/airbnb/lottie/model/layer/g$b;

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/g$b;-><init>(Lcom/airbnb/lottie/model/layer/g;I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->J:Ljava/util/Map;

    new-instance v0, Landroidx/collection/x;

    invoke-direct {v0}, Landroidx/collection/x;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroidx/collection/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->L:Ljava/util/List;

    sget-object v0, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->P:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->c()Lcom/airbnb/lottie/h;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lcom/airbnb/lottie/h;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->t()Lq4/j;

    move-result-object p1

    invoke-virtual {p1}, Lq4/j;->d()Ln4/o;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Ln4/o;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->u()Lq4/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p1, Lq4/k;->a:Lq4/m;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lq4/m;->a:Lq4/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lq4/a;->a()Ln4/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lq4/k;->a:Lq4/m;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lq4/m;->b:Lq4/a;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lq4/a;->a()Ln4/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->S:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->S:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lq4/k;->a:Lq4/m;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lq4/m;->c:Lq4/b;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lq4/b;->d()Ln4/d;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->U:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->U:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p1, Lq4/k;->a:Lq4/m;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lq4/m;->d:Lq4/b;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lq4/b;->d()Ln4/d;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->W:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->W:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p1, Lq4/k;->a:Lq4/m;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lq4/m;->e:Lq4/d;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lq4/d;->a()Ln4/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->Y:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->Y:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p2, p1, Lq4/k;->b:Lq4/l;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lq4/l;->a:Lq4/d;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lq4/d;->a()Ln4/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->b0:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->b0:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object p2, p1, Lq4/k;->b:Lq4/l;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lq4/l;->b:Lq4/d;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lq4/d;->a()Ln4/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->c0:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->c0:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_6
    if-eqz p1, :cond_7

    iget-object p2, p1, Lq4/k;->b:Lq4/l;

    if-eqz p2, :cond_7

    iget-object p2, p2, Lq4/l;->c:Lq4/d;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lq4/d;->a()Ln4/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->d0:Ln4/a;

    invoke-virtual {p2, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->d0:Ln4/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p1, Lq4/k;->b:Lq4/l;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lq4/l;->d:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->P:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    :cond_8
    return-void
.end method

.method private P(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/layer/g;->e0(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroidx/collection/x;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/x;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroidx/collection/x;

    invoke-virtual {p1, v3, v4}, Landroidx/collection/x;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->E:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    if-ge p2, v1, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->E:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->E:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Landroidx/collection/x;

    invoke-virtual {p2, v3, v4, p1}, Landroidx/collection/x;->k(JLjava/lang/Object;)V

    return-object p1
.end method

.method private Q(Lcom/airbnb/lottie/model/DocumentData;II)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->R:Ln4/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Ln4/a;

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/g;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->T:Ln4/a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->S:Ln4/a;

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/g;->d0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->S:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {v0}, Ln4/p;->h()Ln4/a;

    move-result-object v0

    const/16 v1, 0x64

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->x:Ln4/p;

    invoke-virtual {v0}, Ln4/p;->h()Ln4/a;

    move-result-object v0

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->Y:Ln4/a;

    if-eqz v2, :cond_5

    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/g;->d0(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->Y:Ln4/a;

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    mul-float/2addr v0, v1

    int-to-float p2, p2

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->V:Ln4/a;

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->U:Ln4/a;

    if-eqz p2, :cond_7

    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/g;->d0(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->U:Ln4/a;

    invoke-virtual {p2}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    iget p1, p1, Lcom/airbnb/lottie/model/DocumentData;->j:F

    invoke-static {}, Lv4/l;->e()F

    move-result p3

    mul-float/2addr p1, p3

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_3
    return-void
.end method

.method private R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private S(Lp4/c;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V
    .locals 4

    invoke-direct {p0, p3, p6, p5}, Lcom/airbnb/lottie/model/layer/g;->Q(Lcom/airbnb/lottie/model/DocumentData;II)V

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/g;->a0(Lp4/c;)Ljava/util/List;

    move-result-object p1

    const/4 p5, 0x0

    move p6, p5

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p6, v0, :cond_1

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm4/d;

    invoke-virtual {v0}, Lm4/d;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->G:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->G:Landroid/graphics/Matrix;

    iget v2, p3, Lcom/airbnb/lottie/model/DocumentData;->g:F

    neg-float v2, v2

    invoke-static {}, Lv4/l;->e()F

    move-result v3

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->G:Landroid/graphics/Matrix;

    invoke-virtual {v1, p2, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->G:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v1, p3, Lcom/airbnb/lottie/model/DocumentData;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/lottie/model/layer/g;->V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/lottie/model/layer/g;->V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/lottie/model/layer/g;->V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/lottie/model/layer/g;->V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private T(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V
    .locals 0

    invoke-direct {p0, p2, p5, p4}, Lcom/airbnb/lottie/model/layer/g;->Q(Lcom/airbnb/lottie/model/DocumentData;II)V

    iget-boolean p2, p2, Lcom/airbnb/lottie/model/DocumentData;->k:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->R(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private U(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;FII)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/model/layer/g;->P(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    add-int v6, p5, v0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/g;->T(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, p4

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private V(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private W(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Lp4/b;Landroid/graphics/Canvas;FFFI)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v8, p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3}, Lp4/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lp4/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lp4/c;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    move-object v9, p0

    iget-object v2, v9, Lcom/airbnb/lottie/model/layer/g;->O:Lcom/airbnb/lottie/h;

    invoke-virtual {v2}, Lcom/airbnb/lottie/h;->c()Landroidx/collection/y0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/collection/y0;->f(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lp4/c;

    if-nez v10, :cond_0

    move-object v3, p4

    goto :goto_1

    :cond_0
    move-object v1, p0

    move-object v2, v10

    move/from16 v3, p6

    move-object v4, p2

    move-object v5, p4

    move v6, v0

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/airbnb/lottie/model/layer/g;->S(Lp4/c;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;II)V

    invoke-virtual {v10}, Lp4/c;->b()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p6

    invoke-static {}, Lv4/l;->e()F

    move-result v2

    mul-float/2addr v1, v2

    add-float v1, v1, p7

    const/4 v2, 0x0

    move-object v3, p4

    invoke-virtual {p4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v9, p0

    return-void
.end method

.method private X(Lcom/airbnb/lottie/model/DocumentData;Lp4/b;Landroid/graphics/Canvas;I)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct {v7, v9}, Lcom/airbnb/lottie/model/layer/g;->c0(Lp4/b;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v8, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->f0()Lcom/airbnb/lottie/t0;

    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, v7, Lcom/airbnb/lottie/model/layer/g;->Z:Ln4/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, v8, Lcom/airbnb/lottie/model/DocumentData;->c:F

    :goto_0
    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-static {}, Lv4/l;->e()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v2, v7, Lcom/airbnb/lottie/model/layer/g;->I:Landroid/graphics/Paint;

    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v2, v8, Lcom/airbnb/lottie/model/DocumentData;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/g;->X:Ln4/a;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_2

    :cond_2
    iget-object v3, v7, Lcom/airbnb/lottie/model/layer/g;->W:Ln4/a;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {}, Lv4/l;->e()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v10, v2, v0

    invoke-direct {v7, v1}, Lcom/airbnb/lottie/model/layer/g;->b0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v0, -0x1

    move v14, v0

    move v15, v13

    move/from16 v16, v15

    :goto_3
    if-ge v15, v12, :cond_7

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v8, Lcom/airbnb/lottie/model/DocumentData;->m:Landroid/graphics/PointF;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_4
    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :goto_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/g;->g0(Ljava/lang/String;FLp4/b;FFZ)Ljava/util/List;

    move-result-object v6

    move v5, v13

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/airbnb/lottie/model/layer/g$d;

    add-int/lit8 v14, v14, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/model/layer/g$d;->a(Lcom/airbnb/lottie/model/layer/g$d;)F

    move-result v0

    move-object/from16 v4, p3

    invoke-direct {v7, v4, v8, v14, v0}, Lcom/airbnb/lottie/model/layer/g;->f0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/model/layer/g$d;->b(Lcom/airbnb/lottie/model/layer/g$d;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v4, v10

    move/from16 v18, v5

    move/from16 v5, v16

    move-object/from16 v19, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/g;->U(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;FII)V

    goto :goto_7

    :cond_5
    move/from16 v18, v5

    move-object/from16 v19, v6

    :goto_7
    invoke-static/range {v17 .. v17}, Lcom/airbnb/lottie/model/layer/g$d;->b(Lcom/airbnb/lottie/model/layer/g$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v16, v16, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v19

    goto :goto_6

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private Y(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lp4/b;Landroid/graphics/Canvas;I)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/airbnb/lottie/model/layer/g;->Z:Ln4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v10, Lcom/airbnb/lottie/model/DocumentData;->c:F

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    invoke-static/range {p2 .. p2}, Lv4/l;->g(Landroid/graphics/Matrix;)F

    move-result v12

    iget-object v0, v10, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    invoke-direct {v9, v0}, Lcom/airbnb/lottie/model/layer/g;->b0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    iget v0, v10, Lcom/airbnb/lottie/model/DocumentData;->e:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iget-object v1, v9, Lcom/airbnb/lottie/model/layer/g;->X:Ln4/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    add-float/2addr v0, v1

    :cond_1
    move v15, v0

    goto :goto_2

    :cond_2
    iget-object v1, v9, Lcom/airbnb/lottie/model/layer/g;->W:Ln4/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :goto_2
    const/16 v16, 0x0

    const/4 v0, -0x1

    move v7, v0

    move/from16 v8, v16

    :goto_3
    if-ge v8, v14, :cond_6

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, v10, Lcom/airbnb/lottie/model/DocumentData;->m:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_4
    move v2, v0

    goto :goto_5

    :cond_3
    iget v0, v0, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :goto_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move v4, v11

    move v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/layer/g;->g0(Ljava/lang/String;FLp4/b;FFZ)Ljava/util/List;

    move-result-object v6

    move/from16 v5, v16

    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/g$d;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    invoke-static {v0}, Lcom/airbnb/lottie/model/layer/g$d;->a(Lcom/airbnb/lottie/model/layer/g$d;)F

    move-result v1

    move-object/from16 v4, p4

    invoke-direct {v9, v4, v10, v7, v1}, Lcom/airbnb/lottie/model/layer/g;->f0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/airbnb/lottie/model/layer/g$d;->b(Lcom/airbnb/lottie/model/layer/g$d;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v17, v5

    move v5, v12

    move-object/from16 v18, v6

    move v6, v11

    move/from16 v19, v7

    move v7, v15

    move/from16 v20, v8

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/model/layer/g;->W(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Lp4/b;Landroid/graphics/Canvas;FFFI)V

    goto :goto_7

    :cond_4
    move/from16 v17, v5

    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    :goto_7
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v17, 0x1

    move-object/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    goto :goto_6

    :cond_5
    move/from16 v20, v8

    add-int/lit8 v8, v20, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private Z(I)Lcom/airbnb/lottie/model/layer/g$d;
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->L:Ljava/util/List;

    new-instance v2, Lcom/airbnb/lottie/model/layer/g$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/airbnb/lottie/model/layer/g$d;-><init>(Lcom/airbnb/lottie/model/layer/g$a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->L:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/model/layer/g$d;

    return-object p1
.end method

.method private a0(Lp4/c;)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->J:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->J:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lp4/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/k;

    new-instance v5, Lm4/d;

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v7, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lcom/airbnb/lottie/h;

    invoke-direct {v5, v6, p0, v4, v7}, Lm4/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lr4/k;Lcom/airbnb/lottie/h;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->J:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private b0(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string v0, "\r\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u0003"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private c0(Lp4/b;)Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->a0:Ln4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->g0(Lp4/b;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lp4/b;->d()Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private d0(I)Z
    .locals 7

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->M:Ln4/o;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v0, v0, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->b0:Ln4/a;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->c0:Ln4/a;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->c0:Ln4/a;

    invoke-virtual {v3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->b0:Ln4/a;

    invoke-virtual {v3}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/g;->c0:Ln4/a;

    invoke-virtual {v4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/g;->d0:Ln4/a;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/g;->P:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    sget-object v5, Lcom/airbnb/lottie/model/content/TextRangeUnits;->INDEX:Lcom/airbnb/lottie/model/content/TextRangeUnits;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    if-lt p1, v1, :cond_1

    if-ge p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    return v2

    :cond_2
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    int-to-float v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    int-to-float v0, v3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v6

    :cond_4
    :goto_1
    return v2
.end method

.method private e0(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private f0(Landroid/graphics/Canvas;Lcom/airbnb/lottie/model/DocumentData;IF)Z
    .locals 6

    iget-object v0, p2, Lcom/airbnb/lottie/model/DocumentData;->l:Landroid/graphics/PointF;

    iget-object v1, p2, Lcom/airbnb/lottie/model/DocumentData;->m:Landroid/graphics/PointF;

    invoke-static {}, Lv4/l;->e()F

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    iget v4, p2, Lcom/airbnb/lottie/model/DocumentData;->f:F

    mul-float/2addr v4, v2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    :goto_0
    int-to-float p3, p3

    iget v5, p2, Lcom/airbnb/lottie/model/DocumentData;->f:F

    mul-float/2addr p3, v5

    mul-float/2addr p3, v2

    add-float/2addr p3, v4

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieDrawable;->M()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    iget v4, p2, Lcom/airbnb/lottie/model/DocumentData;->c:F

    add-float/2addr v2, v4

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/PointF;->x:F

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    sget-object v1, Lcom/airbnb/lottie/model/layer/g$c;->a:[I

    iget-object p2, p2, Lcom/airbnb/lottie/model/DocumentData;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    goto :goto_3

    :cond_4
    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v3, p2

    add-float/2addr v0, v3

    div-float/2addr p4, p2

    sub-float/2addr v0, p4

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_5
    add-float/2addr v0, v3

    sub-float/2addr v0, p4

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    return v1
.end method

.method private g0(Ljava/lang/String;FLp4/b;FFZ)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v6, v4

    move v7, v6

    move v8, v7

    move v10, v8

    move v5, v3

    move v9, v5

    move v11, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eqz p6, :cond_1

    invoke-virtual/range {p3 .. p3}, Lp4/b;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lp4/b;->c()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lp4/c;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v13

    iget-object v14, v0, Lcom/airbnb/lottie/model/layer/g;->O:Lcom/airbnb/lottie/h;

    invoke-virtual {v14}, Lcom/airbnb/lottie/h;->c()Landroidx/collection/y0;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroidx/collection/y0;->f(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lp4/c;

    if-nez v13, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v13}, Lp4/c;->b()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v13, v13, p4

    invoke-static {}, Lv4/l;->e()F

    move-result v14

    mul-float/2addr v13, v14

    :goto_1
    add-float v13, v13, p5

    goto :goto_2

    :cond_1
    iget-object v13, v0, Lcom/airbnb/lottie/model/layer/g;->H:Landroid/graphics/Paint;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    goto :goto_1

    :goto_2
    const/16 v14, 0x20

    if-ne v12, v14, :cond_2

    const/4 v8, 0x1

    move v11, v13

    goto :goto_3

    :cond_2
    if-eqz v8, :cond_3

    move v8, v2

    move v10, v4

    move v9, v13

    goto :goto_3

    :cond_3
    add-float/2addr v9, v13

    :goto_3
    add-float/2addr v5, v13

    cmpl-float v15, p2, v3

    if-lez v15, :cond_6

    cmpl-float v15, v5, p2

    if-ltz v15, :cond_6

    if-ne v12, v14, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    invoke-direct {v0, v6}, Lcom/airbnb/lottie/model/layer/g;->Z(I)Lcom/airbnb/lottie/model/layer/g$d;

    move-result-object v12

    if-ne v10, v7, :cond_5

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v10, v7

    int-to-float v7, v10

    mul-float/2addr v7, v11

    sub-float/2addr v5, v13

    sub-float/2addr v5, v7

    invoke-virtual {v12, v9, v5}, Lcom/airbnb/lottie/model/layer/g$d;->c(Ljava/lang/String;F)V

    move v7, v4

    move v10, v7

    move v5, v13

    move v9, v5

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v1, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v7, v14

    int-to-float v7, v7

    mul-float/2addr v7, v11

    sub-float/2addr v5, v9

    sub-float/2addr v5, v7

    sub-float/2addr v5, v11

    invoke-virtual {v12, v13, v5}, Lcom/airbnb/lottie/model/layer/g$d;->c(Ljava/lang/String;F)V

    move v5, v9

    move v7, v10

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    cmpl-float v3, v5, v3

    if-lez v3, :cond_8

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v0, v6}, Lcom/airbnb/lottie/model/layer/g;->Z(I)Lcom/airbnb/lottie/model/layer/g$d;

    move-result-object v3

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v5}, Lcom/airbnb/lottie/model/layer/g$d;->c(Ljava/lang/String;F)V

    :cond_8
    iget-object v1, v0, Lcom/airbnb/lottie/model/layer/g;->L:Ljava/util/List;

    invoke-interface {v1, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lw4/c;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->b(Ljava/lang/Object;Lw4/c;)V

    sget-object v0, Lcom/airbnb/lottie/p0;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->R:Ln4/a;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_0
    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->R:Ln4/a;

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->R:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->R:Ln4/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/airbnb/lottie/p0;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->T:Ln4/a;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_3
    if-nez p2, :cond_4

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->T:Ln4/a;

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->T:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->T:Ln4/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/airbnb/lottie/p0;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->V:Ln4/a;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_6
    if-nez p2, :cond_7

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->V:Ln4/a;

    goto/16 :goto_0

    :cond_7
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->V:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->V:Ln4/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/airbnb/lottie/p0;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->X:Ln4/a;

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_9
    if-nez p2, :cond_a

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->X:Ln4/a;

    goto :goto_0

    :cond_a
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->X:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->X:Ln4/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto :goto_0

    :cond_b
    sget-object v0, Lcom/airbnb/lottie/p0;->F:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->Z:Ln4/a;

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_c
    if-nez p2, :cond_d

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->Z:Ln4/a;

    goto :goto_0

    :cond_d
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->Z:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->Z:Ln4/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto :goto_0

    :cond_e
    sget-object v0, Lcom/airbnb/lottie/p0;->M:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->a0:Ln4/a;

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Ln4/a;)V

    :cond_f
    if-nez p2, :cond_10

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->a0:Ln4/a;

    goto :goto_0

    :cond_10
    new-instance p1, Ln4/q;

    invoke-direct {p1, p2}, Ln4/q;-><init>(Lw4/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->a0:Ln4/a;

    invoke-virtual {p1, p0}, Ln4/a;->a(Ln4/a$b;)V

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->a0:Ln4/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Ln4/a;)V

    goto :goto_0

    :cond_11
    sget-object v0, Lcom/airbnb/lottie/p0;->O:Ljava/lang/CharSequence;

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Ln4/o;

    invoke-virtual {p1, p2}, Ln4/o;->r(Lw4/c;)V

    :cond_12
    :goto_0
    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lcom/airbnb/lottie/h;

    invoke-virtual {p2}, Lcom/airbnb/lottie/h;->b()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lcom/airbnb/lottie/h;

    invoke-virtual {p3}, Lcom/airbnb/lottie/h;->b()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->M:Ln4/o;

    invoke-virtual {v0}, Ln4/a;->h()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lcom/airbnb/lottie/h;

    invoke-virtual {v0}, Lcom/airbnb/lottie/h;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, v2, Lcom/airbnb/lottie/model/DocumentData;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lp4/b;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, p3, v0}, Lcom/airbnb/lottie/model/layer/g;->Q(Lcom/airbnb/lottie/model/DocumentData;II)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->C1()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/airbnb/lottie/model/layer/g;->Y(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lp4/b;Landroid/graphics/Canvas;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v4, p1, p3}, Lcom/airbnb/lottie/model/layer/g;->X(Lcom/airbnb/lottie/model/DocumentData;Lp4/b;Landroid/graphics/Canvas;I)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
