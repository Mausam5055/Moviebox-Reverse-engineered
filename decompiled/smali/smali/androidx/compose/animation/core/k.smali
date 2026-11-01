.class public final Landroidx/compose/animation/core/k;
.super Landroidx/compose/animation/core/o;


# instance fields
.field private a:F

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/o;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/compose/animation/core/k;->a:F

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/animation/core/k;->b:I

    return-void
.end method


# virtual methods
.method public a(I)F
    .locals 0

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/compose/animation/core/k;->a:F

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroidx/compose/animation/core/k;->b:I

    return v0
.end method

.method public bridge synthetic c()Landroidx/compose/animation/core/o;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/animation/core/k;->g()Landroidx/compose/animation/core/k;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/animation/core/k;->a:F

    return-void
.end method

.method public e(IF)V
    .locals 0

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/compose/animation/core/k;->a:F

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/animation/core/k;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/core/k;

    iget p1, p1, Landroidx/compose/animation/core/k;->a:F

    iget v0, p0, Landroidx/compose/animation/core/k;->a:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Landroidx/compose/animation/core/k;->a:F

    return v0
.end method

.method public g()Landroidx/compose/animation/core/k;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/animation/core/k;-><init>(F)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/animation/core/k;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimationVector1D: value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/animation/core/k;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
