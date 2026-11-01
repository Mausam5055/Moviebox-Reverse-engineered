.class abstract Lcom/squareup/okhttp/internal/http/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field protected final a:Lokio/ForwardingTimeout;

.field protected b:Z

.field final synthetic c:Lcom/squareup/okhttp/internal/http/d;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/d;)V
    .locals 1

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/ForwardingTimeout;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/d;->e(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSource;

    move-result-object p1

    invoke-interface {p1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Lokio/ForwardingTimeout;-><init>(Lokio/Timeout;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->a:Lokio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/d$b;-><init>(Lcom/squareup/okhttp/internal/http/d;)V

    return-void
.end method


# virtual methods
.method protected final d()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->c(Lcom/squareup/okhttp/internal/http/d;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/d$b;->a:Lokio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->b(Lcom/squareup/okhttp/internal/http/d;Lokio/ForwardingTimeout;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->d(Lcom/squareup/okhttp/internal/http/d;I)I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/internal/http/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/internal/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/n;->r(Lcom/squareup/okhttp/internal/http/HttpStream;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/d;->c(Lcom/squareup/okhttp/internal/http/d;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final h()V
    .locals 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->c(Lcom/squareup/okhttp/internal/http/d;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->d(Lcom/squareup/okhttp/internal/http/d;I)I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/internal/http/n;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/internal/http/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->l()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/d;->f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/internal/http/n;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/d$b;->c:Lcom/squareup/okhttp/internal/http/d;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/n;->r(Lcom/squareup/okhttp/internal/http/HttpStream;)V

    :cond_1
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d$b;->a:Lokio/ForwardingTimeout;

    return-object v0
.end method
