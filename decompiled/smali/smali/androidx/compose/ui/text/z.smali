.class public final Landroidx/compose/ui/text/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/text/y;

.field private final b:Landroidx/compose/ui/text/MultiParagraph;

.field private final c:J

.field private final d:F

.field private final e:F

.field private final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/y;Landroidx/compose/ui/text/MultiParagraph;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/z;->a:Landroidx/compose/ui/text/y;

    iput-object p2, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    iput-wide p3, p0, Landroidx/compose/ui/text/z;->c:J

    invoke-virtual {p2}, Landroidx/compose/ui/text/MultiParagraph;->g()F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/z;->d:F

    invoke-virtual {p2}, Landroidx/compose/ui/text/MultiParagraph;->j()F

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/z;->e:F

    invoke-virtual {p2}, Landroidx/compose/ui/text/MultiParagraph;->v()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/z;->f:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/y;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/z;-><init>(Landroidx/compose/ui/text/y;Landroidx/compose/ui/text/MultiParagraph;J)V

    return-void
.end method

.method public static synthetic b(Landroidx/compose/ui/text/z;Landroidx/compose/ui/text/y;JILjava/lang/Object;)Landroidx/compose/ui/text/z;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/text/z;->a:Landroidx/compose/ui/text/y;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Landroidx/compose/ui/text/z;->c:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/z;->a(Landroidx/compose/ui/text/y;J)Landroidx/compose/ui/text/z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroidx/compose/ui/text/z;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/z;->n(IZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/text/y;J)Landroidx/compose/ui/text/z;
    .locals 7

    new-instance v6, Landroidx/compose/ui/text/z;

    iget-object v2, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/z;-><init>(Landroidx/compose/ui/text/y;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public final c(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->c(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)Ly/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->d(I)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Ly/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->e(I)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/z;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/z;->a:Landroidx/compose/ui/text/y;

    check-cast p1, Landroidx/compose/ui/text/z;

    iget-object v3, p1, Landroidx/compose/ui/text/z;->a:Landroidx/compose/ui/text/y;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    iget-object v3, p1, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/text/z;->c:J

    iget-wide v5, p1, Landroidx/compose/ui/text/z;->c:J

    invoke-static {v3, v4, v5, v6}, Lo0/t;->e(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/text/z;->d:F

    iget v3, p1, Landroidx/compose/ui/text/z;->d:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_6

    iget v1, p0, Landroidx/compose/ui/text/z;->e:F

    iget v3, p1, Landroidx/compose/ui/text/z;->e:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/compose/ui/text/z;->f:Ljava/util/List;

    iget-object p1, p1, Landroidx/compose/ui/text/z;->f:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    return v2
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/compose/ui/text/z;->c:J

    invoke-static {v0, v1}, Lo0/t;->f(J)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->h()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

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

.method public final g()Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/z;->c:J

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v1}, Landroidx/compose/ui/text/MultiParagraph;->w()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/z;->d:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/z;->a:Landroidx/compose/ui/text/y;

    invoke-virtual {v0}, Landroidx/compose/ui/text/y;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/text/z;->c:J

    invoke-static {v1, v2}, Lo0/t;->h(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/z;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/text/z;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/text/z;->f:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/text/z;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/z;->f()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final j()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/z;->e:F

    return v0
.end method

.method public final k()Landroidx/compose/ui/text/y;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->a:Landroidx/compose/ui/text/y;

    return-object v0
.end method

.method public final l(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->k(I)F

    move-result p1

    return p1
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->l()I

    move-result v0

    return v0
.end method

.method public final n(IZ)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/text/MultiParagraph;->m(IZ)I

    move-result p1

    return p1
.end method

.method public final p(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->n(I)I

    move-result p1

    return p1
.end method

.method public final q(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->o(F)I

    move-result p1

    return p1
.end method

.method public final r(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->p(I)F

    move-result p1

    return p1
.end method

.method public final s(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->q(I)F

    move-result p1

    return p1
.end method

.method public final t(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->r(I)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextLayoutResult(layoutInput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/z;->a:Landroidx/compose/ui/text/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", multiParagraph="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/text/z;->c:J

    invoke-static {v1, v2}, Lo0/t;->i(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/z;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lastBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/z;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", placeholderRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/z;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->s(I)F

    move-result p1

    return p1
.end method

.method public final v()Landroidx/compose/ui/text/MultiParagraph;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    return-object v0
.end method

.method public final w(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->t(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/z;->f:Ljava/util/List;

    return-object v0
.end method

.method public final y()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/z;->c:J

    return-wide v0
.end method
