.class public Lcom/mbridge/msdk/thrid/okhttp/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/mbridge/msdk/thrid/okhttp/w;

.field b:Lcom/mbridge/msdk/thrid/okhttp/u;

.field c:I

.field d:Ljava/lang/String;

.field e:Lcom/mbridge/msdk/thrid/okhttp/o;

.field f:Lcom/mbridge/msdk/thrid/okhttp/p$a;

.field g:Lcom/mbridge/msdk/thrid/okhttp/z;

.field h:Lcom/mbridge/msdk/thrid/okhttp/y;

.field i:Lcom/mbridge/msdk/thrid/okhttp/y;

.field j:Lcom/mbridge/msdk/thrid/okhttp/y;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c:I

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->f:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-void
.end method

.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c:I

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    iget v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->c:I

    iput v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c:I

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->e:Lcom/mbridge/msdk/thrid/okhttp/o;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->e:Lcom/mbridge/msdk/thrid/okhttp/o;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->f:Lcom/mbridge/msdk/thrid/okhttp/p;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/p;->a()Lcom/mbridge/msdk/thrid/okhttp/p$a;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->f:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->h:Lcom/mbridge/msdk/thrid/okhttp/y;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->h:Lcom/mbridge/msdk/thrid/okhttp/y;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->i:Lcom/mbridge/msdk/thrid/okhttp/y;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->i:Lcom/mbridge/msdk/thrid/okhttp/y;

    iget-object v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->j:Lcom/mbridge/msdk/thrid/okhttp/y;

    iput-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->j:Lcom/mbridge/msdk/thrid/okhttp/y;

    iget-wide v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->k:J

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->k:J

    iget-wide v0, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->l:J

    iput-wide v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->l:J

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/y;)V
    .locals 1

    iget-object v0, p2, Lcom/mbridge/msdk/thrid/okhttp/y;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/mbridge/msdk/thrid/okhttp/y;->h:Lcom/mbridge/msdk/thrid/okhttp/y;

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/mbridge/msdk/thrid/okhttp/y;->i:Lcom/mbridge/msdk/thrid/okhttp/y;

    if-nez v0, :cond_1

    iget-object p2, p2, Lcom/mbridge/msdk/thrid/okhttp/y;->j:Lcom/mbridge/msdk/thrid/okhttp/y;

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private b(Lcom/mbridge/msdk/thrid/okhttp/y;)V
    .locals 1

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/y;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c:I

    return-object p0
.end method

.method public a(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->l:J

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/o;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->e:Lcom/mbridge/msdk/thrid/okhttp/o;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/p;->a()Lcom/mbridge/msdk/thrid/okhttp/p$a;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->f:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/u;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/y;)V

    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->i:Lcom/mbridge/msdk/thrid/okhttp/y;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/z;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->g:Lcom/mbridge/msdk/thrid/okhttp/z;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->f:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-object p0
.end method

.method public a()Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b:Lcom/mbridge/msdk/thrid/okhttp/u;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/y;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/thrid/okhttp/y;-><init>(Lcom/mbridge/msdk/thrid/okhttp/y$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(J)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->k:J

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->f:Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/p$a;

    return-object p0
.end method

.method public c(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Ljava/lang/String;Lcom/mbridge/msdk/thrid/okhttp/y;)V

    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->h:Lcom/mbridge/msdk/thrid/okhttp/y;

    return-object p0
.end method

.method public d(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->b(Lcom/mbridge/msdk/thrid/okhttp/y;)V

    :cond_0
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;->j:Lcom/mbridge/msdk/thrid/okhttp/y;

    return-object p0
.end method
