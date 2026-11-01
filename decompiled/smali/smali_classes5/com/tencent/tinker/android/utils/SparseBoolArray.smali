.class public Lcom/tencent/tinker/android/utils/SparseBoolArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/utils/SparseBoolArray$KeyNotFoundException;
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:[Z


# instance fields
.field private a:[I

.field private b:[Z

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/tencent/tinker/android/utils/SparseBoolArray;->d:[I

    new-array v0, v0, [Z

    sput-object v0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->e:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/tencent/tinker/android/utils/SparseBoolArray;->d:[I

    iput-object p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    sget-object p1, Lcom/tencent/tinker/android/utils/SparseBoolArray;->e:[Z

    iput-object p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b:[Z

    goto :goto_0

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b:[Z

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    return-void
.end method

.method private a([III)I
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

.method private static d(I)I
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

.method private f([ZIIZ)[Z
    .locals 2

    array-length v0, p1

    if-gt p2, v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, p3, 0x1

    sub-int/2addr p2, p3

    invoke-static {p1, p3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-boolean p4, p1, p3

    return-object p1

    :cond_0
    invoke-static {p2}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->d(I)I

    move-result p2

    new-array p2, p2, [Z

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-boolean p4, p2, p3

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

.method private g([IIII)[I
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
    invoke-static {p2}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->d(I)I

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
.method public b()Lcom/tencent/tinker/android/utils/SparseBoolArray;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tinker/android/utils/SparseBoolArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    iget-object v0, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, v1, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b:[Z
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

.method public c(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->e(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b()Lcom/tencent/tinker/android/utils/SparseBoolArray;

    move-result-object v0

    return-object v0
.end method

.method public e(I)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    iget v1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a([III)I

    move-result p1

    return p1
.end method

.method public i(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public j(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    iget v1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b:[Z

    aput-boolean p2, p1, v0

    goto :goto_0

    :cond_0
    not-int v0, v0

    iget-object v1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    iget v2, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->g([IIII)[I

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->a:[I

    iget-object p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b:[Z

    iget v1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->f([ZIIZ)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b:[Z

    iget p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    :goto_0
    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    return v0
.end method

.method public l(I)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->b:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->k()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/tencent/tinker/android/utils/SparseBoolArray;->c:I

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->i(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/android/utils/SparseBoolArray;->l(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
