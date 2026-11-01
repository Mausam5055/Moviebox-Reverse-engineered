.class public Ly00/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Ljava/io/File;

.field private b:[Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ly00/d;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ly00/d;->c:I

    iput-object p1, p0, Ly00/d;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ly00/d;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Ly00/d;->a([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Ly00/d;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, v0

    :goto_0
    array-length v3, p1

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    if-lez v2, :cond_1

    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v3, p0, Ly00/d;->b:[Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b()Ly00/c;
    .locals 5

    invoke-virtual {p0}, Ly00/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ly00/c;

    iget-object v1, p0, Ly00/d;->a:Ljava/io/File;

    iget-object v2, p0, Ly00/d;->b:[Ljava/lang/String;

    iget v3, p0, Ly00/d;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ly00/d;->c:I

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ly00/c;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Ly00/d;->c:I

    iget-object v1, p0, Ly00/d;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly00/d;->b()Ly00/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
