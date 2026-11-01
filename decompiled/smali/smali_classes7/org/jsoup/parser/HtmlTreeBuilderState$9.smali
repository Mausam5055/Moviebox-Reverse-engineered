.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$9;
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
.method anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 6

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "thead"

    const-string v2, "tr"

    const-string v3, "table"

    const-string v4, "tbody"

    const-string v5, "tfoot"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->z0(Z)V

    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->n0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->z0(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->n0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->f0()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->d0()V

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableText:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->h()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->O(Lorg/jsoup/parser/Token$d;)V

    return v4

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->i()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->l()Z

    move-result v3

    const-string v6, "table"

    if-eqz v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v7

    const-string v8, "caption"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->n()V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->S()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InCaption:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_3
    const-string v8, "colgroup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->n()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InColumnGroup:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_4
    const-string v9, "col"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2, v8}, Lorg/jsoup/parser/i;->g(Ljava/lang/String;)Z

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_5
    const-string v8, "tfoot"

    const-string v9, "thead"

    const-string v10, "tbody"

    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->n()V

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->L(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTableBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->C0(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_0

    :cond_6
    const-string v8, "th"

    const-string v9, "tr"

    const-string v11, "td"

    filled-new-array {v11, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v2, v10}, Lorg/jsoup/parser/i;->g(Ljava/lang/String;)Z

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {v2, v6}, Lorg/jsoup/parser/i;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v1}, Lorg/jsoup/parser/b;->e(Lorg/jsoup/parser/Token;)Z

    move-result v1

    return v1

    :cond_8
    const-string v6, "style"

    const-string v8, "script"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->InHead:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v2, v1, v3}, Lorg/jsoup/parser/b;->n0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v1

    return v1

    :cond_9
    const-string v6, "input"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v5, v3, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/b;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1

    :cond_a
    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->P(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    goto :goto_0

    :cond_b
    const-string v6, "form"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->x()Lorg/jsoup/nodes/h;

    move-result-object v1

    if-eqz v1, :cond_c

    return v5

    :cond_c
    invoke-virtual {v2, v3, v5}, Lorg/jsoup/parser/b;->Q(Lorg/jsoup/parser/Token$h;Z)Lorg/jsoup/nodes/h;

    :cond_d
    :goto_0
    return v4

    :cond_e
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->k()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/b;->K(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    :cond_10
    invoke-virtual {v2, v6}, Lorg/jsoup/parser/b;->l0(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/b;->x0()V

    return v4

    :cond_11
    const-string v16, "thead"

    const-string v17, "tr"

    const-string v7, "body"

    const-string v8, "caption"

    const-string v9, "col"

    const-string v10, "colgroup"

    const-string v11, "html"

    const-string v12, "tbody"

    const-string v13, "td"

    const-string v14, "tfoot"

    const-string v15, "th"

    filled-new-array/range {v7 .. v17}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jsoup/helper/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v5

    :cond_12
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lorg/jsoup/parser/Token;->j()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v1

    const-string v3, "html"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/b;->p(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_14
    return v4

    :cond_15
    invoke-virtual/range {p0 .. p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$9;->anythingElse(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result v1

    return v1
.end method
