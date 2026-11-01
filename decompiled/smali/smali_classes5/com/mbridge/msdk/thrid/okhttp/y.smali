.class public final Lcom/mbridge/msdk/thrid/okhttp/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/y$a;
    }
.end annotation


# instance fields
.field final a:Lcom/mbridge/msdk/thrid/okhttp/w;

.field final b:Lcom/mbridge/msdk/thrid/okhttp/u;

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Lcom/mbridge/msdk/thrid/okhttp/o;

.field final f:Lcom/mbridge/msdk/thrid/okhttp/p;

.field final g:Lcom/mbridge/msdk/thrid/okhttp/z;

.field final h:Lcom/mbridge/msdk/thrid/okhttp/y;

.field final i:Lcom/mbridge/msdk/thrid/okhttp/y;

.field final j:Lcom/mbridge/msdk/thrid/okhttp/y;

.field final k:J

.field final l:J

.field private volatile m:Lcom/mbridge/msdk/thrid/okhttp/c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/y$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->c:I

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->e:Lcom/mbridge/msdk/thrid/okhttp/o;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->e:Lcom/mbridge/msdk/thrid/okhttp/o;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->f:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->a()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->f:Lcom/mbridge/msdk/thrid/okhttp/p;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->h:Lcom/mbridge/msdk/thrid/okhttp/y;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->h:Lcom/mbridge/msdk/thrid/okhttp/y;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->i:Lcom/mbridge/msdk/thrid/okhttp/y;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->i:Lcom/mbridge/msdk/thrid/okhttp/y;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->j:Lcom/mbridge/msdk/thrid/okhttp/y;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->j:Lcom/mbridge/msdk/thrid/okhttp/y;

    iget-wide v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->k:J

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->k:J

    iget-wide v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y$a;->l:J

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->l:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->f:Lcom/mbridge/msdk/thrid/okhttp/p;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/z;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/mbridge/msdk/thrid/okhttp/z;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    return-object v0
.end method

.method public h()Lcom/mbridge/msdk/thrid/okhttp/c;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->m:Lcom/mbridge/msdk/thrid/okhttp/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->f:Lcom/mbridge/msdk/thrid/okhttp/p;

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/c;->a(Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->m:Lcom/mbridge/msdk/thrid/okhttp/c;

    :goto_0
    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->c:I

    return v0
.end method

.method public l()Lcom/mbridge/msdk/thrid/okhttp/o;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->e:Lcom/mbridge/msdk/thrid/okhttp/o;

    return-object v0
.end method

.method public m()Lcom/mbridge/msdk/thrid/okhttp/p;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->f:Lcom/mbridge/msdk/thrid/okhttp/p;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/y$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/y;)V

    return-object v0
.end method

.method public p()Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->j:Lcom/mbridge/msdk/thrid/okhttp/y;

    return-object v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->l:J

    return-wide v0
.end method

.method public r()Lcom/mbridge/msdk/thrid/okhttp/w;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    return-object v0
.end method

.method public s()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->k:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/y;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
