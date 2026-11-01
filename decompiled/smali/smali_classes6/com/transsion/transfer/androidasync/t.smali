.class public Lcom/transsion/transfer/androidasync/t;
.super Lcom/transsion/transfer/androidasync/q;

# interfaces
.implements Lcom/transsion/transfer/androidasync/p;
.implements Lbv/d;


# instance fields
.field private d:Lcom/transsion/transfer/androidasync/p;

.field private e:I

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/q;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/t;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget p1, p0, Lcom/transsion/transfer/androidasync/t;->e:I

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/transfer/androidasync/t;->e:I

    :cond_1
    invoke-static {p0, p2}, Lcom/transsion/transfer/androidasync/a0;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    if-eqz p2, :cond_2

    iget p1, p0, Lcom/transsion/transfer/androidasync/t;->e:I

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/transfer/androidasync/t;->e:I

    :cond_2
    return-void
.end method

.method public N(Lcom/transsion/transfer/androidasync/p;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {p1, p0}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    new-instance v0, Lcom/transsion/transfer/androidasync/t$a;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/t$a;-><init>(Lcom/transsion/transfer/androidasync/t;)V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    return-void
.end method

.method public a()Lcom/transsion/transfer/androidasync/AsyncServer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/t;->f:Z

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    :cond_0
    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->resume()V

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/t;->d:Lcom/transsion/transfer/androidasync/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
