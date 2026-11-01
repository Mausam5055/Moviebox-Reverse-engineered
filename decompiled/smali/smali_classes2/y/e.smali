.class public final Ly/e;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ly/e;->a:F

    iput p2, p0, Ly/e;->b:F

    iput p3, p0, Ly/e;->c:F

    iput p4, p0, Ly/e;->d:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Ly/e;->d:F

    return v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Ly/e;->a:F

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Ly/e;->c:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Ly/e;->b:F

    return v0
.end method

.method public final e(FFFF)V
    .locals 1

    iget v0, p0, Ly/e;->a:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Ly/e;->a:F

    iget p1, p0, Ly/e;->b:F

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Ly/e;->b:F

    iget p1, p0, Ly/e;->c:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Ly/e;->c:F

    iget p1, p0, Ly/e;->d:F

    invoke-static {p4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Ly/e;->d:F

    return-void
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Ly/e;->a:F

    iget v1, p0, Ly/e;->c:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Ly/e;->b:F

    iget v1, p0, Ly/e;->d:F

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

.method public final g(FFFF)V
    .locals 0

    iput p1, p0, Ly/e;->a:F

    iput p2, p0, Ly/e;->b:F

    iput p3, p0, Ly/e;->c:F

    iput p4, p0, Ly/e;->d:F

    return-void
.end method

.method public final h(F)V
    .locals 0

    iput p1, p0, Ly/e;->d:F

    return-void
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Ly/e;->a:F

    return-void
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, Ly/e;->c:F

    return-void
.end method

.method public final k(F)V
    .locals 0

    iput p1, p0, Ly/e;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MutableRect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly/e;->a:F

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ly/e;->b:F

    invoke-static {v3, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ly/e;->c:F

    invoke-static {v3, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly/e;->d:F

    invoke-static {v1, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
