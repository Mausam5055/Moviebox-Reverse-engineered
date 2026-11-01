.class public Lcv/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcv/a;


# instance fields
.field a:[B

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcv/f;-><init>()V

    iput-object p1, p0, Lcv/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 0

    iget-object p1, p0, Lcv/f;->a:[B

    if-nez p1, :cond_0

    iget-object p1, p0, Lcv/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcv/f;->a:[B

    :cond_0
    iget-object p1, p0, Lcv/f;->a:[B

    invoke-static {p2, p1, p3}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLbv/a;)V

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcv/f;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "text/plain"

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcv/f;->a:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcv/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcv/f;->a:[B

    :cond_0
    iget-object v0, p0, Lcv/f;->a:[B

    array-length v0, v0

    return v0
.end method

.method public r(Lcom/transsion/transfer/androidasync/p;Lbv/a;)V
    .locals 1

    new-instance v0, Lfv/f;

    invoke-direct {v0}, Lfv/f;-><init>()V

    invoke-virtual {v0, p1}, Lfv/f;->a(Lcom/transsion/transfer/androidasync/p;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p1

    new-instance v0, Lcv/f$a;

    invoke-direct {v0, p0, p2}, Lcv/f$a;-><init>(Lcv/f;Lbv/a;)V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/future/f;->f(Lcom/transsion/transfer/androidasync/future/g;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcv/f;->b:Ljava/lang/String;

    return-object v0
.end method
