.class Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field final synthetic d:Lcom/transsion/transfer/androidasync/util/ArrayDeque;


# direct methods
.method private constructor <init>(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->d:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->b(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->a:I

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->c(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)I

    move-result p1

    iput p1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/transfer/androidasync/util/ArrayDeque;Lcom/transsion/transfer/androidasync/util/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;-><init>(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->a:I

    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->a:I

    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->b:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->d:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->a(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->a:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->d:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-static {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->c(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)I

    move-result v1

    iget v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->b:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->a:I

    iput v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->d:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-static {v2}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->a(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->a:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->c:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->d:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-static {v1, v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->e(Lcom/transsion/transfer/androidasync/util/ArrayDeque;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->d:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-static {v1}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->a(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->a:I

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->d:Lcom/transsion/transfer/androidasync/util/ArrayDeque;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/util/ArrayDeque;->c(Lcom/transsion/transfer/androidasync/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->b:I

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/transfer/androidasync/util/ArrayDeque$a;->c:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
