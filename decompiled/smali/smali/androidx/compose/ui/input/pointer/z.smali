.class public final Landroidx/compose/ui/input/pointer/z;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:Z

.field private final f:F

.field private final g:I

.field private final h:Z

.field private final i:Ljava/util/List;

.field private final j:J

.field private final k:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJJJZFIZLjava/util/List;JJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/z;->a:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/z;->b:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/z;->c:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/z;->d:J

    move v1, p9

    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/z;->e:Z

    move v1, p10

    iput v1, v0, Landroidx/compose/ui/input/pointer/z;->f:F

    move v1, p11

    iput v1, v0, Landroidx/compose/ui/input/pointer/z;->g:I

    move v1, p12

    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/z;->h:Z

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/ui/input/pointer/z;->i:Ljava/util/List;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/z;->j:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/z;->k:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJZFIZLjava/util/List;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Landroidx/compose/ui/input/pointer/z;-><init>(JJJJZFIZLjava/util/List;JJ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/z;->h:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/z;->e:Z

    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/z;->i:Ljava/util/List;

    return-object v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/z;->a:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/z;->k:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/input/pointer/z;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/input/pointer/z;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/z;->a:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/z;->a:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/input/pointer/v;->d(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/z;->b:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/z;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/z;->c:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/z;->c:J

    invoke-static {v3, v4, v5, v6}, Ly/g;->j(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/z;->d:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/z;->d:J

    invoke-static {v3, v4, v5, v6}, Ly/g;->j(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/z;->e:Z

    iget-boolean v3, p1, Landroidx/compose/ui/input/pointer/z;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/compose/ui/input/pointer/z;->f:F

    iget v3, p1, Landroidx/compose/ui/input/pointer/z;->f:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Landroidx/compose/ui/input/pointer/z;->g:I

    iget v3, p1, Landroidx/compose/ui/input/pointer/z;->g:I

    invoke-static {v1, v3}, Landroidx/compose/ui/input/pointer/h0;->g(II)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/z;->h:Z

    iget-boolean v3, p1, Landroidx/compose/ui/input/pointer/z;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/z;->i:Ljava/util/List;

    iget-object v3, p1, Landroidx/compose/ui/input/pointer/z;->i:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/z;->j:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/z;->j:J

    invoke-static {v3, v4, v5, v6}, Ly/g;->j(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/z;->k:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/z;->k:J

    invoke-static {v3, v4, v5, v6}, Ly/g;->j(JJ)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/z;->d:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/z;->c:J

    return-wide v0
.end method

.method public final h()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/pointer/z;->f:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/z;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/v;->e(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->b:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->c:J

    invoke-static {v1, v2}, Ly/g;->o(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->d:J

    invoke-static {v1, v2}, Ly/g;->o(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/z;->e:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/input/pointer/z;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/input/pointer/z;->g:I

    invoke-static {v1}, Landroidx/compose/ui/input/pointer/h0;->h(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/z;->h:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/z;->i:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->j:J

    invoke-static {v1, v2}, Ly/g;->o(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->k:J

    invoke-static {v1, v2}, Ly/g;->o(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/z;->j:J

    return-wide v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/input/pointer/z;->g:I

    return v0
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/z;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointerInputEventData(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->a:J

    invoke-static {v1, v2}, Landroidx/compose/ui/input/pointer/v;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uptime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", positionOnScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->c:J

    invoke-static {v1, v2}, Ly/g;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->d:J

    invoke-static {v1, v2}, Ly/g;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", down="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/z;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/pointer/z;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/pointer/z;->g:I

    invoke-static {v1}, Landroidx/compose/ui/input/pointer/h0;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activeHover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/z;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", historical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/z;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scrollDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->j:J

    invoke-static {v1, v2}, Ly/g;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalEventPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/z;->k:J

    invoke-static {v1, v2}, Ly/g;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
