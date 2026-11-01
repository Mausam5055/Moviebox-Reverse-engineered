.class public Lorg/jsoup/parser/j;
.super Lorg/jsoup/parser/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jsoup/parser/i;-><init>()V

    return-void
.end method

.method private n(Lorg/jsoup/nodes/j;)V
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/i;->a()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Element;->g0(Lorg/jsoup/nodes/j;)Lorg/jsoup/nodes/Element;

    return-void
.end method

.method private o(Lorg/jsoup/parser/Token$g;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_4

    iget-object v0, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method b()Lorg/jsoup/parser/d;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/d;->d:Lorg/jsoup/parser/d;

    return-object v0
.end method

.method protected c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/jsoup/parser/i;->c(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;Lorg/jsoup/parser/d;)V

    iget-object p1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/jsoup/parser/i;->c:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->g1()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    sget-object p2, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Document$OutputSettings;->n(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;

    return-void
.end method

.method protected e(Lorg/jsoup/parser/Token;)Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/j$a;->a:[I

    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Lorg/jsoup/parser/Token$e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/j;->m(Lorg/jsoup/parser/Token$e;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/j;->k(Lorg/jsoup/parser/Token$c;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Lorg/jsoup/parser/Token$d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/j;->l(Lorg/jsoup/parser/Token$d;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Lorg/jsoup/parser/Token$g;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/parser/j;->o(Lorg/jsoup/parser/Token$g;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Lorg/jsoup/parser/Token$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/j;->j(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;

    :goto_0
    :pswitch_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method j(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/Element;
    .locals 5

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->A()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    invoke-static {v0, v1}, Lorg/jsoup/parser/f;->l(Ljava/lang/String;Lorg/jsoup/parser/d;)Lorg/jsoup/parser/f;

    move-result-object v0

    new-instance v1, Lorg/jsoup/nodes/Element;

    iget-object v2, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    iget-object v3, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    iget-object v4, p1, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/d;->a(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/f;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    invoke-direct {p0, v1}, Lorg/jsoup/parser/j;->n(Lorg/jsoup/nodes/j;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->f()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->j()Lorg/jsoup/parser/f;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v1
.end method

.method k(Lorg/jsoup/parser/Token$c;)V
    .locals 1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/jsoup/nodes/d;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/jsoup/nodes/l;

    invoke-direct {p1, v0}, Lorg/jsoup/nodes/l;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lorg/jsoup/parser/j;->n(Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method l(Lorg/jsoup/parser/Token$d;)V
    .locals 5

    new-instance v0, Lorg/jsoup/nodes/e;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$d;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p1, Lorg/jsoup/parser/Token$d;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/nodes/e;->c0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, "!"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jsoup/parser/i;->e:Ljava/lang/String;

    invoke-static {}, Lorg/jsoup/parser/e;->g()Lorg/jsoup/parser/e;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ld10/a;->c(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->n()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/Element;->m0(I)Lorg/jsoup/nodes/Element;

    move-result-object v0

    new-instance v2, Lorg/jsoup/nodes/m;

    iget-object v3, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->U0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v2, v3, p1}, Lorg/jsoup/nodes/m;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lorg/jsoup/nodes/j;->i()Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->i()Lorg/jsoup/nodes/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/b;->e(Lorg/jsoup/nodes/b;)V

    move-object v0, v2

    :cond_1
    invoke-direct {p0, v0}, Lorg/jsoup/parser/j;->n(Lorg/jsoup/nodes/j;)V

    return-void
.end method

.method m(Lorg/jsoup/parser/Token$e;)V
    .locals 4

    new-instance v0, Lorg/jsoup/nodes/g;

    iget-object v1, p0, Lorg/jsoup/parser/i;->h:Lorg/jsoup/parser/d;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->s()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jsoup/nodes/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$e;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->d0(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/j;->n(Lorg/jsoup/nodes/j;)V

    return-void
.end method
