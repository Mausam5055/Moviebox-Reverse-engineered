.class public abstract Lof/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lof/a$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private A([Lcom/tencent/tinker/android/dex/f$a;)[Lcom/tencent/tinker/android/dex/f$a;
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lcom/tencent/tinker/android/dex/f$a;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget v3, v2, Lcom/tencent/tinker/android/dex/f$a;->a:I

    invoke-virtual {p0, v3}, Lof/a;->z(I)I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/f$a;

    iget v2, v2, Lcom/tencent/tinker/android/dex/f$a;->b:I

    invoke-direct {v4, v3, v2}, Lcom/tencent/tinker/android/dex/f$a;-><init>(II)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private B([S)[S
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lof/b;

    invoke-direct {v0, p0}, Lof/b;-><init>(Lof/a;)V

    invoke-virtual {v0, p1}, Lof/b;->b([S)[S

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private E([Lcom/tencent/tinker/android/dex/f$b;)[Lcom/tencent/tinker/android/dex/f$b;
    .locals 6

    array-length v0, p1

    new-array v0, v0, [Lcom/tencent/tinker/android/dex/f$b;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    iget v3, v2, Lcom/tencent/tinker/android/dex/f$b;->a:I

    invoke-virtual {p0, v3}, Lof/a;->D(I)I

    move-result v3

    iget v4, v2, Lcom/tencent/tinker/android/dex/f$b;->c:I

    invoke-virtual {p0, v4}, Lof/a;->w(I)I

    move-result v4

    new-instance v5, Lcom/tencent/tinker/android/dex/f$b;

    iget v2, v2, Lcom/tencent/tinker/android/dex/f$b;->b:I

    invoke-direct {v5, v3, v2, v4}, Lcom/tencent/tinker/android/dex/f$b;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private F([I)[I
    .locals 4

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lof/a;->I(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private u([Lcom/tencent/tinker/android/dex/h$a;)[Lcom/tencent/tinker/android/dex/h$a;
    .locals 8

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/tencent/tinker/android/dex/h$a;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/tencent/tinker/android/dex/h$a;->a:[I

    array-length v4, v4

    new-array v5, v4, [I

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_1

    iget-object v7, v3, Lcom/tencent/tinker/android/dex/h$a;->a:[I

    aget v7, v7, v6

    invoke-virtual {p0, v7}, Lof/a;->J(I)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/tencent/tinker/android/dex/h$a;

    iget-object v6, v3, Lcom/tencent/tinker/android/dex/h$a;->b:[I

    iget v7, v3, Lcom/tencent/tinker/android/dex/h$a;->c:I

    iget v3, v3, Lcom/tencent/tinker/android/dex/h$a;->d:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/tencent/tinker/android/dex/h$a;-><init>([I[III)V

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    return-object p1
.end method

.method private y([B)[B
    .locals 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lof/a$a;

    invoke-direct {v1, p0, v0}, Lof/a$a;-><init>(Lof/a;Ljava/io/ByteArrayInputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length p1, p1

    add-int/lit16 p1, p1, 0x200

    invoke-direct {v2, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance p1, Lof/a$b;

    invoke-direct {p1, p0, v2}, Lof/a$b;-><init>(Lof/a;Ljava/io/ByteArrayOutputStream;)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    goto :goto_0

    :pswitch_1
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/p;->c(Lgf/a;)I

    move-result v4

    invoke-virtual {p0, v4}, Lof/a;->I(I)I

    move-result v4

    invoke-static {p1, v4}, Lcom/tencent/tinker/android/dex/p;->f(Lgf/b;I)I

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/p;->c(Lgf/a;)I

    move-result v4

    invoke-virtual {p0, v4}, Lof/a;->J(I)I

    move-result v4

    invoke-static {p1, v4}, Lcom/tencent/tinker/android/dex/p;->f(Lgf/b;I)I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-static {v1}, Lcom/tencent/tinker/android/dex/p;->c(Lgf/a;)I

    move-result v3

    invoke-virtual {p0, v3}, Lof/a;->I(I)I

    move-result v3

    invoke-static {p1, v3}, Lcom/tencent/tinker/android/dex/p;->f(Lgf/b;I)I

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/p;->a(Lgf/a;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/tencent/tinker/android/dex/p;->d(Lgf/b;I)I

    goto :goto_0

    :pswitch_3
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    goto :goto_0

    :pswitch_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v1}, Lcom/tencent/tinker/android/dex/p;->c(Lgf/a;)I

    move-result v3

    invoke-virtual {p0, v3}, Lof/a;->I(I)I

    move-result v3

    invoke-static {p1, v3}, Lcom/tencent/tinker/android/dex/p;->f(Lgf/b;I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract C(I)I
.end method

.method public abstract D(I)I
.end method

.method public abstract G(I)I
.end method

.method public abstract H(I)I
.end method

.method public abstract I(I)I
.end method

.method public abstract J(I)I
.end method

.method public abstract K(I)I
.end method

.method public a(Lcom/tencent/tinker/android/dex/a;)Lcom/tencent/tinker/android/dex/a;
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/a;->c:Lcom/tencent/tinker/android/dex/l;

    iget-object v1, v1, Lcom/tencent/tinker/android/dex/l;->b:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lof/a$e;

    new-instance v2, Lof/a$d;

    invoke-direct {v2, p0, v0}, Lof/a$d;-><init>(Lof/a;Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {v1, p0, v2}, Lof/a$e;-><init>(Lof/a;Lgf/b;)V

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/a;->b()Lcom/tencent/tinker/android/dex/n;

    move-result-object v2

    invoke-static {v1, v2}, Lof/a$e;->b(Lof/a$e;Lcom/tencent/tinker/android/dex/n;)V

    new-instance v1, Lcom/tencent/tinker/android/dex/a;

    iget v2, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    iget-byte v3, p1, Lcom/tencent/tinker/android/dex/a;->b:B

    new-instance v4, Lcom/tencent/tinker/android/dex/l;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/a;->c:Lcom/tencent/tinker/android/dex/l;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/tencent/tinker/android/dex/l;-><init>(I[B)V

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tinker/android/dex/a;-><init>(IBLcom/tencent/tinker/android/dex/l;)V

    return-object v1
.end method

.method public b(Lcom/tencent/tinker/android/dex/b;)Lcom/tencent/tinker/android/dex/b;
    .locals 4

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/b;->b:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/b;->b:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lof/a;->p(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/b;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-direct {v0, p1, v1}, Lcom/tencent/tinker/android/dex/b;-><init>(I[I)V

    return-object v0
.end method

.method public c(Lcom/tencent/tinker/android/dex/c;)Lcom/tencent/tinker/android/dex/c;
    .locals 4

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/c;->b:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/c;->b:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lof/a;->q(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/c;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-direct {v0, p1, v1}, Lcom/tencent/tinker/android/dex/c;-><init>(I[I)V

    return-object v0
.end method

.method public d(Lcom/tencent/tinker/android/dex/d;)Lcom/tencent/tinker/android/dex/d;
    .locals 9

    iget v0, p1, Lcom/tencent/tinker/android/dex/d;->b:I

    invoke-virtual {p0, v0}, Lof/a;->q(I)I

    move-result v3

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/d;->c:[[I

    array-length v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v4, 0x1

    aput v1, v2, v4

    const/4 v5, 0x0

    aput v0, v2, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v2, v5

    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_0

    aget-object v6, v0, v2

    iget-object v7, p1, Lcom/tencent/tinker/android/dex/d;->c:[[I

    aget-object v7, v7, v2

    aget v7, v7, v5

    invoke-virtual {p0, v7}, Lof/a;->z(I)I

    move-result v7

    aput v7, v6, v5

    aget-object v6, v0, v2

    iget-object v7, p1, Lcom/tencent/tinker/android/dex/d;->c:[[I

    aget-object v7, v7, v2

    aget v7, v7, v4

    invoke-virtual {p0, v7}, Lof/a;->q(I)I

    move-result v7

    aput v7, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/d;->d:[[I

    array-length v2, v2

    new-array v6, v1, [I

    aput v1, v6, v4

    aput v2, v6, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [[I

    move v2, v5

    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_1

    aget-object v7, v6, v2

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/d;->d:[[I

    aget-object v8, v8, v2

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Lof/a;->D(I)I

    move-result v8

    aput v8, v7, v5

    aget-object v7, v6, v2

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/d;->d:[[I

    aget-object v8, v8, v2

    aget v8, v8, v4

    invoke-virtual {p0, v8}, Lof/a;->q(I)I

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/tencent/tinker/android/dex/d;->e:[[I

    array-length v2, v2

    new-array v7, v1, [I

    aput v1, v7, v4

    aput v2, v7, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[I

    move v1, v5

    :goto_2
    array-length v2, v7

    if-ge v1, v2, :cond_2

    aget-object v2, v7, v1

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/d;->e:[[I

    aget-object v8, v8, v1

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Lof/a;->D(I)I

    move-result v8

    aput v8, v2, v5

    aget-object v2, v7, v1

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/d;->e:[[I

    aget-object v8, v8, v1

    aget v8, v8, v4

    invoke-virtual {p0, v8}, Lof/a;->r(I)I

    move-result v8

    aput v8, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v8, Lcom/tencent/tinker/android/dex/d;

    iget v2, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    move-object v1, v8

    move-object v4, v0

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tinker/android/dex/d;-><init>(II[[I[[I[[I)V

    return-object v8
.end method

.method public e(Lcom/tencent/tinker/android/dex/e;)Lcom/tencent/tinker/android/dex/e;
    .locals 2

    iget v0, p1, Lcom/tencent/tinker/android/dex/e;->b:I

    invoke-virtual {p0, v0}, Lof/a;->H(I)I

    move-result v0

    new-instance v1, Lcom/tencent/tinker/android/dex/e;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-direct {v1, p1, v0}, Lcom/tencent/tinker/android/dex/e;-><init>(II)V

    return-object v1
.end method

.method public f(Lcom/tencent/tinker/android/dex/f;)Lcom/tencent/tinker/android/dex/f;
    .locals 7

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/f;->b:[Lcom/tencent/tinker/android/dex/f$a;

    invoke-direct {p0, v0}, Lof/a;->A([Lcom/tencent/tinker/android/dex/f$a;)[Lcom/tencent/tinker/android/dex/f$a;

    move-result-object v3

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/f;->c:[Lcom/tencent/tinker/android/dex/f$a;

    invoke-direct {p0, v0}, Lof/a;->A([Lcom/tencent/tinker/android/dex/f$a;)[Lcom/tencent/tinker/android/dex/f$a;

    move-result-object v4

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/f;->d:[Lcom/tencent/tinker/android/dex/f$b;

    invoke-direct {p0, v0}, Lof/a;->E([Lcom/tencent/tinker/android/dex/f$b;)[Lcom/tencent/tinker/android/dex/f$b;

    move-result-object v5

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/f;->e:[Lcom/tencent/tinker/android/dex/f$b;

    invoke-direct {p0, v0}, Lof/a;->E([Lcom/tencent/tinker/android/dex/f$b;)[Lcom/tencent/tinker/android/dex/f$b;

    move-result-object v6

    new-instance v0, Lcom/tencent/tinker/android/dex/f;

    iget v2, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tinker/android/dex/f;-><init>(I[Lcom/tencent/tinker/android/dex/f$a;[Lcom/tencent/tinker/android/dex/f$a;[Lcom/tencent/tinker/android/dex/f$b;[Lcom/tencent/tinker/android/dex/f$b;)V

    return-object v0
.end method

.method public g(Lcom/tencent/tinker/android/dex/g;)Lcom/tencent/tinker/android/dex/g;
    .locals 11

    iget v0, p1, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-virtual {p0, v0}, Lof/a;->J(I)I

    move-result v3

    iget v0, p1, Lcom/tencent/tinker/android/dex/g;->d:I

    invoke-virtual {p0, v0}, Lof/a;->J(I)I

    move-result v5

    iget v0, p1, Lcom/tencent/tinker/android/dex/g;->e:I

    invoke-virtual {p0, v0}, Lof/a;->K(I)I

    move-result v6

    iget v0, p1, Lcom/tencent/tinker/android/dex/g;->f:I

    invoke-virtual {p0, v0}, Lof/a;->I(I)I

    move-result v7

    iget v0, p1, Lcom/tencent/tinker/android/dex/g;->g:I

    invoke-virtual {p0, v0}, Lof/a;->s(I)I

    move-result v8

    iget v0, p1, Lcom/tencent/tinker/android/dex/g;->h:I

    invoke-virtual {p0, v0}, Lof/a;->v(I)I

    move-result v9

    iget v0, p1, Lcom/tencent/tinker/android/dex/g;->i:I

    invoke-virtual {p0, v0}, Lof/a;->H(I)I

    move-result v10

    new-instance v0, Lcom/tencent/tinker/android/dex/g;

    iget v2, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    iget v4, p1, Lcom/tencent/tinker/android/dex/g;->c:I

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/tencent/tinker/android/dex/g;-><init>(IIIIIIIII)V

    return-object v0
.end method

.method public h(Lcom/tencent/tinker/android/dex/h;)Lcom/tencent/tinker/android/dex/h;
    .locals 10

    iget v0, p1, Lcom/tencent/tinker/android/dex/h;->e:I

    invoke-virtual {p0, v0}, Lof/a;->x(I)I

    move-result v6

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/h;->f:[S

    invoke-direct {p0, v0}, Lof/a;->B([S)[S

    move-result-object v7

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/h;->h:[Lcom/tencent/tinker/android/dex/h$a;

    invoke-direct {p0, v0}, Lof/a;->u([Lcom/tencent/tinker/android/dex/h$a;)[Lcom/tencent/tinker/android/dex/h$a;

    move-result-object v9

    new-instance v0, Lcom/tencent/tinker/android/dex/h;

    iget v2, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    iget v3, p1, Lcom/tencent/tinker/android/dex/h;->b:I

    iget v4, p1, Lcom/tencent/tinker/android/dex/h;->c:I

    iget v5, p1, Lcom/tencent/tinker/android/dex/h;->d:I

    iget-object v8, p1, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/tencent/tinker/android/dex/h;-><init>(IIIII[S[Lcom/tencent/tinker/android/dex/h$b;[Lcom/tencent/tinker/android/dex/h$a;)V

    return-object v0
.end method

.method public i(Lcom/tencent/tinker/android/dex/i;)Lcom/tencent/tinker/android/dex/i;
    .locals 4

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/i;->c:[I

    invoke-direct {p0, v0}, Lof/a;->F([I)[I

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/i;->d:[B

    invoke-direct {p0, v1}, Lof/a;->y([B)[B

    move-result-object v1

    new-instance v2, Lcom/tencent/tinker/android/dex/i;

    iget v3, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/i;->b:I

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/tencent/tinker/android/dex/i;-><init>(II[I[B)V

    return-object v2
.end method

.method public j(Lcom/tencent/tinker/android/dex/l;)Lcom/tencent/tinker/android/dex/l;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/l;->b:[B

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lof/a$e;

    new-instance v2, Lof/a$c;

    invoke-direct {v2, p0, v0}, Lof/a$c;-><init>(Lof/a;Ljava/io/ByteArrayOutputStream;)V

    invoke-direct {v1, p0, v2}, Lof/a$e;-><init>(Lof/a;Lgf/b;)V

    new-instance v2, Lcom/tencent/tinker/android/dex/n;

    const/16 v3, 0x1c

    invoke-direct {v2, p1, v3}, Lcom/tencent/tinker/android/dex/n;-><init>(Lcom/tencent/tinker/android/dex/l;I)V

    invoke-static {v1, v2}, Lof/a$e;->a(Lof/a$e;Lcom/tencent/tinker/android/dex/n;)V

    new-instance v1, Lcom/tencent/tinker/android/dex/l;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/tencent/tinker/android/dex/l;-><init>(I[B)V

    return-object v1
.end method

.method public k(Lcom/tencent/tinker/android/dex/o;)Lcom/tencent/tinker/android/dex/o;
    .locals 4

    iget v0, p1, Lcom/tencent/tinker/android/dex/o;->b:I

    invoke-virtual {p0, v0}, Lof/a;->J(I)I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/o;->c:I

    invoke-virtual {p0, v1}, Lof/a;->J(I)I

    move-result v1

    iget v2, p1, Lcom/tencent/tinker/android/dex/o;->d:I

    invoke-virtual {p0, v2}, Lof/a;->I(I)I

    move-result v2

    new-instance v3, Lcom/tencent/tinker/android/dex/o;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/tencent/tinker/android/dex/o;-><init>(IIII)V

    return-object v3
.end method

.method public l(Lcom/tencent/tinker/android/dex/MethodHandle;)Lcom/tencent/tinker/android/dex/MethodHandle;
    .locals 7

    iget-object v0, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->b:Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->d:I

    invoke-virtual {p0, v0}, Lof/a;->z(I)I

    move-result v0

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->d:I

    invoke-virtual {p0, v0}, Lof/a;->D(I)I

    move-result v0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/tencent/tinker/android/dex/MethodHandle;

    iget v2, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->b:Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;

    iget v4, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->c:I

    iget v6, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->e:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tinker/android/dex/MethodHandle;-><init>(ILcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;III)V

    return-object v0
.end method

.method public m(Lcom/tencent/tinker/android/dex/q;)Lcom/tencent/tinker/android/dex/q;
    .locals 4

    iget v0, p1, Lcom/tencent/tinker/android/dex/q;->b:I

    invoke-virtual {p0, v0}, Lof/a;->J(I)I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/q;->c:I

    invoke-virtual {p0, v1}, Lof/a;->G(I)I

    move-result v1

    iget v2, p1, Lcom/tencent/tinker/android/dex/q;->d:I

    invoke-virtual {p0, v2}, Lof/a;->I(I)I

    move-result v2

    new-instance v3, Lcom/tencent/tinker/android/dex/q;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/tencent/tinker/android/dex/q;-><init>(IIII)V

    return-object v3
.end method

.method public n(Lcom/tencent/tinker/android/dex/s;)Lcom/tencent/tinker/android/dex/s;
    .locals 4

    iget v0, p1, Lcom/tencent/tinker/android/dex/s;->b:I

    invoke-virtual {p0, v0}, Lof/a;->I(I)I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/s;->c:I

    invoke-virtual {p0, v1}, Lof/a;->J(I)I

    move-result v1

    iget v2, p1, Lcom/tencent/tinker/android/dex/s;->d:I

    invoke-virtual {p0, v2}, Lof/a;->K(I)I

    move-result v2

    new-instance v3, Lcom/tencent/tinker/android/dex/s;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-direct {v3, p1, v0, v1, v2}, Lcom/tencent/tinker/android/dex/s;-><init>(IIII)V

    return-object v3
.end method

.method public o(Lcom/tencent/tinker/android/dex/w;)Lcom/tencent/tinker/android/dex/w;
    .locals 4

    sget-object v0, Lcom/tencent/tinker/android/dex/w;->c:Lcom/tencent/tinker/android/dex/w;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/tencent/tinker/android/dex/w;->b:[S

    array-length v0, v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/w;->b:[S

    aget-short v3, v3, v2

    invoke-virtual {p0, v3}, Lof/a;->J(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/tinker/android/dex/w;

    iget p1, p1, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    invoke-direct {v0, p1, v1}, Lcom/tencent/tinker/android/dex/w;-><init>(I[S)V

    return-object v0
.end method

.method public abstract p(I)I
.end method

.method public abstract q(I)I
.end method

.method public abstract r(I)I
.end method

.method public abstract s(I)I
.end method

.method public abstract t(I)I
.end method

.method public abstract v(I)I
.end method

.method public abstract w(I)I
.end method

.method public abstract x(I)I
.end method

.method public abstract z(I)I
.end method
