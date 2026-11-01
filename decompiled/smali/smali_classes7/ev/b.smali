.class public Lev/b;
.super Lcom/transsion/transfer/androidasync/t;


# instance fields
.field g:J

.field h:J

.field i:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/androidasync/t;-><init>()V

    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    iput-object v0, p0, Lev/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    iput-wide p1, p0, Lev/b;->g:J

    return-void
.end method


# virtual methods
.method public F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 5

    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    iget-wide v1, p0, Lev/b;->g:J

    iget-wide v3, p0, Lev/b;->h:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lev/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    long-to-int v0, v0

    invoke-virtual {p2, v2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->g(Lcom/transsion/transfer/androidasync/ByteBufferList;I)V

    iget-object v0, p0, Lev/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v0

    iget-object v1, p0, Lev/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-super {p0, p1, v1}, Lcom/transsion/transfer/androidasync/t;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    iget-wide v1, p0, Lev/b;->h:J

    iget-object p1, p0, Lev/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lev/b;->h:J

    iget-object p1, p0, Lev/b;->i:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    iget-wide p1, p0, Lev/b;->h:J

    iget-wide v0, p0, Lev/b;->g:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lev/b;->M(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method protected M(Ljava/lang/Exception;)V
    .locals 4

    if-nez p1, :cond_0

    iget-wide v0, p0, Lev/b;->h:J

    iget-wide v2, p0, Lev/b;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance p1, Lcom/transsion/transfer/androidasync/http/filter/PrematureDataEndException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End of data reached before content length was read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lev/b;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lev/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/t;->isPaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/transfer/androidasync/http/filter/PrematureDataEndException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/q;->M(Ljava/lang/Exception;)V

    return-void
.end method
