.class public final Ly/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/i$a;
    }
.end annotation


# static fields
.field public static final e:Ly/i$a;

.field private static final f:Ly/i;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly/i$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ly/i;->e:Ly/i$a;

    new-instance v0, Ly/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Ly/i;-><init>(FFFF)V

    sput-object v0, Ly/i;->f:Ly/i;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ly/i;->a:F

    iput p2, p0, Ly/i;->b:F

    iput p3, p0, Ly/i;->c:F

    iput p4, p0, Ly/i;->d:F

    return-void
.end method

.method public static final synthetic a()Ly/i;
    .locals 1

    sget-object v0, Ly/i;->f:Ly/i;

    return-object v0
.end method


# virtual methods
.method public final b(J)Z
    .locals 2

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v0

    iget v1, p0, Ly/i;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v0

    iget v1, p0, Ly/i;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v0

    iget v1, p0, Ly/i;->b:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    iget p2, p0, Ly/i;->d:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Ly/i;->d:F

    return v0
.end method

.method public final d()J
    .locals 4

    iget v0, p0, Ly/i;->a:F

    invoke-virtual {p0}, Ly/i;->k()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Ly/i;->b:F

    invoke-virtual {p0}, Ly/i;->e()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ly/h;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()F
    .locals 2

    iget v0, p0, Ly/i;->d:F

    iget v1, p0, Ly/i;->b:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ly/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ly/i;

    iget v1, p0, Ly/i;->a:F

    iget v3, p1, Ly/i;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ly/i;->b:F

    iget v3, p1, Ly/i;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ly/i;->c:F

    iget v3, p1, Ly/i;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ly/i;->d:F

    iget p1, p1, Ly/i;->d:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final f()F
    .locals 1

    iget v0, p0, Ly/i;->a:F

    return v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Ly/i;->c:F

    return v0
.end method

.method public final h()J
    .locals 2

    invoke-virtual {p0}, Ly/i;->k()F

    move-result v0

    invoke-virtual {p0}, Ly/i;->e()F

    move-result v1

    invoke-static {v0, v1}, Ly/n;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ly/i;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly/i;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly/i;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ly/i;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Ly/i;->b:F

    return v0
.end method

.method public final j()J
    .locals 2

    iget v0, p0, Ly/i;->a:F

    iget v1, p0, Ly/i;->b:F

    invoke-static {v0, v1}, Ly/h;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()F
    .locals 2

    iget v0, p0, Ly/i;->c:F

    iget v1, p0, Ly/i;->a:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public final l(FFFF)Ly/i;
    .locals 2

    new-instance v0, Ly/i;

    iget v1, p0, Ly/i;->a:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Ly/i;->b:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget v1, p0, Ly/i;->c:F

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iget v1, p0, Ly/i;->d:F

    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-direct {v0, p1, p2, p3, p4}, Ly/i;-><init>(FFFF)V

    return-object v0
.end method

.method public final m(Ly/i;)Ly/i;
    .locals 5

    new-instance v0, Ly/i;

    iget v1, p0, Ly/i;->a:F

    iget v2, p1, Ly/i;->a:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Ly/i;->b:F

    iget v3, p1, Ly/i;->b:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Ly/i;->c:F

    iget v4, p1, Ly/i;->c:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Ly/i;->d:F

    iget p1, p1, Ly/i;->d:F

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Ly/i;-><init>(FFFF)V

    return-object v0
.end method

.method public final n()Z
    .locals 2

    iget v0, p0, Ly/i;->a:F

    iget v1, p0, Ly/i;->c:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Ly/i;->b:F

    iget v1, p0, Ly/i;->d:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final o(Ly/i;)Z
    .locals 3

    iget v0, p0, Ly/i;->c:F

    iget v1, p1, Ly/i;->a:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p1, Ly/i;->c:F

    iget v2, p0, Ly/i;->a:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Ly/i;->d:F

    iget v2, p1, Ly/i;->b:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_2

    iget p1, p1, Ly/i;->d:F

    iget v0, p0, Ly/i;->b:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final p(FF)Ly/i;
    .locals 4

    new-instance v0, Ly/i;

    iget v1, p0, Ly/i;->a:F

    add-float/2addr v1, p1

    iget v2, p0, Ly/i;->b:F

    add-float/2addr v2, p2

    iget v3, p0, Ly/i;->c:F

    add-float/2addr v3, p1

    iget p1, p0, Ly/i;->d:F

    add-float/2addr p1, p2

    invoke-direct {v0, v1, v2, v3, p1}, Ly/i;-><init>(FFFF)V

    return-object v0
.end method

.method public final q(J)Ly/i;
    .locals 5

    new-instance v0, Ly/i;

    iget v1, p0, Ly/i;->a:F

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Ly/i;->b:F

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Ly/i;->c:F

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v4

    add-float/2addr v3, v4

    iget v4, p0, Ly/i;->d:F

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ly/i;-><init>(FFFF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rect.fromLTRB("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly/i;->a:F

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ly/i;->b:F

    invoke-static {v3, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ly/i;->c:F

    invoke-static {v3, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly/i;->d:F

    invoke-static {v1, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
