.class public Lcom/airbnb/lottie/model/layer/e;
.super Lcom/airbnb/lottie/model/layer/a;


# instance fields
.field private final E:Lm4/d;

.field private final F:Lcom/airbnb/lottie/model/layer/b;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/model/layer/b;Lcom/airbnb/lottie/h;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/e;->F:Lcom/airbnb/lottie/model/layer/b;

    new-instance p3, Lr4/k;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->o()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "__container"

    invoke-direct {p3, v1, p2, v0}, Lr4/k;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lm4/d;

    invoke-direct {p2, p1, p0, p3, p4}, Lm4/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lr4/k;Lcom/airbnb/lottie/h;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/e;->E:Lm4/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lm4/d;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected I(Lp4/d;ILjava/util/List;Lp4/d;)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->E:Lm4/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lm4/d;->d(Lp4/d;ILjava/util/List;Lp4/d;)V

    return-void
.end method

.method public f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/e;->E:Lm4/d;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lm4/d;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->E:Lm4/d;

    invoke-virtual {v0, p1, p2, p3}, Lm4/d;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public w()Lr4/a;
    .locals 1

    invoke-super {p0}, Lcom/airbnb/lottie/model/layer/a;->w()Lr4/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->F:Lcom/airbnb/lottie/model/layer/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/a;->w()Lr4/a;

    move-result-object v0

    return-object v0
.end method

.method public y()Lu4/j;
    .locals 1

    invoke-super {p0}, Lcom/airbnb/lottie/model/layer/a;->y()Lu4/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->F:Lcom/airbnb/lottie/model/layer/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/a;->y()Lu4/j;

    move-result-object v0

    return-object v0
.end method
