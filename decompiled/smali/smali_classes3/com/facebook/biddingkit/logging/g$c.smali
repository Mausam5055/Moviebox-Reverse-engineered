.class Lcom/facebook/biddingkit/logging/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/biddingkit/logging/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/logging/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/facebook/biddingkit/logging/g$d;

.field b:I


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/logging/g$d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/biddingkit/logging/g$c;->a:Lcom/facebook/biddingkit/logging/g$d;

    iput p2, p0, Lcom/facebook/biddingkit/logging/g$c;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/logging/g$c;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/g$c;->a:Lcom/facebook/biddingkit/logging/g$d;

    invoke-interface {v0, p1}, Lcom/facebook/biddingkit/logging/g$d;->a(Ljava/lang/String;)V

    iget p1, p0, Lcom/facebook/biddingkit/logging/g$c;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/biddingkit/logging/g$c;->b:I

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/logging/g$c;->a:Lcom/facebook/biddingkit/logging/g$d;

    invoke-interface {v0}, Lcom/facebook/biddingkit/logging/g$d;->flush()V

    return-void
.end method
