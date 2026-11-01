.class abstract Landroidx/core/view/WindowInsetsAnimationCompat$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private b:F

.field private final c:Landroid/view/animation/Interpolator;

.field private final d:J

.field private e:F


# direct methods
.method constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->e:F

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->a:I

    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->c:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->d:J

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->e:F

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->d:J

    return-wide v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->b:F

    return v0
.end method

.method public d()F
    .locals 2

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->b:F

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->b:F

    return v0
.end method

.method public e()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->a:I

    return v0
.end method

.method public g(F)V
    .locals 0

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->e:F

    return-void
.end method

.method public h(F)V
    .locals 0

    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->b:F

    return-void
.end method
