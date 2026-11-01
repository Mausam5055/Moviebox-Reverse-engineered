.class public abstract Lcom/transsion/http/impl/DownloadCallback;
.super Lcom/transsion/http/impl/q;


# instance fields
.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/http/impl/q;-><init>()V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/transsion/http/impl/DownloadCallback;->f:J

    return-void
.end method


# virtual methods
.method public A(ILjava/lang/String;Ljava/io/File;)V
    .locals 0

    new-instance p1, Lcom/transsion/http/impl/e;

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/http/impl/e;-><init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract B(Ljava/lang/String;Ljava/io/File;)V
.end method

.method public m(I[BLjava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public s(I[B)V
    .locals 0

    return-void
.end method

.method public w(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/transsion/http/impl/d;

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/http/impl/d;-><init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract x(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public y(ILjava/lang/String;JJ)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/http/impl/DownloadCallback;->e:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/transsion/http/impl/DownloadCallback;->f:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_0

    iput-wide v0, p0, Lcom/transsion/http/impl/DownloadCallback;->e:J

    new-instance p1, Lcom/transsion/http/impl/f;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/transsion/http/impl/f;-><init>(Lcom/transsion/http/impl/DownloadCallback;Ljava/lang/String;JJ)V

    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public abstract z(Ljava/lang/String;JJ)V
.end method
