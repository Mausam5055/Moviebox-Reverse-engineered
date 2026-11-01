.class public Lcom/transsion/transfer/androidasync/http/server/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcv/a;


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field c:Lcom/transsion/transfer/androidasync/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/server/s;->a:I

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->c:Lcom/transsion/transfer/androidasync/p;

    invoke-static {p1, p2, p3}, Lcom/transsion/transfer/androidasync/a0;->c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->c:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->c:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->resume()V

    :cond_0
    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/server/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lcom/transsion/transfer/androidasync/http/server/s;->a:I

    return v0
.end method

.method public r(Lcom/transsion/transfer/androidasync/p;Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/s;->c:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    new-instance p2, Lbv/d$a;

    invoke-direct {p2}, Lbv/d$a;-><init>()V

    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    return-void
.end method
