.class public Ljf/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final d:[I


# instance fields
.field private a:[I

.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Ljf/a;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Ljf/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ljf/a;->d:[I

    iput-object p1, p0, Ljf/a;->a:[I

    iput-object p1, p0, Ljf/a;->b:[I

    goto :goto_0

    :cond_0
    new-array p1, p1, [I

    iput-object p1, p0, Ljf/a;->a:[I

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Ljf/a;->b:[I

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Ljf/a;->c:I

    return-void
.end method

.method private b([III)[I
    .locals 2

    array-length v0, p1

    if-gt p2, v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    if-le v0, v1, :cond_0

    invoke-static {p2}, Ljf/a;->j(I)I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    aput p3, p1, p2

    return-object p1

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad currentSize, originalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentSize: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private c([III)I
    .locals 3

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    aget v2, p1, v1

    if-ge v2, p3, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p2, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p1, v0

    return p1
.end method

.method public static j(I)I
    .locals 1

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method private l([IIII)[I
    .locals 2

    array-length v0, p1

    if-gt p2, v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p3, 0x1

    sub-int/2addr p2, p3

    invoke-static {p1, p3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p4, p1, p3

    return-object p1

    :cond_0
    invoke-static {p2}, Ljf/a;->j(I)I

    move-result p2

    new-array p2, p2, [I

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p4, p2, p3

    add-int/lit8 p4, p3, 0x1

    array-length v0, p1

    sub-int/2addr v0, p3

    invoke-static {p1, p3, p2, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad currentSize, originalSize: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentSize: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method


# virtual methods
.method public a(II)V
    .locals 3

    iget v0, p0, Ljf/a;->c:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljf/a;->a:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Ljf/a;->n(II)V

    return-void

    :cond_0
    iget-object v1, p0, Ljf/a;->a:[I

    invoke-direct {p0, v1, v0, p1}, Ljf/a;->b([III)[I

    move-result-object p1

    iput-object p1, p0, Ljf/a;->a:[I

    iget-object p1, p0, Ljf/a;->b:[I

    iget v0, p0, Ljf/a;->c:I

    invoke-direct {p0, p1, v0, p2}, Ljf/a;->b([III)[I

    move-result-object p1

    iput-object p1, p0, Ljf/a;->b:[I

    iget p1, p0, Ljf/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljf/a;->c:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljf/a;->f()Ljf/a;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljf/a;->c:I

    return-void
.end method

.method public f()Ljf/a;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljf/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Ljf/a;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Ljf/a;->a:[I

    iget-object v0, p0, Ljf/a;->b:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Ljf/a;->b:[I
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :catch_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public g(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljf/a;->i(II)I

    move-result p1

    return p1
.end method

.method public i(II)I
    .locals 2

    iget-object v0, p0, Ljf/a;->a:[I

    iget v1, p0, Ljf/a;->c:I

    invoke-direct {p0, v0, v1, p1}, Ljf/a;->c([III)I

    move-result p1

    if-gez p1, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Ljf/a;->b:[I

    aget p1, p2, p1

    return p1
.end method

.method public k(I)I
    .locals 2

    iget-object v0, p0, Ljf/a;->a:[I

    iget v1, p0, Ljf/a;->c:I

    invoke-direct {p0, v0, v1, p1}, Ljf/a;->c([III)I

    move-result p1

    return p1
.end method

.method public m(I)I
    .locals 1

    iget-object v0, p0, Ljf/a;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public n(II)V
    .locals 3

    iget-object v0, p0, Ljf/a;->a:[I

    iget v1, p0, Ljf/a;->c:I

    invoke-direct {p0, v0, v1, p1}, Ljf/a;->c([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Ljf/a;->b:[I

    aput p2, p1, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    iget-object v1, p0, Ljf/a;->a:[I

    iget v2, p0, Ljf/a;->c:I

    invoke-direct {p0, v1, v2, v0, p1}, Ljf/a;->l([IIII)[I

    move-result-object p1

    iput-object p1, p0, Ljf/a;->a:[I

    iget-object p1, p0, Ljf/a;->b:[I

    iget v1, p0, Ljf/a;->c:I

    invoke-direct {p0, p1, v1, v0, p2}, Ljf/a;->l([IIII)[I

    move-result-object p1

    iput-object p1, p0, Ljf/a;->b:[I

    iget p1, p0, Ljf/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljf/a;->c:I

    :goto_0
    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Ljf/a;->c:I

    return v0
.end method

.method public p(I)I
    .locals 1

    iget-object v0, p0, Ljf/a;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljf/a;->o()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ljf/a;->c:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljf/a;->c:I

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Ljf/a;->m(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljf/a;->p(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
