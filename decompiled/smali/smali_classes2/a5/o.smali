.class public La5/o;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;
.implements Lz4/b2;


# static fields
.field public static final a:La5/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/o;

    invoke-direct {v0}, La5/o;-><init>()V

    sput-object v0, La5/o;->a:La5/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private i(Ly4/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ly4/a;->s()Ly4/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ly4/b;->q(I)V

    invoke-interface {v0}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ly4/a;->n()Ly4/g;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Ly4/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    new-instance p2, Ly4/a$a;

    invoke-virtual {p1}, Ly4/a;->n()Ly4/g;

    move-result-object v2

    invoke-direct {p2, v2, v1}, Ly4/a$a;-><init>(Ly4/g;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ly4/a;->i(Ly4/a$a;)V

    invoke-virtual {p1}, Ly4/a;->v0()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ly4/a;->E0(I)V

    const/16 p2, 0xd

    invoke-interface {v0, p2}, Ly4/b;->c0(I)V

    invoke-virtual {p1, p2}, Ly4/a;->b(I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static j(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Ljava/awt/Point;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/awt/Rectangle;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/awt/Font;

    if-eq p0, v0, :cond_1

    const-class v0, Ljava/awt/Color;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0x8

    const/16 v3, 0x10

    if-ne v1, v2, :cond_0

    invoke-interface {v0, v3}, Ly4/b;->c0(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ly4/b;->Z()V

    const-class v0, Ljava/awt/Point;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1, p3}, La5/o;->g(Ly4/a;Ljava/lang/Object;)Ljava/awt/Point;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-class v0, Ljava/awt/Rectangle;

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, p1}, La5/o;->h(Ly4/a;)Ljava/awt/Rectangle;

    move-result-object p2

    goto :goto_1

    :cond_4
    const-class v0, Ljava/awt/Color;

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, La5/o;->e(Ly4/a;)Ljava/awt/Color;

    move-result-object p2

    goto :goto_1

    :cond_5
    const-class v0, Ljava/awt/Font;

    if-ne p2, v0, :cond_6

    invoke-virtual {p0, p1}, La5/o;->f(Ly4/a;)Ljava/awt/Font;

    move-result-object p2

    :goto_1
    invoke-virtual {p1}, Ly4/a;->n()Ly4/g;

    move-result-object v0

    invoke-virtual {p1, p2, p3}, Ly4/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    invoke-virtual {p1, v0}, Ly4/a;->B0(Ly4/g;)V

    return-object p2

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support awt class : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2

    iget-object p1, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/j1;->m0()V

    return-void

    :cond_0
    instance-of p3, p2, Ljava/awt/Point;

    const-string p4, "y"

    const-string p5, "x"

    const/16 v0, 0x2c

    const/16 v1, 0x7b

    if-eqz p3, :cond_1

    check-cast p2, Ljava/awt/Point;

    const-class p3, Ljava/awt/Point;

    invoke-virtual {p0, p1, p3, v1}, La5/o;->k(La5/j1;Ljava/lang/Class;C)C

    move-result p3

    iget v1, p2, Ljava/awt/Point;->x:I

    invoke-virtual {p1, p3, p5, v1}, La5/j1;->U(CLjava/lang/String;I)V

    iget p2, p2, Ljava/awt/Point;->y:I

    invoke-virtual {p1, v0, p4, p2}, La5/j1;->U(CLjava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    instance-of p3, p2, Ljava/awt/Font;

    if-eqz p3, :cond_2

    check-cast p2, Ljava/awt/Font;

    const-class p3, Ljava/awt/Font;

    invoke-virtual {p0, p1, p3, v1}, La5/o;->k(La5/j1;Ljava/lang/Class;C)C

    move-result p3

    const-string p4, "name"

    invoke-virtual {p2}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p3, p4, p5}, La5/j1;->Z(CLjava/lang/String;Ljava/lang/String;)V

    const-string p3, "style"

    invoke-virtual {p2}, Ljava/awt/Font;->getStyle()I

    move-result p4

    invoke-virtual {p1, v0, p3, p4}, La5/j1;->U(CLjava/lang/String;I)V

    const-string p3, "size"

    invoke-virtual {p2}, Ljava/awt/Font;->getSize()I

    move-result p2

    invoke-virtual {p1, v0, p3, p2}, La5/j1;->U(CLjava/lang/String;I)V

    goto :goto_0

    :cond_2
    instance-of p3, p2, Ljava/awt/Rectangle;

    if-eqz p3, :cond_3

    check-cast p2, Ljava/awt/Rectangle;

    const-class p3, Ljava/awt/Rectangle;

    invoke-virtual {p0, p1, p3, v1}, La5/o;->k(La5/j1;Ljava/lang/Class;C)C

    move-result p3

    iget v1, p2, Ljava/awt/Rectangle;->x:I

    invoke-virtual {p1, p3, p5, v1}, La5/j1;->U(CLjava/lang/String;I)V

    iget p3, p2, Ljava/awt/Rectangle;->y:I

    invoke-virtual {p1, v0, p4, p3}, La5/j1;->U(CLjava/lang/String;I)V

    const-string p3, "width"

    iget p4, p2, Ljava/awt/Rectangle;->width:I

    invoke-virtual {p1, v0, p3, p4}, La5/j1;->U(CLjava/lang/String;I)V

    const-string p3, "height"

    iget p2, p2, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p1, v0, p3, p2}, La5/j1;->U(CLjava/lang/String;I)V

    goto :goto_0

    :cond_3
    instance-of p3, p2, Ljava/awt/Color;

    if-eqz p3, :cond_5

    check-cast p2, Ljava/awt/Color;

    const-class p3, Ljava/awt/Color;

    invoke-virtual {p0, p1, p3, v1}, La5/o;->k(La5/j1;Ljava/lang/Class;C)C

    move-result p3

    const-string p4, "r"

    invoke-virtual {p2}, Ljava/awt/Color;->getRed()I

    move-result p5

    invoke-virtual {p1, p3, p4, p5}, La5/j1;->U(CLjava/lang/String;I)V

    const-string p3, "g"

    invoke-virtual {p2}, Ljava/awt/Color;->getGreen()I

    move-result p4

    invoke-virtual {p1, v0, p3, p4}, La5/j1;->U(CLjava/lang/String;I)V

    const-string p3, "b"

    invoke-virtual {p2}, Ljava/awt/Color;->getBlue()I

    move-result p4

    invoke-virtual {p1, v0, p3, p4}, La5/j1;->U(CLjava/lang/String;I)V

    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p3

    if-lez p3, :cond_4

    const-string p3, "alpha"

    invoke-virtual {p2}, Ljava/awt/Color;->getAlpha()I

    move-result p2

    invoke-virtual {p1, v0, p3, p2}, La5/j1;->U(CLjava/lang/String;I)V

    :cond_4
    :goto_0
    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, La5/j1;->write(I)V

    return-void

    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support awt class : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected e(Ly4/a;)Ljava/awt/Color;
    .locals 9

    iget-object p1, p1, Ly4/a;->f:Ly4/b;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Ly4/b;->Z()V

    new-instance p1, Ljava/awt/Color;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/awt/Color;-><init>(IIII)V

    return-object p1

    :cond_1
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v4

    const-string v5, "syntax error"

    const/4 v6, 0x4

    if-ne v4, v6, :cond_7

    invoke-interface {p1}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {p1, v7}, Ly4/b;->q(I)V

    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v8

    if-ne v8, v7, :cond_6

    invoke-interface {p1}, Ly4/b;->o()I

    move-result v5

    invoke-interface {p1}, Ly4/b;->Z()V

    const-string v7, "r"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v7, "g"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    const-string v7, "b"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v2, v5

    goto :goto_1

    :cond_4
    const-string v3, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v5

    :goto_1
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    invoke-interface {p1, v6}, Ly4/b;->c0(I)V

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected f(Ly4/a;)Ljava/awt/Font;
    .locals 8

    iget-object p1, p1, Ly4/a;->f:Ly4/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Ly4/b;->Z()V

    new-instance p1, Ljava/awt/Font;

    invoke-direct {p1, v2, v0, v1}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object p1

    :cond_1
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "syntax error"

    if-ne v3, v4, :cond_8

    invoke-interface {p1}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Ly4/b;->q(I)V

    const-string v7, "name"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-interface {p1}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ly4/b;->Z()V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v7, "style"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v0

    if-ne v0, v6, :cond_4

    invoke-interface {p1}, Ly4/b;->o()I

    move-result v0

    invoke-interface {p1}, Ly4/b;->Z()V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v1, "size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v1

    if-ne v1, v6, :cond_6

    invoke-interface {p1}, Ly4/b;->o()I

    move-result v1

    invoke-interface {p1}, Ly4/b;->Z()V

    :goto_1
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    invoke-interface {p1, v4}, Ly4/b;->c0(I)V

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected g(Ly4/a;Ljava/lang/Object;)Ljava/awt/Point;
    .locals 7

    iget-object v0, p1, Ly4/a;->f:Ly4/b;

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    invoke-interface {v0}, Ly4/b;->Z()V

    new-instance p1, Ljava/awt/Point;

    invoke-direct {p1, v1, v2}, Ljava/awt/Point;-><init>(II)V

    return-object p1

    :cond_1
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    invoke-interface {v0}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "java.awt.Point"

    invoke-virtual {p1, v3}, Ly4/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v5, "$ref"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1, p2}, La5/o;->i(Ly4/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Point;

    return-object p1

    :cond_3
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ly4/b;->q(I)V

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v6

    if-ne v6, v5, :cond_4

    invoke-interface {v0}, Ly4/b;->o()I

    move-result v5

    invoke-interface {v0}, Ly4/b;->Z()V

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    if-ne v6, v5, :cond_7

    invoke-interface {v0}, Ly4/b;->p0()F

    move-result v5

    float-to-int v5, v5

    invoke-interface {v0}, Ly4/b;->Z()V

    :goto_1
    const-string v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v1, v5

    goto :goto_2

    :cond_5
    const-string v2, "y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v5

    :goto_2
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_0

    invoke-interface {v0, v4}, Ly4/b;->c0(I)V

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syntax error, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "syntax error"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected h(Ly4/a;)Ljava/awt/Rectangle;
    .locals 9

    iget-object p1, p1, Ly4/a;->f:Ly4/b;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Ly4/b;->Z()V

    new-instance p1, Ljava/awt/Rectangle;

    invoke-direct {p1, v0, v1, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p1

    :cond_1
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v4

    const-string v5, "syntax error"

    const/4 v6, 0x4

    if-ne v4, v6, :cond_8

    invoke-interface {p1}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {p1, v7}, Ly4/b;->q(I)V

    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v8

    if-ne v8, v7, :cond_2

    invoke-interface {p1}, Ly4/b;->o()I

    move-result v5

    invoke-interface {p1}, Ly4/b;->Z()V

    goto :goto_1

    :cond_2
    const/4 v7, 0x3

    if-ne v8, v7, :cond_7

    invoke-interface {p1}, Ly4/b;->p0()F

    move-result v5

    float-to-int v5, v5

    invoke-interface {p1}, Ly4/b;->Z()V

    :goto_1
    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    const-string v7, "y"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v5

    goto :goto_2

    :cond_4
    const-string v7, "width"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v5

    goto :goto_2

    :cond_5
    const-string v3, "height"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    :goto_2
    invoke-interface {p1}, Ly4/b;->q0()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    invoke-interface {p1, v6}, Ly4/b;->c0(I)V

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected k(La5/j1;Ljava/lang/Class;C)C
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v0}, La5/j1;->q(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p3, 0x7b

    invoke-virtual {p1, p3}, La5/j1;->write(I)V

    sget-object p3, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p1, p3}, La5/j1;->w(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La5/j1;->q0(Ljava/lang/String;)V

    const/16 p3, 0x2c

    :cond_0
    return p3
.end method
