.class final Landroidx/compose/material/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/material/j;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:J


# direct methods
.method private constructor <init>(JJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material/d;->a:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material/d;->b:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material/d;->c:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material/d;->d:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material/d;->e:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material/d;->f:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material/d;->g:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material/d;->h:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/compose/material/d;->i:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroidx/compose/material/d;->j:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroidx/compose/material/d;-><init>(JJJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public a(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;
    .locals 3

    const v0, -0x58e774ae

    invoke-interface {p3, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.DefaultSliderColors.tickColor (Slider.kt:1111)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-wide p1, p0, Landroidx/compose/material/d;->g:J

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Landroidx/compose/material/d;->h:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-wide p1, p0, Landroidx/compose/material/d;->i:J

    goto :goto_0

    :cond_3
    iget-wide p1, p0, Landroidx/compose/material/d;->j:J

    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/i;->K()V

    return-object p1
.end method

.method public b(ZZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;
    .locals 3

    const v0, 0x5de6a124

    invoke-interface {p3, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.DefaultSliderColors.trackColor (Slider.kt:1100)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-wide p1, p0, Landroidx/compose/material/d;->c:J

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Landroidx/compose/material/d;->d:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-wide p1, p0, Landroidx/compose/material/d;->e:J

    goto :goto_0

    :cond_3
    iget-wide p1, p0, Landroidx/compose/material/d;->f:J

    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_4
    invoke-interface {p3}, Landroidx/compose/runtime/i;->K()V

    return-object p1
.end method

.method public c(ZLandroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;
    .locals 3

    const v0, -0x67579f35

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.DefaultSliderColors.thumbColor (Slider.kt:1095)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p0, Landroidx/compose/material/d;->a:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/material/d;->b:J

    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/u1;->g(J)Landroidx/compose/ui/graphics/u1;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/r2;->i(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/material/d;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material/d;

    iget-wide v2, p0, Landroidx/compose/material/d;->a:J

    iget-wide v4, p1, Landroidx/compose/material/d;->a:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material/d;->b:J

    iget-wide v4, p1, Landroidx/compose/material/d;->b:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material/d;->c:J

    iget-wide v4, p1, Landroidx/compose/material/d;->c:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material/d;->d:J

    iget-wide v4, p1, Landroidx/compose/material/d;->d:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Landroidx/compose/material/d;->e:J

    iget-wide v4, p1, Landroidx/compose/material/d;->e:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, Landroidx/compose/material/d;->f:J

    iget-wide v4, p1, Landroidx/compose/material/d;->f:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, Landroidx/compose/material/d;->g:J

    iget-wide v4, p1, Landroidx/compose/material/d;->g:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, Landroidx/compose/material/d;->h:J

    iget-wide v4, p1, Landroidx/compose/material/d;->h:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    :cond_9
    iget-wide v2, p0, Landroidx/compose/material/d;->i:J

    iget-wide v4, p1, Landroidx/compose/material/d;->i:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-wide v2, p0, Landroidx/compose/material/d;->j:J

    iget-wide v4, p1, Landroidx/compose/material/d;->j:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result p1

    if-nez p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/material/d;->a:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->b:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->c:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->d:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->e:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->f:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->g:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->h:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->i:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material/d;->j:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->s(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
