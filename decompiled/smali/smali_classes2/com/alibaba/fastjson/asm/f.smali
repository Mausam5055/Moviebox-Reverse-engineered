.class public Lcom/alibaba/fastjson/asm/f;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(III)V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/asm/f;->d:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/f;->d:[I

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/asm/f;->c:I

    iget-object v2, p0, Lcom/alibaba/fastjson/asm/f;->d:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/asm/f;->d:[I

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/f;->d:[I

    iget v1, p0, Lcom/alibaba/fastjson/asm/f;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/asm/f;->c:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/asm/f;->c:I

    or-int p1, p2, p3

    aput p1, v0, v2

    return-void
.end method


# virtual methods
.method b(Lcom/alibaba/fastjson/asm/i;Lcom/alibaba/fastjson/asm/a;IZ)V
    .locals 1

    iget p1, p0, Lcom/alibaba/fastjson/asm/f;->a:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eqz p4, :cond_0

    iget p4, p2, Lcom/alibaba/fastjson/asm/a;->b:I

    const/high16 v0, 0x20000000

    invoke-direct {p0, p3, p4, v0}, Lcom/alibaba/fastjson/asm/f;->a(III)V

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/a;->f(I)Lcom/alibaba/fastjson/asm/a;

    goto :goto_0

    :cond_0
    iget p4, p2, Lcom/alibaba/fastjson/asm/a;->b:I

    const/high16 v0, 0x10000000

    invoke-direct {p0, p3, p4, v0}, Lcom/alibaba/fastjson/asm/f;->a(III)V

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    iget p1, p0, Lcom/alibaba/fastjson/asm/f;->b:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/a;->f(I)Lcom/alibaba/fastjson/asm/a;

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson/asm/f;->b:I

    sub-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/asm/a;->g(I)Lcom/alibaba/fastjson/asm/a;

    :goto_0
    return-void
.end method

.method c(Lcom/alibaba/fastjson/asm/i;I[B)V
    .locals 5

    iget p1, p0, Lcom/alibaba/fastjson/asm/f;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/alibaba/fastjson/asm/f;->a:I

    iput p2, p0, Lcom/alibaba/fastjson/asm/f;->b:I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/asm/f;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/asm/f;->d:[I

    add-int/lit8 v1, p1, 0x1

    aget v2, v0, p1

    add-int/lit8 p1, p1, 0x2

    aget v0, v0, v1

    const v1, 0xfffffff

    and-int/2addr v1, v0

    sub-int v2, p2, v2

    const/high16 v3, -0x10000000

    and-int/2addr v0, v3

    const/high16 v3, 0x10000000

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    int-to-byte v1, v2

    aput-byte v1, p3, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    add-int/lit8 v1, v1, 0x3

    ushr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    int-to-byte v0, v2

    aput-byte v0, p3, v1

    goto :goto_0

    :cond_1
    return-void
.end method
