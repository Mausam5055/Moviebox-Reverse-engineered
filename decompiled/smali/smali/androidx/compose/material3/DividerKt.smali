.class public abstract Landroidx/compose/material3/DividerKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;FJLandroidx/compose/runtime/i;II)V
    .locals 8

    const v0, 0x5d216d69

    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p4

    and-int/lit8 v1, p6, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v2, p5, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v2, p5, 0x6

    if-nez v2, :cond_2

    invoke-interface {p4, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, p5

    goto :goto_1

    :cond_2
    move v2, p5

    :goto_1
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v4, p5, 0x30

    if-nez v4, :cond_5

    invoke-interface {p4, p1}, Landroidx/compose/runtime/i;->b(F)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x20

    goto :goto_2

    :cond_4
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :cond_5
    :goto_3
    and-int/lit16 v4, p5, 0x180

    if-nez v4, :cond_7

    and-int/lit8 v4, p6, 0x4

    if-nez v4, :cond_6

    invoke-interface {p4, p2, p3}, Landroidx/compose/runtime/i;->d(J)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x100

    goto :goto_4

    :cond_6
    const/16 v4, 0x80

    :goto_4
    or-int/2addr v2, v4

    :cond_7
    and-int/lit16 v4, v2, 0x93

    const/16 v5, 0x92

    if-ne v4, v5, :cond_a

    invoke-interface {p4}, Landroidx/compose/runtime/i;->h()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {p4}, Landroidx/compose/runtime/i;->G()V

    :cond_9
    :goto_5
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    goto/16 :goto_b

    :cond_a
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/i;->B()V

    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_c

    invoke-interface {p4}, Landroidx/compose/runtime/i;->I()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    invoke-interface {p4}, Landroidx/compose/runtime/i;->G()V

    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_f

    :goto_7
    and-int/lit16 v2, v2, -0x381

    goto :goto_9

    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    sget-object p0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    :cond_d
    if-eqz v3, :cond_e

    sget-object p1, Landroidx/compose/material3/c;->a:Landroidx/compose/material3/c;

    invoke-virtual {p1}, Landroidx/compose/material3/c;->b()F

    move-result p1

    :cond_e
    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_f

    sget-object p2, Landroidx/compose/material3/c;->a:Landroidx/compose/material3/c;

    const/4 p3, 0x6

    invoke-virtual {p2, p4, p3}, Landroidx/compose/material3/c;->a(Landroidx/compose/runtime/i;I)J

    move-result-wide p2

    goto :goto_7

    :cond_f
    :goto_9
    invoke-interface {p4}, Landroidx/compose/runtime/i;->s()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, -0x1

    const-string v3, "androidx.compose.material3.Divider (Divider.kt:95)"

    invoke-static {v0, v2, v1, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_10
    const v0, 0x497d210a

    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->x(I)V

    sget-object v0, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {v0}, Lo0/i$a;->a()F

    move-result v0

    invoke-static {p1, v0}, Lo0/i;->i(FF)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {p4, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/e;

    invoke-interface {v0}, Lo0/e;->getDensity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-static {v1}, Lo0/i;->g(F)F

    move-result v0

    goto :goto_a

    :cond_11
    move v0, p1

    :goto_a
    invoke-interface {p4}, Landroidx/compose/runtime/i;->N()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v3, v2}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object v1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide v2, p2

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/f;JLandroidx/compose/ui/graphics/a5;ILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p4, v1}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    goto/16 :goto_5

    :goto_b
    invoke-interface {p4}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p0

    if-eqz p0, :cond_12

    new-instance p1, Landroidx/compose/material3/DividerKt$Divider$1;

    move-object v1, p1

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroidx/compose/material3/DividerKt$Divider$1;-><init>(Landroidx/compose/ui/f;FJII)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method
