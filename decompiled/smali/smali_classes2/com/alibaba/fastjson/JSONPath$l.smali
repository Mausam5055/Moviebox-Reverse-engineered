.class Lcom/alibaba/fastjson/JSONPath$l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# static fields
.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:C

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\'\\s*,\\s*\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$l;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/fastjson/JSONPath$l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$l;->e:Z

    return p0
.end method

.method static g(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

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
.method a(C)V
    .locals 3

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, ", but \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$a0;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x2

    if-le v6, v8, :cond_2

    const/16 v6, 0x27

    if-ne v2, v6, :cond_2

    if-ne v4, v6, :cond_2

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eq v5, v7, :cond_1

    sget-object v2, Lcom/alibaba/fastjson/JSONPath$l;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\'\\s*,\\s*\'"

    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$r;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$r;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$v;

    invoke-direct {p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v5, v7, :cond_5

    if-ne v0, v7, :cond_5

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->v0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/alibaba/fastjson/JSONPath$b;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/JSONPath$b;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$v;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$v;

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_5
    if-eq v5, v7, :cond_7

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [I

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_6

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONPath$q;

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONPath$q;-><init>([I)V

    return-object p1

    :cond_7
    if-eq v0, v7, :cond_10

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    new-array v2, v0, [I

    move v4, v1

    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_a

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    if-nez v4, :cond_8

    aput v1, v2, v4

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_a
    aget p1, v2, v1

    if-le v0, v3, :cond_b

    aget v7, v2, v3

    :cond_b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    aget v3, v2, v8

    :cond_c
    if-ltz v7, :cond_e

    if-lt v7, p1, :cond_d

    goto :goto_4

    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end must greater than or equals start. start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",  end "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_4
    if-lez v3, :cond_f

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$w;

    invoke-direct {v0, p1, v7, v3}, Lcom/alibaba/fastjson/JSONPath$w;-><init>(III)V

    return-object v0

    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step must greater than zero : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d()[Lcom/alibaba/fastjson/JSONPath$a0;
    .locals 5

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$a0;

    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->p()Lcom/alibaba/fastjson/JSONPath$a0;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    array-length v3, v0

    if-ne v1, v3, :cond_0

    return-object v0

    :cond_0
    new-array v3, v1, [Lcom/alibaba/fastjson/JSONPath$a0;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_1
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONPath$v;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/JSONPath$v;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$v;->b(Lcom/alibaba/fastjson/JSONPath$v;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath$v;->c(Lcom/alibaba/fastjson/JSONPath$v;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    array-length v4, v0

    if-ne v3, v4, :cond_3

    mul-int/lit8 v4, v3, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lcom/alibaba/fastjson/JSONPath$a0;

    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    :cond_3
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    aput-object v1, v0, v2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;
    .locals 5

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x26

    if-ne v0, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->f()C

    move-result v0

    if-eq v0, v3, :cond_2

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->f()C

    move-result v0

    if-ne v0, v3, :cond_6

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v3, 0x28

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v3, 0x20

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->k(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$d;

    new-instance v2, Lcom/alibaba/fastjson/JSONPath$e;

    invoke-direct {v2, p1, v0, v4}, Lcom/alibaba/fastjson/JSONPath$e;-><init>(Lcom/alibaba/fastjson/JSONPath$d;Lcom/alibaba/fastjson/JSONPath$d;Z)V

    if-eqz v1, :cond_5

    iget-char p1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v0, 0x29

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_5
    move-object p1, v2

    :cond_6
    return-object p1
.end method

.method f()C
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method h()Z
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method i()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    return-void
.end method

.method j(Z)Lcom/alibaba/fastjson/JSONPath$a0;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath$l;->k(Z)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/alibaba/fastjson/JSONPath$a0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/alibaba/fastjson/JSONPath$a0;

    return-object p1

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$f;

    check-cast p1, Lcom/alibaba/fastjson/JSONPath$d;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONPath$f;-><init>(Lcom/alibaba/fastjson/JSONPath$d;)V

    return-object v0
.end method

.method k(Z)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v2, 0x3f

    const/16 v3, 0x28

    const/4 v5, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    move v1, v5

    :goto_0
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v2, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    const/16 v6, 0x22

    const/16 v7, 0x27

    const/16 v8, 0x40

    const/16 v9, 0x2e

    const/16 v10, 0x2f

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/16 v13, 0x5c

    const/16 v14, 0x5d

    if-nez v2, :cond_13

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/f;->g(C)Z

    move-result v3

    if-nez v3, :cond_13

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v3

    if-nez v3, :cond_13

    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v3, v13, :cond_13

    if-ne v3, v8, :cond_3

    goto/16 :goto_a

    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    sub-int/2addr v1, v5

    :goto_2
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v4, v14, :cond_6

    if-eq v4, v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v4

    if-nez v4, :cond_6

    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v4, v9, :cond_4

    if-nez v2, :cond_4

    if-nez v2, :cond_4

    if-eq v3, v7, :cond_4

    goto :goto_3

    :cond_4
    if-ne v4, v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    :goto_4
    sub-int/2addr v4, v5

    goto :goto_6

    :cond_7
    iget-char v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v4, v10, :cond_9

    if-ne v4, v9, :cond_8

    goto :goto_5

    :cond_8
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    goto :goto_6

    :cond_9
    :goto_5
    iget v4, v0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    goto :goto_4

    :goto_6
    iget-object v9, v0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v14, v16, -0x1

    if-ge v9, v14, :cond_b

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v8, :cond_a

    if-eq v10, v13, :cond_a

    if-ne v10, v6, :cond_b

    :cond_a
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v14

    goto :goto_8

    :cond_b
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    add-int/2addr v9, v5

    const/16 v14, 0x5d

    goto :goto_7

    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d
    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v11, :cond_11

    if-ne v3, v7, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v12, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_e
    const-string v3, "\\\\\\."

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v11, :cond_f

    const-string v3, "\\\\-"

    const-string v4, "-"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_10
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$v;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    return-object v2

    :cond_11
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->c(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$a0;

    move-result-object v1

    if-eqz p1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_12
    return-object v1

    :cond_13
    :goto_a
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v8, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    const/16 v4, 0x7c

    const/16 v8, 0x26

    const/16 v14, 0x20

    if-eqz v2, :cond_19

    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v12, 0x29

    if-ne v15, v12, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$s;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/alibaba/fastjson/JSONPath$s;-><init>(Ljava/lang/String;Z)V

    :goto_b
    iget-char v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v2, v14, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_b

    :cond_15
    if-eq v2, v8, :cond_16

    if-ne v2, v4, :cond_17

    :cond_16
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    :cond_17
    if-eqz p1, :cond_18

    const/16 v12, 0x5d

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_18
    return-object v1

    :cond_19
    const/16 v12, 0x5d

    if-eqz p1, :cond_20

    iget-char v15, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v15, v12, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "last"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$q;

    filled-new-array {v11}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPath$q;-><init>([I)V

    return-object v1

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$s;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5}, Lcom/alibaba/fastjson/JSONPath$s;-><init>(Ljava/lang/String;Z)V

    :goto_c
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_c

    :cond_1b
    if-eq v3, v8, :cond_1d

    if-ne v3, v4, :cond_1c

    goto :goto_e

    :cond_1c
    :goto_d
    const/16 v3, 0x29

    goto :goto_f

    :cond_1d
    :goto_e
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    goto :goto_d

    :goto_f
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_1e

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_1e
    if-eqz p1, :cond_1f

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_1f
    return-object v1

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    iget-char v12, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v15, 0x28

    if-ne v12, v15, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    const/16 v12, 0x29

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    move v12, v5

    goto :goto_10

    :cond_21
    const/4 v12, 0x0

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->o()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v11, :cond_22

    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v11, :cond_23

    :cond_22
    const/4 v7, 0x0

    goto/16 :goto_47

    :cond_23
    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v11, :cond_66

    sget-object v11, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v11, :cond_24

    goto/16 :goto_25

    :cond_24
    iget-char v11, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v16, 0x0

    if-eq v11, v7, :cond_51

    if-ne v11, v6, :cond_25

    goto/16 :goto_1c

    :cond_25
    invoke-static {v11}, Lcom/alibaba/fastjson/JSONPath$l;->g(C)Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->m()J

    move-result-wide v6

    iget-char v10, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const-wide/16 v16, 0x0

    if-ne v10, v9, :cond_26

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/fastjson/JSONPath$l;->l(J)D

    move-result-wide v9

    move-wide/from16 v21, v9

    goto :goto_11

    :cond_26
    move-wide/from16 v21, v16

    :goto_11
    cmpl-double v9, v21, v16

    if-nez v9, :cond_27

    new-instance v9, Lcom/alibaba/fastjson/JSONPath$k;

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move/from16 v20, v12

    move-wide/from16 v21, v6

    move-object/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$k;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_12

    :cond_27
    new-instance v9, Lcom/alibaba/fastjson/JSONPath$c;

    move-object/from16 v18, v9

    move-object/from16 v19, v3

    move/from16 v20, v12

    move-object/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$c;-><init>(Ljava/lang/String;ZDLcom/alibaba/fastjson/JSONPath$Operator;)V

    :goto_12
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_12

    :cond_28
    if-le v1, v5, :cond_29

    const/16 v1, 0x29

    if-ne v3, v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_29
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v1, v8, :cond_2a

    if-ne v1, v4, :cond_2b

    :cond_2a
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v9

    :cond_2b
    if-eqz v2, :cond_2c

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_2c
    if-eqz p1, :cond_2d

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_2d
    return-object v9

    :cond_2e
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v6, 0x24

    if-ne v1, v6, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->p()Lcom/alibaba/fastjson/JSONPath$a0;

    move-result-object v1

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$x;

    invoke-direct {v4, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$x;-><init>(Ljava/lang/String;ZLcom/alibaba/fastjson/JSONPath$a0;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    iput-boolean v5, v0, Lcom/alibaba/fastjson/JSONPath$l;->e:Z

    :goto_13
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_13

    :cond_2f
    if-eqz v2, :cond_30

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_30
    if-eqz p1, :cond_31

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_31
    return-object v4

    :cond_32
    if-ne v1, v10, :cond_38

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v10, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v4, 0x69

    if-ne v1, v4, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    const/4 v4, 0x2

    goto :goto_15

    :cond_33
    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$y;

    invoke-direct {v4, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$y;-><init>(Ljava/lang/String;ZLjava/util/regex/Pattern;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    if-eqz v2, :cond_34

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_34
    if-eqz p1, :cond_35

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_35
    return-object v4

    :cond_36
    if-ne v1, v13, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_37
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_38
    const/16 v6, 0x6e

    if-ne v1, v6, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v1

    const-string v5, "null"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_39

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$t;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$t;-><init>(Ljava/lang/String;Z)V

    goto :goto_16

    :cond_39
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_3a

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$s;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$s;-><init>(Ljava/lang/String;Z)V

    goto :goto_16

    :cond_3a
    move-object/from16 v1, v16

    :goto_16
    if-eqz v1, :cond_3d

    :goto_17
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_17

    :cond_3b
    if-eq v3, v8, :cond_3c

    if-ne v3, v4, :cond_3d

    :cond_3c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    :cond_3d
    if-eqz v2, :cond_3e

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_3e
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v1, :cond_3f

    return-object v1

    :cond_3f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_40
    const/16 v6, 0x74

    if-ne v1, v6, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v1

    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_41

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$f0;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v3, v12, v6, v5}, Lcom/alibaba/fastjson/JSONPath$f0;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_18

    :cond_41
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_42

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$f0;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v12, v5, v6}, Lcom/alibaba/fastjson/JSONPath$f0;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_18

    :cond_42
    move-object/from16 v1, v16

    :goto_18
    if-eqz v1, :cond_45

    :goto_19
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_19

    :cond_43
    if-eq v3, v8, :cond_44

    if-ne v3, v4, :cond_45

    :cond_44
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    :cond_45
    if-eqz v2, :cond_46

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_46
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v1, :cond_47

    return-object v1

    :cond_47
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_48
    const/16 v6, 0x66

    if-ne v1, v6, :cond_50

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v1

    const-string v6, "false"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_49

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$f0;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v3, v12, v6, v5}, Lcom/alibaba/fastjson/JSONPath$f0;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_1a

    :cond_49
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_4a

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$f0;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-direct {v1, v3, v12, v5, v6}, Lcom/alibaba/fastjson/JSONPath$f0;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    goto :goto_1a

    :cond_4a
    move-object/from16 v1, v16

    :goto_1a
    if-eqz v1, :cond_4d

    :goto_1b
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_1b

    :cond_4b
    if-eq v3, v8, :cond_4c

    if-ne v3, v4, :cond_4d

    :cond_4c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    :cond_4d
    if-eqz v2, :cond_4e

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_4e
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v1, :cond_4f

    return-object v1

    :cond_4f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_50
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_51
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->q()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_52

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$z;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v12, v1, v6}, Lcom/alibaba/fastjson/JSONPath$z;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    goto/16 :goto_24

    :cond_52
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_53

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$z;

    invoke-direct {v6, v3, v12, v1, v5}, Lcom/alibaba/fastjson/JSONPath$z;-><init>(Ljava/lang/String;ZLjava/lang/String;Z)V

    :goto_1d
    move-object v5, v6

    goto/16 :goto_24

    :cond_53
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v15, v6, :cond_55

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_54

    goto :goto_1e

    :cond_54
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$d0;

    invoke-direct {v5, v3, v12, v1, v15}, Lcom/alibaba/fastjson/JSONPath$d0;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    goto/16 :goto_24

    :cond_55
    :goto_1e
    const-string v6, "%%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v9, "%"

    const/4 v10, -0x1

    if-eq v7, v10, :cond_56

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_56
    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v6, :cond_57

    move/from16 v24, v5

    goto :goto_1f

    :cond_57
    const/16 v24, 0x0

    :goto_1f
    const/16 v6, 0x25

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v10, :cond_59

    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v5, :cond_58

    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_20

    :cond_58
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    :goto_20
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$d0;

    invoke-direct {v6, v3, v12, v1, v5}, Lcom/alibaba/fastjson/JSONPath$d0;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_1d

    :cond_59
    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_5c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_5a

    array-length v1, v9

    sub-int/2addr v1, v5

    new-array v6, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v9, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v23, v6

    :goto_21
    move-object/from16 v21, v16

    move-object/from16 v22, v21

    goto/16 :goto_23

    :cond_5a
    const/4 v7, 0x0

    array-length v1, v9

    sub-int/2addr v1, v5

    aget-object v1, v9, v1

    array-length v6, v9

    const/4 v10, 0x2

    if-le v6, v10, :cond_5b

    array-length v6, v9

    sub-int/2addr v6, v10

    new-array v10, v6, [Ljava/lang/String;

    invoke-static {v9, v5, v10, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v22, v1

    move-object/from16 v23, v10

    move-object/from16 v21, v16

    goto :goto_23

    :cond_5b
    move-object/from16 v22, v1

    move-object/from16 v21, v16

    move-object/from16 v23, v21

    goto :goto_23

    :cond_5c
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_5e

    array-length v1, v9

    if-ne v1, v5, :cond_5d

    aget-object v1, v9, v7

    :goto_22
    move-object/from16 v21, v1

    move-object/from16 v22, v16

    move-object/from16 v23, v22

    goto :goto_23

    :cond_5d
    move-object/from16 v23, v9

    goto :goto_21

    :cond_5e
    array-length v1, v9

    if-ne v1, v5, :cond_5f

    aget-object v1, v9, v7

    goto :goto_22

    :cond_5f
    array-length v1, v9

    const/4 v6, 0x2

    if-ne v1, v6, :cond_60

    aget-object v1, v9, v7

    aget-object v5, v9, v5

    move-object/from16 v21, v1

    move-object/from16 v22, v5

    move-object/from16 v23, v16

    goto :goto_23

    :cond_60
    aget-object v1, v9, v7

    array-length v10, v9

    sub-int/2addr v10, v5

    aget-object v10, v9, v10

    array-length v11, v9

    sub-int/2addr v11, v6

    new-array v6, v11, [Ljava/lang/String;

    invoke-static {v9, v5, v6, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v21, v1

    move-object/from16 v23, v6

    move-object/from16 v22, v10

    :goto_23
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$n;

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v24}, Lcom/alibaba/fastjson/JSONPath$n;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object v5, v1

    :goto_24
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_61

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_24

    :cond_61
    if-eq v1, v8, :cond_62

    if-ne v1, v4, :cond_63

    :cond_62
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v5

    :cond_63
    if-eqz v2, :cond_64

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_64
    if-eqz p1, :cond_65

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_65
    return-object v5

    :cond_66
    :goto_25
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_67

    move v1, v5

    :goto_26
    const/16 v6, 0x28

    goto :goto_27

    :cond_67
    const/4 v1, 0x0

    goto :goto_26

    :goto_27
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    new-instance v6, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->r()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    iget-char v7, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v9, 0x2c

    if-eq v7, v9, :cond_96

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v5

    move v10, v9

    move v11, v10

    :cond_68
    :goto_29
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_69

    if-eqz v9, :cond_68

    const/4 v9, 0x0

    goto :goto_29

    :cond_69
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-eqz v9, :cond_6a

    const-class v15, Ljava/lang/Byte;

    if-eq v13, v15, :cond_6a

    const-class v15, Ljava/lang/Short;

    if-eq v13, v15, :cond_6a

    const-class v15, Ljava/lang/Integer;

    if-eq v13, v15, :cond_6a

    const-class v15, Ljava/lang/Long;

    if-eq v13, v15, :cond_6a

    const/4 v9, 0x0

    const/4 v11, 0x0

    :cond_6a
    if-eqz v10, :cond_68

    const-class v15, Ljava/lang/String;

    if-eq v13, v15, :cond_68

    const/4 v10, 0x0

    goto :goto_29

    :cond_6b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_72

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_72

    if-eqz v1, :cond_6c

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$s;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$s;-><init>(Ljava/lang/String;Z)V

    goto :goto_2a

    :cond_6c
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$t;

    invoke-direct {v1, v3, v12}, Lcom/alibaba/fastjson/JSONPath$t;-><init>(Ljava/lang/String;Z)V

    :goto_2a
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_6d

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_2a

    :cond_6d
    if-eq v3, v8, :cond_6f

    if-ne v3, v4, :cond_6e

    goto :goto_2c

    :cond_6e
    :goto_2b
    const/16 v3, 0x29

    goto :goto_2d

    :cond_6f
    :goto_2c
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    goto :goto_2b

    :goto_2d
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_70

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_70
    if-eqz p1, :cond_71

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_71
    return-object v1

    :cond_72
    if-eqz v9, :cond_80

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_79

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v21

    if-eqz v1, :cond_73

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    :goto_2e
    move-object/from16 v23, v1

    goto :goto_2f

    :cond_73
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_2e

    :goto_2f
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$k;

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v23}, Lcom/alibaba/fastjson/JSONPath$k;-><init>(Ljava/lang/String;ZJLcom/alibaba/fastjson/JSONPath$Operator;)V

    :goto_30
    iget-char v3, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v3, v14, :cond_74

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_30

    :cond_74
    if-eq v3, v8, :cond_76

    if-ne v3, v4, :cond_75

    goto :goto_32

    :cond_75
    :goto_31
    const/16 v3, 0x29

    goto :goto_33

    :cond_76
    :goto_32
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v1

    goto :goto_31

    :goto_33
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_77

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_77
    if-eqz p1, :cond_78

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_78
    return-object v1

    :cond_79
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v7, v5, [J

    const/4 v9, 0x0

    :goto_34
    if-ge v9, v5, :cond_7a

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v10

    aput-wide v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_7a
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$i;

    invoke-direct {v5, v3, v12, v7, v1}, Lcom/alibaba/fastjson/JSONPath$i;-><init>(Ljava/lang/String;Z[JZ)V

    :goto_35
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_7b

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_35

    :cond_7b
    if-eq v1, v8, :cond_7d

    if-ne v1, v4, :cond_7c

    goto :goto_37

    :cond_7c
    :goto_36
    const/16 v1, 0x29

    goto :goto_38

    :cond_7d
    :goto_37
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v5

    goto :goto_36

    :goto_38
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_7e

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_7e
    if-eqz p1, :cond_7f

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_7f
    return-object v5

    :cond_80
    if-eqz v10, :cond_8d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_87

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v1, :cond_81

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_39

    :cond_81
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    :goto_39
    new-instance v6, Lcom/alibaba/fastjson/JSONPath$d0;

    invoke-direct {v6, v3, v12, v5, v1}, Lcom/alibaba/fastjson/JSONPath$d0;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    :goto_3a
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_82

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_3a

    :cond_82
    if-eq v1, v8, :cond_84

    if-ne v1, v4, :cond_83

    goto :goto_3c

    :cond_83
    :goto_3b
    const/16 v1, 0x29

    goto :goto_3d

    :cond_84
    :goto_3c
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v6

    goto :goto_3b

    :goto_3d
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_85

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_85
    if-eqz p1, :cond_86

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_86
    return-object v6

    :cond_87
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v6, Lcom/alibaba/fastjson/JSONPath$c0;

    invoke-direct {v6, v3, v12, v5, v1}, Lcom/alibaba/fastjson/JSONPath$c0;-><init>(Ljava/lang/String;Z[Ljava/lang/String;Z)V

    :goto_3e
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_88

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_3e

    :cond_88
    if-eq v1, v8, :cond_8a

    if-ne v1, v4, :cond_89

    goto :goto_40

    :cond_89
    :goto_3f
    const/16 v1, 0x29

    goto :goto_41

    :cond_8a
    :goto_40
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v6

    goto :goto_3f

    :goto_41
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_8b

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_8b
    if-eqz p1, :cond_8c

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_8c
    return-object v6

    :cond_8d
    const/4 v7, 0x0

    if-eqz v11, :cond_95

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-array v9, v5, [Ljava/lang/Long;

    :goto_42
    if-ge v7, v5, :cond_8f

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    if-eqz v10, :cond_8e

    invoke-static {v10}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    :cond_8e
    add-int/lit8 v7, v7, 0x1

    goto :goto_42

    :cond_8f
    new-instance v5, Lcom/alibaba/fastjson/JSONPath$j;

    invoke-direct {v5, v3, v12, v9, v1}, Lcom/alibaba/fastjson/JSONPath$j;-><init>(Ljava/lang/String;Z[Ljava/lang/Long;Z)V

    :goto_43
    iget-char v1, v0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v1, v14, :cond_90

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_43

    :cond_90
    if-eq v1, v8, :cond_92

    if-ne v1, v4, :cond_91

    goto :goto_45

    :cond_91
    :goto_44
    const/16 v9, 0x29

    goto :goto_46

    :cond_92
    :goto_45
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$l;->e(Lcom/alibaba/fastjson/JSONPath$d;)Lcom/alibaba/fastjson/JSONPath$d;

    move-result-object v5

    goto :goto_44

    :goto_46
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    if-eqz v2, :cond_93

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_93
    if-eqz p1, :cond_94

    const/16 v10, 0x5d

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    :cond_94
    return-object v5

    :cond_95
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_96
    const/4 v7, 0x0

    const/16 v9, 0x29

    const/16 v10, 0x5d

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->r()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :goto_47
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v15, v1, :cond_97

    move/from16 v25, v5

    goto :goto_48

    :cond_97
    move/from16 v25, v7

    :goto_48
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->r()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v2

    const-string v4, "and"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$l;->r()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_99

    if-eqz v2, :cond_99

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->m(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->m(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_98

    new-instance v4, Lcom/alibaba/fastjson/JSONPath$h;

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v21

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->D0(Ljava/lang/Number;)J

    move-result-wide v23

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v20, v12

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson/JSONPath$h;-><init>(Ljava/lang/String;ZJJZ)V

    return-object v4

    :cond_98
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_99
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9a
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, v0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected l(J)D
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double p1, p1

    add-double/2addr v0, p1

    return-wide v0
.end method

.method protected m()J
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_1
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method n()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illeal jsonpath syntax. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v2

    if-nez v2, :cond_5

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v2, v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 6

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->REG_MATCH:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    :cond_2
    const/16 v2, 0x21

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    :cond_3
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    :cond_5
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "between"

    const-string v3, "in"

    const-string v4, "rlike"

    const-string v5, "like"

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_a
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_c
    const-string v1, "nin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_d
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_e
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_f
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_12
    :goto_1
    return-object v0
.end method

.method p()Lcom/alibaba/fastjson/JSONPath$a0;
    .locals 9

    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$l;->g(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    add-int/lit8 v0, v0, -0x30

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$b;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$b;-><init>(I)V

    return-object v1

    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$v;

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v3, 0x24

    const/16 v4, 0x3f

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v0, v4, :cond_3

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$f;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->k(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONPath$d;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$f;-><init>(Lcom/alibaba/fastjson/JSONPath$d;)V

    return-object v0

    :cond_4
    const-string v3, "not support jsonpath : "

    const/16 v5, 0x5b

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_9

    const/16 v7, 0x2f

    if-ne v0, v7, :cond_5

    goto :goto_0

    :cond_5
    if-ne v0, v5, :cond_6

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$l;->j(Z)Lcom/alibaba/fastjson/JSONPath$a0;

    move-result-object v0

    return-object v0

    :cond_6
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->d:I

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alibaba/fastjson/JSONPath$v;

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    return-object v1

    :cond_7
    if-ne v0, v4, :cond_8

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$f;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->k(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONPath$d;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$f;-><init>(Lcom/alibaba/fastjson/JSONPath$d;)V

    return-object v0

    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    const/16 v4, 0x2a

    if-ne v0, v6, :cond_b

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v0, v6, :cond_b

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v8, v7, 0x3

    if-le v0, v8, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/2addr v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x5d

    if-ne v0, v7, :cond_a

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_a

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_a
    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    :goto_1
    iget-char v6, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v6, v4, :cond_18

    if-eqz v0, :cond_c

    if-ne v6, v5, :cond_c

    goto/16 :goto_3

    :cond_c
    invoke-static {v6}, Lcom/alibaba/fastjson/JSONPath$l;->g(C)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$l;->j(Z)Lcom/alibaba/fastjson/JSONPath$a0;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v4, 0x28

    if-ne v2, v4, :cond_17

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v2, 0x29

    if-ne v0, v2, :cond_16

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_e
    const-string v0, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2

    :cond_f
    const-string v0, "max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$o;->a:Lcom/alibaba/fastjson/JSONPath$o;

    return-object v0

    :cond_10
    const-string v0, "min"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$p;->a:Lcom/alibaba/fastjson/JSONPath$p;

    return-object v0

    :cond_11
    const-string v0, "keySet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$m;->a:Lcom/alibaba/fastjson/JSONPath$m;

    return-object v0

    :cond_12
    const-string v0, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$e0;->a:Lcom/alibaba/fastjson/JSONPath$e0;

    return-object v0

    :cond_13
    const-string v0, "floor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$g;->a:Lcom/alibaba/fastjson/JSONPath$g;

    return-object v0

    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_2
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$b0;->a:Lcom/alibaba/fastjson/JSONPath$b0;

    return-object v0

    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$v;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONPath$v;-><init>(Ljava/lang/String;Z)V

    return-object v2

    :cond_18
    :goto_3
    if-ne v6, v5, :cond_19

    goto :goto_4

    :cond_19
    move v1, v2

    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    :cond_1a
    if-eqz v0, :cond_1c

    if-eqz v1, :cond_1b

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->e:Lcom/alibaba/fastjson/JSONPath$g0;

    return-object v0

    :cond_1b
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->d:Lcom/alibaba/fastjson/JSONPath$g0;

    return-object v0

    :cond_1c
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$g0;->c:Lcom/alibaba/fastjson/JSONPath$g0;

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method q()Ljava/lang/String;
    .locals 4

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    if-eq v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$l;->b:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$l;->a(C)V

    return-object v1
.end method

.method protected r()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->s()V

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$l;->g(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x6e

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$l;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()V
    .locals 2

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$l;->c:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$l;->i()V

    goto :goto_0

    :cond_1
    return-void
.end method
