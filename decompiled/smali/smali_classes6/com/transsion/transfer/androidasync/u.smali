.class public abstract Lcom/transsion/transfer/androidasync/u;
.super Lcom/transsion/transfer/androidasync/n;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/n;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/n;->q(I)V

    return-void
.end method


# virtual methods
.method protected j(Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/u;->s(Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    :cond_0
    return-void
.end method

.method public abstract s(Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/ByteBufferList;
.end method
