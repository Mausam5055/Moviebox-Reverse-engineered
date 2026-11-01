.class public Lff/a;
.super Ljava/lang/Object;

# interfaces
.implements Lgf/a;
.implements Lgf/b;


# static fields
.field private static final d:[S

.field private static final e:[Lcom/tencent/tinker/android/dex/h$b;

.field private static final f:[Lcom/tencent/tinker/android/dex/h$a;


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [S

    sput-object v1, Lff/a;->d:[S

    new-array v1, v0, [Lcom/tencent/tinker/android/dex/h$b;

    sput-object v1, Lff/a;->e:[Lcom/tencent/tinker/android/dex/h$b;

    new-array v0, v0, [Lcom/tencent/tinker/android/dex/h$a;

    sput-object v0, Lff/a;->f:[Lcom/tencent/tinker/android/dex/h$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Lff/a;->b:I

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff/a;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iput p1, p0, Lff/a;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lff/a;->c:Z

    return-void
.end method

.method private F(I[Lcom/tencent/tinker/android/dex/h$a;)[Lcom/tencent/tinker/android/dex/h$b;
    .locals 6

    new-array v0, p1, [Lcom/tencent/tinker/android/dex/h$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v3

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v4

    invoke-direct {p0, p2, v4}, Lff/a;->d([Lcom/tencent/tinker/android/dex/h$a;I)I

    move-result v4

    new-instance v5, Lcom/tencent/tinker/android/dex/h$b;

    invoke-direct {v5, v2, v3, v4}, Lcom/tencent/tinker/android/dex/h$b;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private T(Lcom/tencent/tinker/android/dex/h$a;)V
    .locals 5

    iget v0, p1, Lcom/tencent/tinker/android/dex/h$a;->c:I

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h$a;->a:[I

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/h$a;->b:[I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    array-length v3, v1

    neg-int v3, v3

    invoke-virtual {p0, v3}, Lff/a;->i0(I)V

    goto :goto_0

    :cond_0
    array-length v3, v1

    invoke-virtual {p0, v3}, Lff/a;->i0(I)V

    :goto_0
    const/4 v3, 0x0

    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lff/a;->m0(I)V

    aget v4, p1, v3

    invoke-virtual {p0, v4}, Lff/a;->m0(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lff/a;->m0(I)V

    :cond_2
    return-void
.end method

.method private U([Lcom/tencent/tinker/android/dex/h$a;)[I
    .locals 4

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    array-length v1, p1

    invoke-virtual {p0, v1}, Lff/a;->m0(I)V

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int/2addr v3, v0

    aput v3, v1, v2

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lff/a;->T(Lcom/tencent/tinker/android/dex/h$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b0([Lcom/tencent/tinker/android/dex/f$a;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    iget v4, v3, Lcom/tencent/tinker/android/dex/f$a;->a:I

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lff/a;->m0(I)V

    iget v2, v3, Lcom/tencent/tinker/android/dex/f$a;->a:I

    iget v3, v3, Lcom/tencent/tinker/android/dex/f$a;->b:I

    invoke-virtual {p0, v3}, Lff/a;->m0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lff/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v1, v0

    add-int/2addr v1, p1

    array-length p1, v0

    shr-int/lit8 p1, p1, 0x1

    add-int/2addr v1, p1

    new-array p1, v1, [B

    iget-object v1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private d([Lcom/tencent/tinker/android/dex/h$a;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    iget v1, v1, Lcom/tencent/tinker/android/dex/h$a;->d:I

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private e(I)[B
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    iget-object v1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private f0([Lcom/tencent/tinker/android/dex/f$b;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    iget v4, v3, Lcom/tencent/tinker/android/dex/f$b;->a:I

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Lff/a;->m0(I)V

    iget v2, v3, Lcom/tencent/tinker/android/dex/f$b;->a:I

    iget v4, v3, Lcom/tencent/tinker/android/dex/f$b;->b:I

    invoke-virtual {p0, v4}, Lff/a;->m0(I)V

    iget v3, v3, Lcom/tencent/tinker/android/dex/f$b;->c:I

    invoke-virtual {p0, v3}, Lff/a;->m0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k0([Lcom/tencent/tinker/android/dex/h$b;[I)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget v3, v2, Lcom/tencent/tinker/android/dex/h$b;->a:I

    invoke-virtual {p0, v3}, Lff/a;->c0(I)V

    iget v3, v2, Lcom/tencent/tinker/android/dex/h$b;->b:I

    invoke-virtual {p0, v3}, Lff/a;->o0(I)V

    iget v2, v2, Lcom/tencent/tinker/android/dex/h$b;->c:I

    aget v2, p2, v2

    invoke-virtual {p0, v2}, Lff/a;->o0(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n(I)Lcom/tencent/tinker/android/dex/h$a;
    .locals 6

    invoke-virtual {p0}, Lff/a;->D()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v5

    aput v5, v2, v4

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    new-instance v1, Lcom/tencent/tinker/android/dex/h$a;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/tencent/tinker/android/dex/h$a;-><init>([I[III)V

    return-object v1
.end method

.method private o()[Lcom/tencent/tinker/android/dex/h$a;
    .locals 5

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v1

    new-array v2, v1, [Lcom/tencent/tinker/android/dex/h$a;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-direct {p0, v4}, Lff/a;->n(I)Lcom/tencent/tinker/android/dex/h$a;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private v(I)[Lcom/tencent/tinker/android/dex/f$a;
    .locals 5

    new-array v0, p1, [Lcom/tencent/tinker/android/dex/f$a;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/f$a;

    invoke-direct {v4, v2, v3}, Lcom/tencent/tinker/android/dex/f$a;-><init>(II)V

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private z(I)[Lcom/tencent/tinker/android/dex/f$b;
    .locals 6

    new-array v0, p1, [Lcom/tencent/tinker/android/dex/f$b;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v3

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v4

    new-instance v5, Lcom/tencent/tinker/android/dex/f$b;

    invoke-direct {v5, v2, v3, v4}, Lcom/tencent/tinker/android/dex/f$b;-><init>(III)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()Lcom/tencent/tinker/android/dex/s;
    .locals 5

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v1

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/s;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/s;-><init>(IIII)V

    return-object v4
.end method

.method public B()S
    .locals 1

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public C(I)[S
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lff/a;->d:[S

    return-object p1

    :cond_0
    new-array v0, p1, [S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0}, Lff/a;->B()S

    move-result v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public D()I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tinker/android/dex/p;->a(Lgf/a;)I

    move-result v0

    return v0
.end method

.method public E()Lcom/tencent/tinker/android/dex/u;
    .locals 5

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lff/a;->H()I

    move-result v1

    new-array v2, v1, [C

    invoke-static {p0, v2}, Lcom/tencent/tinker/android/dex/r;->b(Lgf/a;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_0

    new-instance v1, Lcom/tencent/tinker/android/dex/u;

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/u;-><init>(ILjava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Declared length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t match decoded length of "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/tencent/tinker/android/dex/DexException;

    invoke-direct {v1, v0}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public G()Lcom/tencent/tinker/android/dex/w;
    .locals 3

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v1

    invoke-virtual {p0, v1}, Lff/a;->C(I)[S

    move-result-object v1

    new-instance v2, Lcom/tencent/tinker/android/dex/w;

    invoke-direct {v2, v0, v1}, Lcom/tencent/tinker/android/dex/w;-><init>(I[S)V

    return-object v2
.end method

.method public H()I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v0

    return v0
.end method

.method public I()I
    .locals 1

    invoke-static {p0}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public J()I
    .locals 2

    invoke-virtual {p0}, Lff/a;->B()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public K(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public L(I)V
    .locals 0

    invoke-direct {p0, p1}, Lff/a;->c(I)V

    invoke-virtual {p0, p1}, Lff/a;->K(I)V

    return-void
.end method

.method public M([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, v0}, Lff/a;->c(I)V

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iget v0, p0, Lff/a;->b:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lff/a;->b:I

    :cond_0
    return-void
.end method

.method public N([S)V
    .locals 3

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lff/a;->c(I)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Lff/a;->h0(S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iget v0, p0, Lff/a;->b:I

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lff/a;->b:I

    :cond_1
    return-void
.end method

.method public O(Lcom/tencent/tinker/android/dex/a;)I
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-byte v1, p1, Lcom/tencent/tinker/android/dex/a;->b:B

    invoke-virtual {p0, v1}, Lff/a;->writeByte(I)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/a;->c:Lcom/tencent/tinker/android/dex/l;

    invoke-virtual {p0, p1}, Lff/a;->Z(Lcom/tencent/tinker/android/dex/l;)I

    return v0
.end method

.method public P(Lcom/tencent/tinker/android/dex/b;)I
    .locals 4

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/b;->b:[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/b;->b:[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lff/a;->c0(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public Q(Lcom/tencent/tinker/android/dex/c;)I
    .locals 4

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/c;->b:[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/c;->b:[I

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lff/a;->c0(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public R(Lcom/tencent/tinker/android/dex/d;)I
    .locals 8

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/d;->b:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/d;->c:[[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/d;->d:[[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/d;->e:[[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/d;->c:[[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    aget v7, v6, v3

    invoke-virtual {p0, v7}, Lff/a;->c0(I)V

    aget v5, v6, v5

    invoke-virtual {p0, v5}, Lff/a;->c0(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/d;->d:[[I

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    aget v7, v6, v3

    invoke-virtual {p0, v7}, Lff/a;->c0(I)V

    aget v6, v6, v5

    invoke-virtual {p0, v6}, Lff/a;->c0(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/tencent/tinker/android/dex/d;->e:[[I

    array-length v1, p1

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    aget v6, v4, v3

    invoke-virtual {p0, v6}, Lff/a;->c0(I)V

    aget v4, v4, v5

    invoke-virtual {p0, v4}, Lff/a;->c0(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return v0
.end method

.method public S(Lcom/tencent/tinker/android/dex/e;)I
    .locals 1

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget p1, p1, Lcom/tencent/tinker/android/dex/e;->b:I

    invoke-virtual {p0, p1}, Lff/a;->c0(I)V

    return v0
.end method

.method public V(Lcom/tencent/tinker/android/dex/f;)I
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->b:[Lcom/tencent/tinker/android/dex/f$a;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->m0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->c:[Lcom/tencent/tinker/android/dex/f$a;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->m0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->d:[Lcom/tencent/tinker/android/dex/f$b;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->m0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->e:[Lcom/tencent/tinker/android/dex/f$b;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->m0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->b:[Lcom/tencent/tinker/android/dex/f$a;

    invoke-direct {p0, v1}, Lff/a;->b0([Lcom/tencent/tinker/android/dex/f$a;)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->c:[Lcom/tencent/tinker/android/dex/f$a;

    invoke-direct {p0, v1}, Lff/a;->b0([Lcom/tencent/tinker/android/dex/f$a;)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->d:[Lcom/tencent/tinker/android/dex/f$b;

    invoke-direct {p0, v1}, Lff/a;->f0([Lcom/tencent/tinker/android/dex/f$b;)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/f;->e:[Lcom/tencent/tinker/android/dex/f$b;

    invoke-direct {p0, p1}, Lff/a;->f0([Lcom/tencent/tinker/android/dex/f$b;)V

    return v0
.end method

.method public W(Lcom/tencent/tinker/android/dex/g;)I
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->c:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->d:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->e:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->f:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->g:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->h:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/g;->i:I

    invoke-virtual {p0, p1}, Lff/a;->c0(I)V

    return v0
.end method

.method public X(Lcom/tencent/tinker/android/dex/h;)I
    .locals 5

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/h;->b:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/h;->c:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/h;->d:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/h;->e:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h;->f:[S

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h;->f:[S

    invoke-virtual {p0, v1}, Lff/a;->N([S)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h;->f:[S

    array-length v1, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lff/a;->h0(S)V

    :cond_0
    iget-object v1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v2, p1, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v2}, Lff/a;->L(I)V

    iget-object v2, p1, Lcom/tencent/tinker/android/dex/h;->h:[Lcom/tencent/tinker/android/dex/h$a;

    invoke-direct {p0, v2}, Lff/a;->U([Lcom/tencent/tinker/android/dex/h$a;)[I

    move-result-object v2

    iget-object v3, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    iget-object v4, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    invoke-direct {p0, p1, v2}, Lff/a;->k0([Lcom/tencent/tinker/android/dex/h$b;[I)V

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    :cond_1
    return v0
.end method

.method public Y(Lcom/tencent/tinker/android/dex/i;)I
    .locals 4

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/i;->b:I

    invoke-virtual {p0, v1}, Lff/a;->m0(I)V

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/i;->c:[I

    array-length v1, v1

    invoke-virtual {p0, v1}, Lff/a;->m0(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p1, Lcom/tencent/tinker/android/dex/i;->c:[I

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Lff/a;->n0(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/tencent/tinker/android/dex/i;->d:[B

    invoke-virtual {p0, p1}, Lff/a;->M([B)V

    return v0
.end method

.method public Z(Lcom/tencent/tinker/android/dex/l;)I
    .locals 1

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/l;->b:[B

    invoke-virtual {p0, p1}, Lff/a;->M([B)V

    return v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a0(Lcom/tencent/tinker/android/dex/o;)I
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/o;->b:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/o;->c:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/o;->d:I

    invoke-virtual {p0, p1}, Lff/a;->c0(I)V

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/t;->a(I)I

    move-result v0

    iget-object v1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lff/a;->c(I)V

    :goto_0
    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p0, Lff/a;->b:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iput v0, p0, Lff/a;->b:I

    :cond_1
    return-void
.end method

.method public c0(I)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lff/a;->c(I)V

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iget v0, p0, Lff/a;->b:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lff/a;->b:I

    :cond_0
    return-void
.end method

.method public d0(Lcom/tencent/tinker/android/dex/MethodHandle;)I
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->b:Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;

    iget v1, v1, Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;->value:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->c:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->d:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/MethodHandle;->e:I

    invoke-virtual {p0, p1}, Lff/a;->o0(I)V

    return v0
.end method

.method public e0(Lcom/tencent/tinker/android/dex/q;)I
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/q;->b:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/q;->c:I

    invoke-virtual {p0, v1}, Lff/a;->o0(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/q;->d:I

    invoke-virtual {p0, p1}, Lff/a;->c0(I)V

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    return v0
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-void
.end method

.method public g0(Lcom/tencent/tinker/android/dex/s;)I
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v1, p1, Lcom/tencent/tinker/android/dex/s;->b:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget v1, p1, Lcom/tencent/tinker/android/dex/s;->c:I

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    iget p1, p1, Lcom/tencent/tinker/android/dex/s;->d:I

    invoke-virtual {p0, p1}, Lff/a;->c0(I)V

    return v0
.end method

.method public h()Lcom/tencent/tinker/android/dex/a;
    .locals 6

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->readByte()B

    move-result v1

    iget-object v2, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    new-instance v3, Lcom/tencent/tinker/android/dex/n;

    const/16 v4, 0x1d

    invoke-direct {v3, p0, v4}, Lcom/tencent/tinker/android/dex/n;-><init>(Lgf/a;I)V

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dex/n;->w()V

    new-instance v3, Lcom/tencent/tinker/android/dex/a;

    new-instance v4, Lcom/tencent/tinker/android/dex/l;

    invoke-direct {p0, v2}, Lff/a;->e(I)[B

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/tencent/tinker/android/dex/l;-><init>(I[B)V

    invoke-direct {v3, v0, v1, v4}, Lcom/tencent/tinker/android/dex/a;-><init>(IBLcom/tencent/tinker/android/dex/l;)V

    return-object v3
.end method

.method public h0(S)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lff/a;->c(I)V

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iget v0, p0, Lff/a;->b:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lff/a;->b:I

    :cond_0
    return-void
.end method

.method public i()Lcom/tencent/tinker/android/dex/b;
    .locals 5

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/tinker/android/dex/b;

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/b;-><init>(I[I)V

    return-object v1
.end method

.method public i0(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/p;->d(Lgf/b;I)I

    return-void
.end method

.method public j()Lcom/tencent/tinker/android/dex/c;
    .locals 5

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/tinker/android/dex/c;

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/c;-><init>(I[I)V

    return-object v1
.end method

.method public j0(Lcom/tencent/tinker/android/dex/u;)I
    .locals 2

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    :try_start_0
    iget-object v1, p1, Lcom/tencent/tinker/android/dex/u;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lff/a;->m0(I)V

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/u;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tinker/android/dex/r;->d(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lff/a;->M([B)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lff/a;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public k()Lcom/tencent/tinker/android/dex/d;
    .locals 12

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v1

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x1

    aput v5, v6, v7

    const/4 v8, 0x0

    aput v0, v6, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    move v9, v8

    :goto_0
    if-ge v9, v0, :cond_0

    aget-object v10, v6, v9

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v11

    aput v11, v10, v8

    aget-object v10, v6, v9

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v11

    aput v11, v10, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v5, [I

    aput v5, v0, v7

    aput v1, v0, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v9, v8

    :goto_1
    if-ge v9, v1, :cond_1

    aget-object v10, v0, v9

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v11

    aput v11, v10, v8

    aget-object v10, v0, v9

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v11

    aput v11, v10, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v5, [I

    aput v5, v1, v7

    aput v4, v1, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[I

    move v1, v8

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v5, v9, v1

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v10

    aput v10, v5, v8

    aget-object v5, v9, v1

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v10

    aput v10, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v7, Lcom/tencent/tinker/android/dex/d;

    move-object v1, v7

    move-object v4, v6

    move-object v5, v0

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tinker/android/dex/d;-><init>(II[[I[[I[[I)V

    return-object v7
.end method

.method public l(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public l0(Lcom/tencent/tinker/android/dex/w;)I
    .locals 4

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/w;->b:[S

    array-length v1, p1

    invoke-virtual {p0, v1}, Lff/a;->c0(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-short v3, p1, v2

    invoke-virtual {p0, v3}, Lff/a;->h0(S)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public m()Lcom/tencent/tinker/android/dex/e;
    .locals 3

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v1

    new-instance v2, Lcom/tencent/tinker/android/dex/e;

    invoke-direct {v2, v0, v1}, Lcom/tencent/tinker/android/dex/e;-><init>(II)V

    return-object v2
.end method

.method public m0(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    return-void
.end method

.method public n0(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lff/a;->m0(I)V

    return-void
.end method

.method public o0(I)V
    .locals 3

    int-to-short v0, p1

    const v1, 0xffff

    and-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0}, Lff/a;->h0(S)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an unsigned short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()Lcom/tencent/tinker/android/dex/f;
    .locals 9

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v1

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v3

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v4

    invoke-direct {p0, v0}, Lff/a;->v(I)[Lcom/tencent/tinker/android/dex/f$a;

    move-result-object v0

    invoke-direct {p0, v1}, Lff/a;->v(I)[Lcom/tencent/tinker/android/dex/f$a;

    move-result-object v5

    invoke-direct {p0, v3}, Lff/a;->z(I)[Lcom/tencent/tinker/android/dex/f$b;

    move-result-object v6

    invoke-direct {p0, v4}, Lff/a;->z(I)[Lcom/tencent/tinker/android/dex/f$b;

    move-result-object v7

    new-instance v8, Lcom/tencent/tinker/android/dex/f;

    move-object v1, v8

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tinker/android/dex/f;-><init>(I[Lcom/tencent/tinker/android/dex/f$a;[Lcom/tencent/tinker/android/dex/f$a;[Lcom/tencent/tinker/android/dex/f$b;[Lcom/tencent/tinker/android/dex/f$b;)V

    return-object v8
.end method

.method public q()Lcom/tencent/tinker/android/dex/g;
    .locals 11

    invoke-virtual {p0}, Lff/a;->f()I

    move-result v1

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v3

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v4

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v5

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v6

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v7

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v8

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v9

    new-instance v10, Lcom/tencent/tinker/android/dex/g;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/tencent/tinker/android/dex/g;-><init>(IIIIIIIII)V

    return-object v10
.end method

.method public r()Lcom/tencent/tinker/android/dex/h;
    .locals 11

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v3

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v4

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v5

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v6

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v1

    invoke-virtual {p0, v1}, Lff/a;->C(I)[S

    move-result-object v7

    if-lez v0, :cond_1

    array-length v1, v7

    const/4 v8, 0x1

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lff/a;->K(I)V

    :cond_0
    iget-object v1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    mul-int/lit8 v8, v0, 0x8

    invoke-virtual {p0, v8}, Lff/a;->K(I)V

    invoke-direct {p0}, Lff/a;->o()[Lcom/tencent/tinker/android/dex/h$a;

    move-result-object v8

    iget-object v9, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->position()I

    move-result v9

    iget-object v10, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v8}, Lff/a;->F(I[Lcom/tencent/tinker/android/dex/h$a;)[Lcom/tencent/tinker/android/dex/h$b;

    move-result-object v0

    iget-object v1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    move-object v9, v8

    move-object v8, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lff/a;->e:[Lcom/tencent/tinker/android/dex/h$b;

    sget-object v1, Lff/a;->f:[Lcom/tencent/tinker/android/dex/h$a;

    move-object v8, v0

    move-object v9, v1

    :goto_0
    new-instance v0, Lcom/tencent/tinker/android/dex/h;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/tencent/tinker/android/dex/h;-><init>(IIIII[S[Lcom/tencent/tinker/android/dex/h$b;[Lcom/tencent/tinker/android/dex/h$a;)V

    return-object v0
.end method

.method public readByte()B
    .locals 1

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public s()Lcom/tencent/tinker/android/dex/i;
    .locals 7

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v1

    invoke-virtual {p0}, Lff/a;->H()I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {p0}, Lff/a;->I()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lff/a$a;

    invoke-direct {v2, p0, v4}, Lff/a$a;-><init>(Lff/a;Ljava/io/ByteArrayOutputStream;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lff/a;->readByte()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x9

    if-eq v5, v6, :cond_2

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lff/a;->H()I

    move-result v5

    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lff/a;->H()I

    move-result v6

    invoke-static {v2, v6}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    invoke-virtual {p0}, Lff/a;->I()I

    move-result v6

    invoke-static {v2, v6}, Lcom/tencent/tinker/android/dex/p;->f(Lgf/b;I)I

    invoke-virtual {p0}, Lff/a;->I()I

    move-result v6

    invoke-static {v2, v6}, Lcom/tencent/tinker/android/dex/p;->f(Lgf/b;I)I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lff/a;->I()I

    move-result v5

    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/p;->f(Lgf/b;I)I

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lff/a;->D()I

    move-result v5

    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/p;->d(Lgf/b;I)I

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lff/a;->H()I

    move-result v5

    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/p;->e(Lgf/b;I)I

    goto :goto_1

    :pswitch_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v5, Lcom/tencent/tinker/android/dex/i;

    invoke-direct {v5, v0, v1, v3, v2}, Lcom/tencent/tinker/android/dex/i;-><init>(II[I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v5

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lff/a;->I()I

    move-result v5

    invoke-static {v2, v5}, Lcom/tencent/tinker/android/dex/p;->f(Lgf/b;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_3
    throw v0

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

.method public t()Lcom/tencent/tinker/android/dex/l;
    .locals 3

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    new-instance v1, Lcom/tencent/tinker/android/dex/n;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lcom/tencent/tinker/android/dex/n;-><init>(Lgf/a;I)V

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dex/n;->w()V

    new-instance v1, Lcom/tencent/tinker/android/dex/l;

    invoke-direct {p0, v0}, Lff/a;->e(I)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/tinker/android/dex/l;-><init>(I[B)V

    return-object v1
.end method

.method public u()Lcom/tencent/tinker/android/dex/o;
    .locals 5

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v1

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/o;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/o;-><init>(IIII)V

    return-object v4
.end method

.method public w()I
    .locals 1

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public writeByte(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lff/a;->c(I)V

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iget v0, p0, Lff/a;->b:I

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    iput p1, p0, Lff/a;->b:I

    :cond_0
    return-void
.end method

.method public x()Lcom/tencent/tinker/android/dex/MethodHandle;
    .locals 7

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;->fromValue(I)Lcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;

    move-result-object v3

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v4

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v5

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v6

    new-instance v0, Lcom/tencent/tinker/android/dex/MethodHandle;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/tinker/android/dex/MethodHandle;-><init>(ILcom/tencent/tinker/android/dex/MethodHandle$MethodHandleType;III)V

    return-object v0
.end method

.method public y()Lcom/tencent/tinker/android/dex/q;
    .locals 5

    iget-object v0, p0, Lff/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v1

    invoke-virtual {p0}, Lff/a;->J()I

    move-result v2

    invoke-virtual {p0}, Lff/a;->w()I

    move-result v3

    new-instance v4, Lcom/tencent/tinker/android/dex/q;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tinker/android/dex/q;-><init>(IIII)V

    return-object v4
.end method
