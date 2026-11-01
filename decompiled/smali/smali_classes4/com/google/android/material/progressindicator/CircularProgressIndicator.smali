.class public Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/BaseProgressIndicator<",
        "Lcom/google/android/material/progressindicator/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEF_STYLE_RES:I

.field public static final INDICATOR_DIRECTION_CLOCKWISE:I = 0x0

.field public static final INDICATOR_DIRECTION_COUNTERCLOCKWISE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CircularProgressIndicator:I

    sput v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/google/android/material/R$attr;->circularProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->r()V

    return-void
.end method

.method private r()V
    .locals 3

    new-instance v0, Lcom/google/android/material/progressindicator/c;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    check-cast v1, Lcom/google/android/material/progressindicator/e;

    invoke-direct {v0, v1}, Lcom/google/android/material/progressindicator/c;-><init>(Lcom/google/android/material/progressindicator/e;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    check-cast v2, Lcom/google/android/material/progressindicator/e;

    invoke-static {v1, v2, v0}, Lcom/google/android/material/progressindicator/j;->t(Landroid/content/Context;Lcom/google/android/material/progressindicator/e;Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/j;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    check-cast v2, Lcom/google/android/material/progressindicator/e;

    invoke-static {v1, v2, v0}, Lcom/google/android/material/progressindicator/f;->v(Landroid/content/Context;Lcom/google/android/material/progressindicator/e;Lcom/google/android/material/progressindicator/c;)Lcom/google/android/material/progressindicator/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getIndicatorDirection()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    iget v0, v0, Lcom/google/android/material/progressindicator/e;->j:I

    return v0
.end method

.method public getIndicatorInset()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    iget v0, v0, Lcom/google/android/material/progressindicator/e;->i:I

    return v0
.end method

.method public getIndicatorSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    iget v0, v0, Lcom/google/android/material/progressindicator/e;->h:I

    return v0
.end method

.method bridge synthetic i(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->q(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/e;

    move-result-object p1

    return-object p1
.end method

.method q(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/e;
    .locals 1

    new-instance v0, Lcom/google/android/material/progressindicator/e;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/progressindicator/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public setIndicatorDirection(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    iput p1, v0, Lcom/google/android/material/progressindicator/e;->j:I

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    return-void
.end method

.method public setIndicatorInset(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/progressindicator/e;

    iget v1, v1, Lcom/google/android/material/progressindicator/e;->i:I

    if-eq v1, p1, :cond_0

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    iput p1, v0, Lcom/google/android/material/progressindicator/e;->i:I

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->getTrackThickness()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/progressindicator/e;

    iget v1, v1, Lcom/google/android/material/progressindicator/e;->h:I

    if-eq v1, p1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/progressindicator/e;

    iput p1, v1, Lcom/google/android/material/progressindicator/e;->h:I

    check-cast v0, Lcom/google/android/material/progressindicator/e;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/b;->e()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackThickness(I)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->a:Lcom/google/android/material/progressindicator/b;

    check-cast p1, Lcom/google/android/material/progressindicator/e;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/b;->e()V

    return-void
.end method
