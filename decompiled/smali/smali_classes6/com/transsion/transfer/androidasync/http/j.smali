.class public Lcom/transsion/transfer/androidasync/http/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field c:Landroid/net/Uri;

.field private d:Lcom/transsion/transfer/androidasync/http/Headers;

.field private e:Z

.field private f:Lcv/a;

.field g:I

.field h:Ljava/lang/String;

.field i:I

.field j:Ljava/lang/String;

.field k:I

.field l:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/transfer/androidasync/http/j;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/Headers;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/Headers;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->d:Lcom/transsion/transfer/androidasync/http/Headers;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/j;->e:Z

    const/16 v0, 0x1388

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/j;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/transfer/androidasync/http/j;->i:I

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/j;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/j;->c:Landroid/net/Uri;

    if-nez p3, :cond_0

    new-instance p2, Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-direct {p2}, Lcom/transsion/transfer/androidasync/http/Headers;-><init>()V

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/j;->d:Lcom/transsion/transfer/androidasync/http/Headers;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/j;->d:Lcom/transsion/transfer/androidasync/http/Headers;

    :goto_0
    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/j;->d:Lcom/transsion/transfer/androidasync/http/Headers;

    invoke-static {p2, p1}, Lcom/transsion/transfer/androidasync/http/j;->x(Lcom/transsion/transfer/androidasync/http/Headers;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/transfer/androidasync/http/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/transsion/transfer/androidasync/http/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/androidasync/http/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected static f()Ljava/lang/String;
    .locals 2

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/transsion/transfer/androidasync/http/j;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/transfer/androidasync/http/j;->l:J

    sub-long v2, v0, v2

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    const-string p1, "(%d ms) %s: %s"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static x(Lcom/transsion/transfer/androidasync/http/Headers;Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "Host"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    :cond_1
    const-string p1, "User-Agent"

    invoke-static {}, Lcom/transsion/transfer/androidasync/http/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const-string p1, "Accept-Encoding"

    const-string v0, "gzip, deflate"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const-string p1, "Connection"

    const-string v0, "keep-alive"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    const-string p1, "Accept"

    const-string v0, "*/*"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/j;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->h()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/transfer/androidasync/http/Headers;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    return-object p0
.end method

.method public d(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/transfer/androidasync/http/j;->i:I

    return-void
.end method

.method public e()Lcv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->f:Lcv/a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/transfer/androidasync/http/j;->e:Z

    return v0
.end method

.method public h()Lcom/transsion/transfer/androidasync/http/Headers;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->d:Lcom/transsion/transfer/androidasync/http/Headers;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/transsion/transfer/androidasync/http/j;->i:I

    return v0
.end method

.method public n()Lcom/transsion/transfer/androidasync/http/y;
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/http/j$a;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/http/j$a;-><init>(Lcom/transsion/transfer/androidasync/http/j;)V

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/transsion/transfer/androidasync/http/j;->g:I

    return v0
.end method

.method public p()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/j;->k:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/j;->i(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/j;->k:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/j;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/transfer/androidasync/http/j;->k:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/j;->i(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->d:Lcom/transsion/transfer/androidasync/http/Headers;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/j;->c:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/j;->k:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/http/j;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public v(Lcom/transsion/transfer/androidasync/AsyncSSLException;)V
    .locals 0

    return-void
.end method

.method public w(Lcv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/j;->f:Lcv/a;

    return-void
.end method

.method public y(I)Lcom/transsion/transfer/androidasync/http/j;
    .locals 0

    iput p1, p0, Lcom/transsion/transfer/androidasync/http/j;->g:I

    return-object p0
.end method
