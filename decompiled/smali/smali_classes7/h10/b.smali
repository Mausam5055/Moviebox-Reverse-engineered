.class final Lh10/b;
.super Lh10/a;


# instance fields
.field private final c:Lh10/x;

.field private final d:Z

.field private final e:Lh10/d;

.field private final f:I

.field private g:I

.field private final h:Lh10/b;

.field private i:Lh10/b;


# direct methods
.method constructor <init>(Lh10/x;Lh10/d;Lh10/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lh10/b;-><init>(Lh10/x;ZLh10/d;Lh10/b;)V

    return-void
.end method

.method constructor <init>(Lh10/x;ZLh10/d;Lh10/b;)V
    .locals 1

    const/high16 v0, 0x70000

    invoke-direct {p0, v0}, Lh10/a;-><init>(I)V

    iput-object p1, p0, Lh10/b;->c:Lh10/x;

    iput-boolean p2, p0, Lh10/b;->d:Z

    iput-object p3, p0, Lh10/b;->e:Lh10/d;

    iget p1, p3, Lh10/d;->b:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lh10/b;->f:I

    iput-object p4, p0, Lh10/b;->h:Lh10/b;

    if-eqz p4, :cond_1

    iput-object p0, p4, Lh10/b;->i:Lh10/b;

    :cond_1
    return-void
.end method

.method static g(Ljava/lang/String;[Lh10/b;I)I
    .locals 4

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    aget-object v3, p1, v2

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p0}, Lh10/b;->f(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static i(I[Lh10/b;ILh10/d;)V
    .locals 6

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p2, :cond_1

    aget-object v4, p1, v2

    if-nez v4, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3}, Lh10/b;->f(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p0}, Lh10/d;->k(I)Lh10/d;

    invoke-virtual {p3, v0}, Lh10/d;->i(I)Lh10/d;

    invoke-virtual {p3, p2}, Lh10/d;->g(I)Lh10/d;

    move p0, v1

    :goto_2
    if-ge p0, p2, :cond_4

    aget-object v0, p1, p0

    move v2, v1

    move-object v4, v3

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lh10/b;->d()V

    add-int/lit8 v2, v2, 0x1

    iget-object v4, v0, Lh10/b;->h:Lh10/b;

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    goto :goto_3

    :cond_2
    invoke-virtual {p3, v2}, Lh10/d;->k(I)Lh10/d;

    :goto_4
    if-eqz v4, :cond_3

    iget-object v0, v4, Lh10/b;->e:Lh10/d;

    iget-object v2, v0, Lh10/d;->a:[B

    iget v0, v0, Lh10/d;->b:I

    invoke-virtual {p3, v2, v1, v0}, Lh10/d;->h([BII)Lh10/d;

    iget-object v4, v4, Lh10/b;->i:Lh10/b;

    goto :goto_4

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lh10/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh10/b;->g:I

    iget-boolean v0, p0, Lh10/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh10/b;->e:Lh10/d;

    iget-object v1, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v1, p1}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lh10/d;->k(I)Lh10/d;

    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x73

    invoke-virtual {p1, v0, p2}, Lh10/d;->e(II)Lh10/d;

    goto/16 :goto_8

    :cond_1
    instance-of p1, p2, Ljava/lang/Byte;

    const/16 v0, 0x42

    if-eqz p1, :cond_2

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    iget-object v1, p0, Lh10/b;->c:Lh10/x;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-virtual {v1, p2}, Lh10/x;->l(I)Lh10/w;

    move-result-object p2

    iget p2, p2, Lh10/w;->a:I

    invoke-virtual {p1, v0, p2}, Lh10/d;->e(II)Lh10/d;

    goto/16 :goto_8

    :cond_2
    instance-of p1, p2, Ljava/lang/Boolean;

    const/16 v1, 0x5a

    if-eqz p1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lh10/b;->e:Lh10/d;

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v0, p1}, Lh10/x;->l(I)Lh10/w;

    move-result-object p1

    iget p1, p1, Lh10/w;->a:I

    invoke-virtual {p2, v1, p1}, Lh10/d;->e(II)Lh10/d;

    goto/16 :goto_8

    :cond_3
    instance-of p1, p2, Ljava/lang/Character;

    const/16 v2, 0x43

    if-eqz p1, :cond_4

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p2}, Lh10/x;->l(I)Lh10/w;

    move-result-object p2

    iget p2, p2, Lh10/w;->a:I

    invoke-virtual {p1, v2, p2}, Lh10/d;->e(II)Lh10/d;

    goto/16 :goto_8

    :cond_4
    instance-of p1, p2, Ljava/lang/Short;

    const/16 v3, 0x53

    if-eqz p1, :cond_5

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {v0, p2}, Lh10/x;->l(I)Lh10/w;

    move-result-object p2

    iget p2, p2, Lh10/w;->a:I

    invoke-virtual {p1, v3, p2}, Lh10/d;->e(II)Lh10/d;

    goto/16 :goto_8

    :cond_5
    instance-of p1, p2, Lh10/y;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    check-cast p2, Lh10/y;

    invoke-virtual {p2}, Lh10/y;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x63

    invoke-virtual {p1, v0, p2}, Lh10/d;->e(II)Lh10/d;

    goto/16 :goto_8

    :cond_6
    instance-of p1, p2, [B

    const/4 v4, 0x0

    const/16 v5, 0x5b

    if-eqz p1, :cond_7

    check-cast p2, [B

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    array-length v1, p2

    invoke-virtual {p1, v5, v1}, Lh10/d;->e(II)Lh10/d;

    array-length p1, p2

    :goto_0
    if-ge v4, p1, :cond_f

    aget-byte v1, p2, v4

    iget-object v2, p0, Lh10/b;->e:Lh10/d;

    iget-object v3, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v3, v1}, Lh10/x;->l(I)Lh10/w;

    move-result-object v1

    iget v1, v1, Lh10/w;->a:I

    invoke-virtual {v2, v0, v1}, Lh10/d;->e(II)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    instance-of p1, p2, [Z

    if-eqz p1, :cond_8

    check-cast p2, [Z

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lh10/d;->e(II)Lh10/d;

    array-length p1, p2

    :goto_1
    if-ge v4, p1, :cond_f

    aget-boolean v0, p2, v4

    iget-object v2, p0, Lh10/b;->e:Lh10/d;

    iget-object v3, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v3, v0}, Lh10/x;->l(I)Lh10/w;

    move-result-object v0

    iget v0, v0, Lh10/w;->a:I

    invoke-virtual {v2, v1, v0}, Lh10/d;->e(II)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    instance-of p1, p2, [S

    if-eqz p1, :cond_9

    check-cast p2, [S

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lh10/d;->e(II)Lh10/d;

    array-length p1, p2

    :goto_2
    if-ge v4, p1, :cond_f

    aget-short v0, p2, v4

    iget-object v1, p0, Lh10/b;->e:Lh10/d;

    iget-object v2, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v2, v0}, Lh10/x;->l(I)Lh10/w;

    move-result-object v0

    iget v0, v0, Lh10/w;->a:I

    invoke-virtual {v1, v3, v0}, Lh10/d;->e(II)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    instance-of p1, p2, [C

    if-eqz p1, :cond_a

    check-cast p2, [C

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lh10/d;->e(II)Lh10/d;

    array-length p1, p2

    :goto_3
    if-ge v4, p1, :cond_f

    aget-char v0, p2, v4

    iget-object v1, p0, Lh10/b;->e:Lh10/d;

    iget-object v3, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v3, v0}, Lh10/x;->l(I)Lh10/w;

    move-result-object v0

    iget v0, v0, Lh10/w;->a:I

    invoke-virtual {v1, v2, v0}, Lh10/d;->e(II)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    instance-of p1, p2, [I

    if-eqz p1, :cond_b

    check-cast p2, [I

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lh10/d;->e(II)Lh10/d;

    array-length p1, p2

    :goto_4
    if-ge v4, p1, :cond_f

    aget v0, p2, v4

    iget-object v1, p0, Lh10/b;->e:Lh10/d;

    iget-object v2, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v2, v0}, Lh10/x;->l(I)Lh10/w;

    move-result-object v0

    iget v0, v0, Lh10/w;->a:I

    const/16 v2, 0x49

    invoke-virtual {v1, v2, v0}, Lh10/d;->e(II)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    instance-of p1, p2, [J

    if-eqz p1, :cond_c

    check-cast p2, [J

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lh10/d;->e(II)Lh10/d;

    array-length p1, p2

    :goto_5
    if-ge v4, p1, :cond_f

    aget-wide v0, p2, v4

    iget-object v2, p0, Lh10/b;->e:Lh10/d;

    iget-object v3, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v3, v0, v1}, Lh10/x;->p(J)Lh10/w;

    move-result-object v0

    iget v0, v0, Lh10/w;->a:I

    const/16 v1, 0x4a

    invoke-virtual {v2, v1, v0}, Lh10/d;->e(II)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    instance-of p1, p2, [F

    if-eqz p1, :cond_d

    check-cast p2, [F

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lh10/d;->e(II)Lh10/d;

    array-length p1, p2

    :goto_6
    if-ge v4, p1, :cond_f

    aget v0, p2, v4

    iget-object v1, p0, Lh10/b;->e:Lh10/d;

    iget-object v2, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v2, v0}, Lh10/x;->k(F)Lh10/w;

    move-result-object v0

    iget v0, v0, Lh10/w;->a:I

    const/16 v2, 0x46

    invoke-virtual {v1, v2, v0}, Lh10/d;->e(II)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    instance-of p1, p2, [D

    if-eqz p1, :cond_e

    check-cast p2, [D

    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    array-length v0, p2

    invoke-virtual {p1, v5, v0}, Lh10/d;->e(II)Lh10/d;

    array-length p1, p2

    :goto_7
    if-ge v4, p1, :cond_f

    aget-wide v0, p2, v4

    iget-object v2, p0, Lh10/b;->e:Lh10/d;

    iget-object v3, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v3, v0, v1}, Lh10/x;->f(D)Lh10/w;

    move-result-object v0

    iget v0, v0, Lh10/w;->a:I

    const/16 v1, 0x44

    invoke-virtual {v2, v1, v0}, Lh10/d;->e(II)Lh10/d;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_e
    iget-object p1, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {p1, p2}, Lh10/x;->d(Ljava/lang/Object;)Lh10/w;

    move-result-object p1

    iget-object p2, p0, Lh10/b;->e:Lh10/d;

    iget v0, p1, Lh10/w;->b:I

    const-string v1, ".s.IFJDCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget p1, p1, Lh10/w;->a:I

    invoke-virtual {p2, v0, p1}, Lh10/d;->e(II)Lh10/d;

    :cond_f
    :goto_8
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lh10/a;
    .locals 2

    iget v0, p0, Lh10/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh10/b;->g:I

    iget-boolean v0, p0, Lh10/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh10/b;->e:Lh10/d;

    iget-object v1, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v1, p1}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lh10/d;->k(I)Lh10/d;

    :cond_0
    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v0, p2}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x40

    invoke-virtual {p1, v0, p2}, Lh10/d;->e(II)Lh10/d;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lh10/d;->k(I)Lh10/d;

    new-instance p1, Lh10/b;

    iget-object p2, p0, Lh10/b;->c:Lh10/x;

    iget-object v0, p0, Lh10/b;->e:Lh10/d;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lh10/b;-><init>(Lh10/x;Lh10/d;Lh10/b;)V

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lh10/a;
    .locals 4

    iget v0, p0, Lh10/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh10/b;->g:I

    iget-boolean v0, p0, Lh10/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh10/b;->e:Lh10/d;

    iget-object v1, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v1, p1}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lh10/d;->k(I)Lh10/d;

    :cond_0
    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    const/16 v0, 0x5b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lh10/d;->e(II)Lh10/d;

    new-instance p1, Lh10/b;

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    iget-object v2, p0, Lh10/b;->e:Lh10/d;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lh10/b;-><init>(Lh10/x;ZLh10/d;Lh10/b;)V

    return-object p1
.end method

.method public d()V
    .locals 4

    iget v0, p0, Lh10/b;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lh10/b;->e:Lh10/d;

    iget-object v1, v1, Lh10/d;->a:[B

    iget v2, p0, Lh10/b;->g:I

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lh10/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh10/b;->g:I

    iget-boolean v0, p0, Lh10/b;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh10/b;->e:Lh10/d;

    iget-object v1, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v1, p1}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lh10/d;->k(I)Lh10/d;

    :cond_0
    iget-object p1, p0, Lh10/b;->e:Lh10/d;

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v0, p2}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x65

    invoke-virtual {p1, v0, p2}, Lh10/d;->e(II)Lh10/d;

    move-result-object p1

    iget-object p2, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {p2, p3}, Lh10/x;->D(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lh10/d;->k(I)Lh10/d;

    return-void
.end method

.method f(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh10/b;->c:Lh10/x;

    invoke-virtual {v0, p1}, Lh10/x;->D(Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x8

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lh10/b;->e:Lh10/d;

    iget v1, v1, Lh10/d;->b:I

    add-int/2addr p1, v1

    iget-object v0, v0, Lh10/b;->h:Lh10/b;

    goto :goto_0

    :cond_1
    return p1
.end method

.method h(ILh10/d;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lh10/b;->d()V

    iget-object v3, v2, Lh10/b;->e:Lh10/d;

    iget v3, v3, Lh10/d;->b:I

    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    iget-object v3, v2, Lh10/b;->h:Lh10/b;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lh10/d;->k(I)Lh10/d;

    invoke-virtual {p2, v0}, Lh10/d;->i(I)Lh10/d;

    invoke-virtual {p2, v4}, Lh10/d;->k(I)Lh10/d;

    :goto_1
    if-eqz v3, :cond_1

    iget-object p1, v3, Lh10/b;->e:Lh10/d;

    iget-object v0, p1, Lh10/d;->a:[B

    iget p1, p1, Lh10/d;->b:I

    invoke-virtual {p2, v0, v1, p1}, Lh10/d;->h([BII)Lh10/d;

    iget-object v3, v3, Lh10/b;->i:Lh10/b;

    goto :goto_1

    :cond_1
    return-void
.end method
