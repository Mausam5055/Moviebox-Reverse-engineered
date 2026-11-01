.class public Lorg/jsoup/parser/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    return-void
.end method

.method private r()I
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lorg/jsoup/helper/c;->o()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v4, p0, v2

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_0

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(CC)Ljava/lang/String;
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v5, v0

    move v6, v5

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->c()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    if-eqz v1, :cond_2

    const/16 v9, 0x5c

    if-eq v1, v9, :cond_7

    :cond_2
    const/16 v9, 0x27

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eq v7, p1, :cond_3

    if-nez v2, :cond_3

    xor-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v9, 0x22

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eq v7, p1, :cond_4

    if-nez v3, :cond_4

    xor-int/lit8 v2, v2, 0x1

    :cond_4
    :goto_0
    if-nez v3, :cond_9

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v4, v4, 0x1

    if-ne v5, v0, :cond_7

    iget v5, p0, Lorg/jsoup/parser/g;->b:I

    goto :goto_1

    :cond_6
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v4, v4, -0x1

    :cond_7
    :goto_1
    if-lez v4, :cond_8

    if-eqz v1, :cond_8

    iget v6, p0, Lorg/jsoup/parser/g;->b:I

    :cond_8
    move v1, v7

    :cond_9
    :goto_2
    if-gtz v4, :cond_0

    :goto_3
    if-ltz v6, :cond_a

    iget-object p1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    const-string p1, ""

    :goto_4
    if-lez v4, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Did not find balanced marker at \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    :cond_b
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->k(Ljava/lang/String;)Z

    return-object v0
.end method

.method public c()C
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0}, Lorg/jsoup/parser/g;->r()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not long enough to consume sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue did not match expected sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/g;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/g;->m([C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/g;->b:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 2
        0x2ds
        0x5fs
    .end array-data
.end method

.method public f()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/g;->p()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_"

    const-string v2, "-"

    const-string v3, "*|"

    const-string v4, "|"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/g;->n([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/g;->b:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->q()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs h([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->n([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jsoup/parser/g;->b:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/g;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public j()Z
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/g;->r()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/g;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/jsoup/parser/g;->b:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public l(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public varargs m([C)Z
    .locals 6

    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    iget-object v4, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public varargs n([Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/g;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public o()Z
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jsoup/helper/c;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 2

    invoke-virtual {p0}, Lorg/jsoup/parser/g;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/g;->b:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/g;->a:Ljava/lang/String;

    iget v1, p0, Lorg/jsoup/parser/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
