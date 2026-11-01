.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$7;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 5

    iget-object v0, p2, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->A()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->B()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->t(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_0
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->l0(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->b0(Lorg/jsoup/nodes/Element;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$a;->a:[I

    iget-object v4, v1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_80

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_7f

    const-string v7, "name"

    const-string v8, "html"

    const-string v9, "span"

    const/4 v10, 0x3

    const-string v11, "form"

    const-string v12, "li"

    const-string v13, "body"

    const-string v14, "p"

    if-eq v3, v10, :cond_34

    const/4 v5, 0x4

    if-eq v3, v5, :cond_4

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    :cond_0
    :goto_0
    move v1, v4

    goto/16 :goto_18

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->r()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->N(Lorg/jsoup/parser/Token$c;)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->N(Lorg/jsoup/parser/Token$c;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v5

    sget-object v15, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->p:[Ljava/lang/String;

    invoke-static {v5, v15}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v15

    const/4 v10, 0x0

    if-eqz v15, :cond_16

    move v3, v6

    :goto_1
    const/16 v7, 0x8

    if-ge v3, v7, :cond_0

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->u(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1

    :cond_5
    invoke-virtual {v2, v7}, Lorg/jsoup/parser/b;->g0(Lorg/jsoup/nodes/Element;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/b;->r0(Lorg/jsoup/nodes/Element;)V

    return v4

    :cond_6
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v8

    if-eq v8, v7, :cond_8

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->B()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v11, v6

    move v12, v11

    move-object v13, v10

    :goto_2
    if-ge v11, v9, :cond_b

    const/16 v14, 0x40

    if-ge v11, v14, :cond_b

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jsoup/nodes/Element;

    if-ne v14, v7, :cond_9

    add-int/lit8 v12, v11, -0x1

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lorg/jsoup/nodes/Element;

    move v12, v4

    goto :goto_3

    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->b0(Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    move-object v14, v10

    :goto_4
    if-nez v14, :cond_c

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->l0(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/b;->r0(Lorg/jsoup/nodes/Element;)V

    return v4

    :cond_c
    move v9, v6

    move-object v11, v14

    move-object v12, v11

    :goto_5
    const/4 v8, 0x3

    if-ge v9, v8, :cond_11

    invoke-virtual {v2, v11}, Lorg/jsoup/parser/b;->g0(Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v2, v11}, Lorg/jsoup/parser/b;->j(Lorg/jsoup/nodes/Element;)Lorg/jsoup/nodes/Element;

    move-result-object v11

    :cond_d
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/b;->Z(Lorg/jsoup/nodes/Element;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual {v2, v11}, Lorg/jsoup/parser/b;->s0(Lorg/jsoup/nodes/Element;)Z

    goto :goto_6

    :cond_e
    if-ne v11, v7, :cond_f

    goto :goto_7

    :cond_f
    new-instance v15, Lorg/jsoup/nodes/Element;

    invoke-virtual {v11}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v8

    sget-object v4, Lorg/jsoup/parser/d;->d:Lorg/jsoup/parser/d;

    invoke-static {v8, v4}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->v()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v15, v4, v8}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;)V

    invoke-virtual {v2, v11, v15}, Lorg/jsoup/parser/b;->u0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v2, v11, v15}, Lorg/jsoup/parser/b;->w0(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->L0()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v12}, Lorg/jsoup/nodes/j;->L()V

    :cond_10
    invoke-virtual {v15, v12}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    move-object v11, v15

    move-object v12, v11

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_11
    :goto_7
    invoke-virtual {v13}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->q:[Ljava/lang/String;

    invoke-static {v4, v8}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->L0()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v12}, Lorg/jsoup/nodes/j;->L()V

    :cond_12
    invoke-virtual {v2, v12}, Lorg/jsoup/parser/b;->R(Lorg/jsoup/nodes/j;)V

    goto :goto_8

    :cond_13
    invoke-virtual {v12}, Lorg/jsoup/nodes/Element;->L0()Lorg/jsoup/nodes/Element;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v12}, Lorg/jsoup/nodes/j;->L()V

    :cond_14
    invoke-virtual {v13, v12}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    :goto_8
    new-instance v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->T0()Lorg/jsoup/parser/f;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->v()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object v8

    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/b;->e(Lorg/jsoup/nodes/b;)V

    invoke-virtual {v14}, Lorg/jsoup/nodes/j;->o()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v14}, Lorg/jsoup/nodes/Element;->n()I

    move-result v9

    new-array v9, v9, [Lorg/jsoup/nodes/j;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/jsoup/nodes/j;

    array-length v9, v8

    move v11, v6

    :goto_9
    if-ge v11, v9, :cond_15

    aget-object v12, v8, v11

    invoke-virtual {v4, v12}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_15
    invoke-virtual {v14, v4}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/b;->r0(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/b;->s0(Lorg/jsoup/nodes/Element;)Z

    invoke-virtual {v2, v14, v4}, Lorg/jsoup/parser/b;->U(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_16
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->o:[Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_17
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->s()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_18
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->l0(Ljava/lang/String;)V

    :cond_19
    :goto_a
    const/4 v1, 0x1

    goto/16 :goto_18

    :cond_1a
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1

    :cond_1b
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_1c
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->t(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_1d
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->l0(Ljava/lang/String;)V

    goto :goto_a

    :cond_1e
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_1f
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->AfterBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_a

    :cond_20
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v2, v13}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_21
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->x()Lorg/jsoup/nodes/h;

    move-result-object v1

    invoke-virtual {v2, v10}, Lorg/jsoup/parser/b;->y0(Lorg/jsoup/nodes/h;)V

    if-eqz v1, :cond_24

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_b

    :cond_22
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->s()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_23
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->s0(Lorg/jsoup/nodes/Element;)Z

    goto/16 :goto_a

    :cond_24
    :goto_b
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_25
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/i;->g(Ljava/lang/String;)Z

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_26
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->t(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_27
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->l0(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_28
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->f:[Ljava/lang/String;

    invoke-static {v5, v3}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_29
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->t(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_2a
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->l0(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_2b
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->c:[Ljava/lang/String;

    invoke-static {v5, v3}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->G([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_2c
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->t(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_2d
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->m0([Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_2e
    const-string v3, "sarcasm"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1

    :cond_2f
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->h:[Ljava/lang/String;

    invoke-static {v5, v3}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2, v7}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_30
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->s()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_31
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->l0(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->k()V

    goto/16 :goto_a

    :cond_32
    const-string v3, "br"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/i;->g(Ljava/lang/String;)Z

    return v6

    :cond_33
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->anyOtherEndTag(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1

    :cond_34
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v4

    const-string v10, "a"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_36

    invoke-virtual {v2, v10}, Lorg/jsoup/parser/b;->u(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v10}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    invoke-virtual {v2, v10}, Lorg/jsoup/parser/b;->y(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->r0(Lorg/jsoup/nodes/Element;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->s0(Lorg/jsoup/nodes/Element;)Z

    :cond_35
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->p0(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_a

    :cond_36
    sget-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->i:[Ljava/lang/String;

    invoke-static {v4, v10}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->P(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    goto/16 :goto_a

    :cond_37
    sget-object v10, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->b:[Ljava/lang/String;

    invoke-static {v4, v10}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_39

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_38
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_39
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_3a
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_c
    if-lez v4, :cond_3d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v2, v12}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    goto :goto_d

    :cond_3b
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/b;->b0(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->e:[Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_d

    :cond_3c
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_3d
    :goto_d
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_3e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_3f
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$i;->y()Lorg/jsoup/nodes/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/a;

    invoke-virtual {v3}, Lorg/jsoup/nodes/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/j;->w(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/b;->x(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_e

    :cond_41
    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->a:[Ljava/lang/String;

    invoke-static {v4, v8}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_42

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/b;->n0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    return v1

    :cond_42
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_45

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_43

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_10

    :cond_43
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$i;->y()Lorg/jsoup/nodes/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_44
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/a;

    invoke-virtual {v3}, Lorg/jsoup/nodes/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/j;->w(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jsoup/nodes/b;->x(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_f

    :cond_45
    :goto_10
    return v6

    :cond_46
    const-string v1, "frameset"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->B()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_4b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_47

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_12

    :cond_47
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->r()Z

    move-result v4

    if-nez v4, :cond_48

    return v6

    :cond_48
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/Element;

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->L0()Lorg/jsoup/nodes/Element;

    move-result-object v5

    if-eqz v5, :cond_49

    invoke-virtual {v4}, Lorg/jsoup/nodes/j;->L()V

    :cond_49
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v7, :cond_4a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v7, 0x1

    goto :goto_11

    :cond_4a
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InFrameset:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_a

    :cond_4b
    :goto_12
    return v6

    :cond_4c
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->c:[Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_4d
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->j0()Lorg/jsoup/nodes/Element;

    :cond_4e
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_4f
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->d:[Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_50
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    iget-object v1, v2, Lorg/jsoup/parser/i;->a:Lorg/jsoup/parser/a;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/a;->u(Ljava/lang/String;)Z

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    goto/16 :goto_a

    :cond_51
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->x()Lorg/jsoup/nodes/h;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_52
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_53
    const/4 v1, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/jsoup/parser/b;->Q(Lorg/jsoup/parser/Token$h;Z)Lorg/jsoup/nodes/h;

    goto/16 :goto_18

    :cond_54
    const/4 v1, 0x1

    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->f:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->B()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_13
    if-lez v5, :cond_57

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->f:[Ljava/lang/String;

    invoke-static {v6, v7}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    goto :goto_14

    :cond_55
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->b0(Lorg/jsoup/nodes/Element;)Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->e:[Ljava/lang/String;

    invoke-static {v1, v6}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    goto :goto_14

    :cond_56
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    :cond_57
    :goto_14
    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_58
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_59
    const-string v1, "plaintext"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_5a
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    iget-object v1, v2, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    goto/16 :goto_a

    :cond_5b
    const-string v1, "button"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    goto/16 :goto_a

    :cond_5c
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    goto/16 :goto_a

    :cond_5d
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->g:[Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->p0(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_a

    :cond_5e
    const-string v1, "nobr"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    :cond_5f
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->p0(Lorg/jsoup/nodes/Element;)V

    goto/16 :goto_a

    :cond_60
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->h:[Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->S()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    goto/16 :goto_a

    :cond_61
    const-string v1, "table"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->w()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->h1()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v1

    sget-object v4, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    if-eq v1, v4, :cond_62

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_62
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_a

    :cond_63
    const-string v1, "input"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->P(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "hidden"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    goto/16 :goto_a

    :cond_64
    sget-object v5, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->j:[Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->P(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_65
    const-string v5, "hr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_66
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->P(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    goto/16 :goto_a

    :cond_67
    const-string v8, "image"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "svg"

    if-eqz v8, :cond_69

    invoke-virtual {v2, v9}, Lorg/jsoup/parser/b;->y(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v1

    if-nez v1, :cond_68

    const-string v1, "img"

    invoke-virtual {v3, v1}, Lorg/jsoup/parser/Token$i;->B(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_68
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_69
    const-string v8, "isindex"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->x()Lorg/jsoup/nodes/h;

    move-result-object v4

    if-eqz v4, :cond_6a

    return v6

    :cond_6a
    invoke-virtual {v2, v11}, Lorg/jsoup/parser/i;->g(Ljava/lang/String;)Z

    iget-object v4, v3, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    const-string v6, "action"

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->x()Lorg/jsoup/nodes/h;

    move-result-object v4

    iget-object v8, v3, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    invoke-virtual {v8, v6}, Lorg/jsoup/nodes/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lorg/jsoup/nodes/Element;->j0(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :cond_6b
    invoke-virtual {v2, v5}, Lorg/jsoup/parser/i;->g(Ljava/lang/String;)Z

    const-string v4, "label"

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/i;->g(Ljava/lang/String;)Z

    iget-object v4, v3, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    const-string v6, "prompt"

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    iget-object v4, v3, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    const-string v6, "prompt"

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :cond_6c
    const-string v4, "This is a searchable index. Enter search keywords: "

    :goto_15
    new-instance v6, Lorg/jsoup/parser/Token$c;

    invoke-direct {v6}, Lorg/jsoup/parser/Token$c;-><init>()V

    invoke-virtual {v6, v4}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    new-instance v4, Lorg/jsoup/nodes/b;

    invoke-direct {v4}, Lorg/jsoup/nodes/b;-><init>()V

    iget-object v3, v3, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6d
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/a;

    invoke-virtual {v6}, Lorg/jsoup/nodes/a;->b()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->k:[Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6d

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/b;->x(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_16

    :cond_6e
    const-string v3, "isindex"

    invoke-virtual {v4, v7, v3}, Lorg/jsoup/nodes/b;->w(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    invoke-virtual {v2, v1, v4}, Lorg/jsoup/parser/b;->h(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    const-string v1, "label"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    invoke-virtual {v2, v5}, Lorg/jsoup/parser/i;->g(Ljava/lang/String;)Z

    invoke-virtual {v2, v11}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    goto/16 :goto_a

    :cond_6f
    const-string v1, "textarea"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    iget-object v1, v2, Lorg/jsoup/parser/i;->b:Lorg/jsoup/parser/h;

    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v1, v3}, Lorg/jsoup/parser/h;->u(Lorg/jsoup/parser/TokeniserState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->d0()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->Text:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_a

    :cond_70
    const-string v1, "xmp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/b;->C(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {v2, v14}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_71
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    goto/16 :goto_a

    :cond_72
    const-string v1, "iframe"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    goto/16 :goto_a

    :cond_73
    const-string v1, "noembed"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-static {v3, v2}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$300(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    goto/16 :goto_a

    :cond_74
    const-string v1, "select"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->q(Z)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->B0()Lorg/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v1

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InRow:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCell:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    goto :goto_17

    :cond_75
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelect:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_a

    :cond_76
    :goto_17
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InSelectInTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_a

    :cond_77
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->l:[Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    const-string v4, "option"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    const-string v1, "option"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    :cond_78
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_79
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->m:[Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string v1, "ruby"

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->s()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->k0(Ljava/lang/String;)V

    :cond_7a
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_7b
    const-string v1, "math"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_7c
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_7d
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$b;->n:[Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/jsoup/helper/c;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_7e
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->q0()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto/16 :goto_a

    :cond_7f
    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    :cond_80
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->O(Lorg/jsoup/parser/Token$d;)V

    goto/16 :goto_a

    :goto_18
    return v1
.end method
