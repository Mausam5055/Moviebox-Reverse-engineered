.class final Lorg/jsoup/parser/h;
.super Ljava/lang/Object;


# static fields
.field private static final r:[C

.field static final s:[I


# instance fields
.field private final a:Lorg/jsoup/parser/a;

.field private final b:Lorg/jsoup/parser/ParseErrorList;

.field private c:Lorg/jsoup/parser/TokeniserState;

.field private d:Lorg/jsoup/parser/Token;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/StringBuilder;

.field h:Ljava/lang/StringBuilder;

.field i:Lorg/jsoup/parser/Token$i;

.field j:Lorg/jsoup/parser/Token$h;

.field k:Lorg/jsoup/parser/Token$g;

.field l:Lorg/jsoup/parser/Token$c;

.field m:Lorg/jsoup/parser/Token$e;

.field n:Lorg/jsoup/parser/Token$d;

.field private o:Ljava/lang/String;

.field private final p:[I

.field private final q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x7

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jsoup/parser/h;->r:[C

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jsoup/parser/h;->s:[I

    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method constructor <init>(Lorg/jsoup/parser/a;Lorg/jsoup/parser/ParseErrorList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lorg/jsoup/parser/h;->c:Lorg/jsoup/parser/TokeniserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/h;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/h;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/h;->g:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/parser/h;->h:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/jsoup/parser/Token$h;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$h;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/h;->j:Lorg/jsoup/parser/Token$h;

    new-instance v0, Lorg/jsoup/parser/Token$g;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/h;->k:Lorg/jsoup/parser/Token$g;

    new-instance v0, Lorg/jsoup/parser/Token$c;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$c;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/h;->l:Lorg/jsoup/parser/Token$c;

    new-instance v0, Lorg/jsoup/parser/Token$e;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$e;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/h;->m:Lorg/jsoup/parser/Token$e;

    new-instance v0, Lorg/jsoup/parser/Token$d;

    invoke-direct {v0}, Lorg/jsoup/parser/Token$d;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/h;->n:Lorg/jsoup/parser/Token$d;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/h;->p:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jsoup/parser/h;->q:[I

    iput-object p1, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    iput-object p2, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/c;

    iget-object v2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v2}, Lorg/jsoup/parser/a;->F()I

    move-result v2

    const-string v3, "Invalid character reference: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/parser/c;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0}, Lorg/jsoup/parser/a;->a()V

    iput-object p1, p0, Lorg/jsoup/parser/h;->c:Lorg/jsoup/parser/TokeniserState;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method d(Ljava/lang/Character;Z)[I
    .locals 8

    const/4 v0, 0x1

    const/16 v1, 0x80

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->r()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v3, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->q()C

    move-result v3

    if-ne p1, v3, :cond_1

    return-object v4

    :cond_1
    iget-object p1, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    sget-object v3, Lorg/jsoup/parser/h;->r:[C

    invoke-virtual {p1, v3}, Lorg/jsoup/parser/a;->z([C)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v4

    :cond_2
    iget-object p1, p0, Lorg/jsoup/parser/h;->p:[I

    iget-object v3, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->t()V

    iget-object v3, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    const-string v5, "#"

    invoke-virtual {v3, v5}, Lorg/jsoup/parser/a;->u(Ljava/lang/String;)Z

    move-result v3

    const-string v5, "missing semicolon"

    const-string v6, ";"

    if-eqz v3, :cond_b

    iget-object p2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->v(Ljava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lorg/jsoup/parser/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/parser/a;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    const-string p1, "numeric reference with no numerals"

    invoke-direct {p0, p1}, Lorg/jsoup/parser/h;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->H()V

    return-object v4

    :cond_4
    iget-object v3, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v3, v6}, Lorg/jsoup/parser/a;->u(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v5}, Lorg/jsoup/parser/h;->c(Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_6

    const/16 p2, 0x10

    goto :goto_1

    :cond_6
    const/16 p2, 0xa

    :goto_1
    const/4 v3, -0x1

    :try_start_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move p2, v3

    :goto_2
    if-eq p2, v3, :cond_a

    const v0, 0xd800

    if-lt p2, v0, :cond_7

    const v0, 0xdfff

    if-le p2, v0, :cond_a

    :cond_7
    const v0, 0x10ffff

    if-le p2, v0, :cond_8

    goto :goto_3

    :cond_8
    if-lt p2, v1, :cond_9

    sget-object v0, Lorg/jsoup/parser/h;->s:[I

    array-length v3, v0

    add-int/2addr v3, v1

    if-ge p2, v3, :cond_9

    const-string v3, "character is not a valid unicode code point"

    invoke-direct {p0, v3}, Lorg/jsoup/parser/h;->c(Ljava/lang/String;)V

    sub-int/2addr p2, v1

    aget p2, v0, p2

    :cond_9
    aput p2, p1, v2

    return-object p1

    :cond_a
    :goto_3
    const-string p2, "character outside of valid range"

    invoke-direct {p0, p2}, Lorg/jsoup/parser/h;->c(Ljava/lang/String;)V

    const p2, 0xfffd

    aput p2, p1, v2

    return-object p1

    :cond_b
    iget-object v1, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v1}, Lorg/jsoup/parser/a;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    const/16 v7, 0x3b

    invoke-virtual {v3, v7}, Lorg/jsoup/parser/a;->w(C)Z

    move-result v3

    invoke-static {v1}, Lorg/jsoup/nodes/Entities;->f(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {v1}, Lorg/jsoup/nodes/Entities;->g(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->H()V

    if-eqz v3, :cond_d

    const-string p1, "invalid named referenece \'%s\'"

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v1, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jsoup/parser/h;->c(Ljava/lang/String;)V

    :cond_d
    return-object v4

    :cond_e
    :goto_4
    if-eqz p2, :cond_10

    iget-object p2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->C()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->A()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    const/4 v3, 0x3

    new-array v3, v3, [C

    fill-array-data v3, :array_0

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/a;->y([C)Z

    move-result p2

    if-eqz p2, :cond_10

    :cond_f
    iget-object p1, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->H()V

    return-object v4

    :cond_10
    iget-object p2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/a;->u(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11

    invoke-direct {p0, v5}, Lorg/jsoup/parser/h;->c(Ljava/lang/String;)V

    :cond_11
    iget-object p2, p0, Lorg/jsoup/parser/h;->q:[I

    invoke-static {v1, p2}, Lorg/jsoup/nodes/Entities;->d(Ljava/lang/String;[I)I

    move-result p2

    if-ne p2, v0, :cond_12

    iget-object p2, p0, Lorg/jsoup/parser/h;->q:[I

    aget p2, p2, v2

    aput p2, p1, v2

    return-object p1

    :cond_12
    const/4 p1, 0x2

    if-ne p2, p1, :cond_13

    iget-object p1, p0, Lorg/jsoup/parser/h;->q:[I

    return-object p1

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/jsoup/parser/h;->q:[I

    return-object p1

    nop

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method e()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/h;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$d;->m()Lorg/jsoup/parser/Token;

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/h;->m:Lorg/jsoup/parser/Token$e;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$e;->m()Lorg/jsoup/parser/Token;

    return-void
.end method

.method g(Z)Lorg/jsoup/parser/Token$i;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/jsoup/parser/h;->j:Lorg/jsoup/parser/Token$h;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$h;->E()Lorg/jsoup/parser/Token$i;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/h;->k:Lorg/jsoup/parser/Token$g;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->E()Lorg/jsoup/parser/Token$i;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/h;->i:Lorg/jsoup/parser/Token$i;

    return-object p1
.end method

.method h()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/h;->h:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->n(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method i(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/h;->j(Ljava/lang/String;)V

    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/h;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/jsoup/parser/h;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/h;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/h;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/h;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method k(Lorg/jsoup/parser/Token;)V
    .locals 2

    iget-boolean v0, p0, Lorg/jsoup/parser/h;->e:Z

    const-string v1, "There is an unread token pending!"

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    iput-object p1, p0, Lorg/jsoup/parser/h;->d:Lorg/jsoup/parser/Token;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/h;->e:Z

    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lorg/jsoup/parser/Token$h;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/parser/h;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/jsoup/parser/Token$g;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->j:Lorg/jsoup/nodes/b;

    if-eqz p1, :cond_1

    const-string p1, "Attributes incorrectly present on end tag"

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/h;->q(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method l([I)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/h;->j(Ljava/lang/String;)V

    return-void
.end method

.method m()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/h;->n:Lorg/jsoup/parser/Token$d;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/h;->k(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method n()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/h;->m:Lorg/jsoup/parser/Token$e;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/h;->k(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method o()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/h;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->x()V

    iget-object v0, p0, Lorg/jsoup/parser/h;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/h;->k(Lorg/jsoup/parser/Token;)V

    return-void
.end method

.method p(Lorg/jsoup/parser/TokeniserState;)V
    .locals 6

    iget-object v0, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/c;

    iget-object v2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v2}, Lorg/jsoup/parser/a;->F()I

    move-result v2

    const-string v3, "Unexpectedly reached end of file (EOF) in input state [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/jsoup/parser/c;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method q(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/c;

    iget-object v2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v2}, Lorg/jsoup/parser/a;->F()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method r(Lorg/jsoup/parser/TokeniserState;)V
    .locals 6

    iget-object v0, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/h;->b:Lorg/jsoup/parser/ParseErrorList;

    new-instance v1, Lorg/jsoup/parser/c;

    iget-object v2, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v2}, Lorg/jsoup/parser/a;->F()I

    move-result v2

    iget-object v3, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v3}, Lorg/jsoup/parser/a;->q()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object p1, v4, v3

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v4}, Lorg/jsoup/parser/c;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method s()Z
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/h;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/h;->i:Lorg/jsoup/parser/Token$i;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$i;->A()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/h;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method t()Lorg/jsoup/parser/Token;
    .locals 5

    :goto_0
    iget-boolean v0, p0, Lorg/jsoup/parser/h;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/h;->c:Lorg/jsoup/parser/TokeniserState;

    iget-object v1, p0, Lorg/jsoup/parser/h;->a:Lorg/jsoup/parser/a;

    invoke-virtual {v0, p0, v1}, Lorg/jsoup/parser/TokeniserState;->read(Lorg/jsoup/parser/h;Lorg/jsoup/parser/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/h;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/h;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/jsoup/parser/h;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iput-object v1, p0, Lorg/jsoup/parser/h;->f:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/h;->l:Lorg/jsoup/parser/Token$c;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/h;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/jsoup/parser/h;->l:Lorg/jsoup/parser/Token$c;

    invoke-virtual {v2, v0}, Lorg/jsoup/parser/Token$c;->p(Ljava/lang/String;)Lorg/jsoup/parser/Token$c;

    move-result-object v0

    iput-object v1, p0, Lorg/jsoup/parser/h;->f:Ljava/lang/String;

    return-object v0

    :cond_2
    iput-boolean v2, p0, Lorg/jsoup/parser/h;->e:Z

    iget-object v0, p0, Lorg/jsoup/parser/h;->d:Lorg/jsoup/parser/Token;

    return-object v0
.end method

.method u(Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/h;->c:Lorg/jsoup/parser/TokeniserState;

    return-void
.end method
