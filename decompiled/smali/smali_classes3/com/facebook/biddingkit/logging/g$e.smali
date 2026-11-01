.class Lcom/facebook/biddingkit/logging/g$e;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/logging/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/facebook/biddingkit/logging/g$d;

.field b:[C

.field c:I


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/logging/g$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/g$e;->a:Lcom/facebook/biddingkit/logging/g$d;

    const/16 p1, 0x400

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/g$e;->b:[C

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/g$e;->a:Lcom/facebook/biddingkit/logging/g$d;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/biddingkit/logging/g$e;->b:[C

    iget v3, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Lcom/facebook/biddingkit/logging/g$d;->a(Ljava/lang/String;)V

    iput v4, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/facebook/biddingkit/logging/g$e;->flush()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/biddingkit/logging/g$e;->d()V

    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 5

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    aget-char v1, p1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    iget v2, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    iget-object v3, p0, Lcom/facebook/biddingkit/logging/g$e;->b:[C

    array-length v4, v3

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    aput-char v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/biddingkit/logging/g$e;->c:I

    goto :goto_2

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/facebook/biddingkit/logging/g$e;->d()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
