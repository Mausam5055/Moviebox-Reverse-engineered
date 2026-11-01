.class final Lof/b$a;
.super Lhf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lof/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lof/b;


# direct methods
.method constructor <init>(Lof/b;Lhf/e;)V
    .locals 0

    iput-object p1, p0, Lof/b$a;->b:Lof/b;

    invoke-direct {p0, p2}, Lhf/e;-><init>(Lhf/e;)V

    return-void
.end method

.method private m(II)I
    .locals 0

    packed-switch p2, :pswitch_data_0

    return p1

    :pswitch_0
    iget-object p2, p0, Lof/b$a;->b:Lof/b;

    invoke-static {p2}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lof/a;->G(I)I

    move-result p1

    return p1

    :pswitch_1
    iget-object p2, p0, Lof/b$a;->b:Lof/b;

    invoke-static {p2}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lof/a;->C(I)I

    move-result p1

    return p1

    :pswitch_2
    iget-object p2, p0, Lof/b$a;->b:Lof/b;

    invoke-static {p2}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lof/a;->t(I)I

    move-result p1

    return p1

    :pswitch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "METHOD_AND_PROTO_REF should not use this method to do transform."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    iget-object p2, p0, Lof/b$a;->b:Lof/b;

    invoke-static {p2}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lof/a;->z(I)I

    move-result p1

    return p1

    :pswitch_5
    iget-object p2, p0, Lof/b$a;->b:Lof/b;

    invoke-static {p2}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lof/a;->D(I)I

    move-result p1

    return p1

    :pswitch_6
    iget-object p2, p0, Lof/b$a;->b:Lof/b;

    invoke-static {p2}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lof/a;->I(I)I

    move-result p1

    return p1

    :pswitch_7
    iget-object p2, p0, Lof/b$a;->b:Lof/b;

    invoke-static {p2}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lof/a;->J(I)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public b(IIIIIJIIIII)V
    .locals 14

    move-object v13, p0

    move/from16 v0, p3

    move/from16 v4, p4

    invoke-direct {p0, v0, v4}, Lof/b$a;->m(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-super/range {v0 .. v12}, Lhf/e;->b(IIIIIJIIIII)V

    return-void
.end method

.method public c(IIIIIJIIII)V
    .locals 13

    move-object v12, p0

    move/from16 v0, p3

    move/from16 v4, p4

    invoke-direct {p0, v0, v4}, Lof/b$a;->m(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-super/range {v0 .. v11}, Lhf/e;->c(IIIIIJIIII)V

    return-void
.end method

.method public d(IIIII[I)V
    .locals 8

    iget-object v0, p0, Lof/b$a;->b:Lof/b;

    invoke-static {v0}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lof/a;->D(I)I

    move-result v4

    iget-object p3, p0, Lof/b$a;->b:Lof/b;

    invoke-static {p3}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object p3

    invoke-virtual {p3, p5}, Lof/a;->G(I)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    move-object v7, p6

    invoke-super/range {v1 .. v7}, Lhf/e;->d(IIIII[I)V

    return-void
.end method

.method public e(IIIIIII)V
    .locals 9

    move-object v8, p0

    iget-object v0, v8, Lof/b$a;->b:Lof/b;

    invoke-static {v0}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object v0

    move v1, p3

    invoke-virtual {v0, p3}, Lof/a;->D(I)I

    move-result v3

    iget-object v0, v8, Lof/b$a;->b:Lof/b;

    invoke-static {v0}, Lof/b;->a(Lof/b;)Lof/a;

    move-result-object v0

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Lof/a;->G(I)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v7}, Lhf/e;->e(IIIIIII)V

    return-void
.end method

.method public f(IIIIIJI)V
    .locals 10

    move-object v9, p0

    move v0, p3

    move v4, p4

    invoke-direct {p0, p3, p4}, Lof/b$a;->m(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-super/range {v0 .. v8}, Lhf/e;->f(IIIIIJI)V

    return-void
.end method

.method public h(IIIIIJII)V
    .locals 11

    move-object v10, p0

    move v0, p3

    move v4, p4

    invoke-direct {p0, p3, p4}, Lof/b$a;->m(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Lhf/e;->h(IIIIIJII)V

    return-void
.end method

.method public j(IIIIIJIII)V
    .locals 12

    move-object v11, p0

    move v0, p3

    move/from16 v4, p4

    invoke-direct {p0, p3, v4}, Lof/b$a;->m(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-super/range {v0 .. v10}, Lhf/e;->j(IIIIIJIII)V

    return-void
.end method

.method public k(IIIIIJII)V
    .locals 11

    move-object v10, p0

    move v0, p3

    move v4, p4

    invoke-direct {p0, p3, p4}, Lof/b$a;->m(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Lhf/e;->k(IIIIIJII)V

    return-void
.end method

.method public l(IIIIIJ)V
    .locals 8

    invoke-direct {p0, p3, p4}, Lof/b$a;->m(II)I

    move-result v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-super/range {v0 .. v7}, Lhf/e;->l(IIIIIJ)V

    return-void
.end method
