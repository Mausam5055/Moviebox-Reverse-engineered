.class final Lh10/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh10/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:[Lh10/c;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lh10/c;

    iput-object v0, p0, Lh10/c$a;->b:[Lh10/c;

    return-void
.end method

.method private a(Lh10/c;)V
    .locals 4

    iget v0, p0, Lh10/c$a;->a:I

    iget-object v1, p0, Lh10/c$a;->b:[Lh10/c;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, 0x6

    new-array v2, v2, [Lh10/c;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lh10/c$a;->b:[Lh10/c;

    :cond_0
    iget-object v0, p0, Lh10/c$a;->b:[Lh10/c;

    iget v1, p0, Lh10/c$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lh10/c$a;->a:I

    aput-object p1, v0, v1

    return-void
.end method

.method private c(Lh10/c;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lh10/c$a;->a:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lh10/c$a;->b:[Lh10/c;

    aget-object v2, v2, v1

    iget-object v2, v2, Lh10/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lh10/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method b(Lh10/c;)V
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lh10/c$a;->c(Lh10/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lh10/c$a;->a(Lh10/c;)V

    :cond_0
    iget-object p1, p1, Lh10/c;->c:Lh10/c;

    goto :goto_0

    :cond_1
    return-void
.end method

.method d()[Lh10/c;
    .locals 4

    iget v0, p0, Lh10/c$a;->a:I

    new-array v1, v0, [Lh10/c;

    iget-object v2, p0, Lh10/c$a;->b:[Lh10/c;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
