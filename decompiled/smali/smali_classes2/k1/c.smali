.class Lk1/c;
.super Lk1/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lk1/a;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lk1/a;-><init>(Lk1/a;)V

    iput-object p2, p0, Lk1/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lk1/c;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lk1/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lk1/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lk1/b;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Lk1/a;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lk1/a;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lk1/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lk1/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lk1/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lk1/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lk1/b;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lk1/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lk1/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lk1/b;->d(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lk1/c;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public k()J
    .locals 2

    iget-object v0, p0, Lk1/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lk1/c;->c:Landroid/net/Uri;

    invoke-static {v0, v1}, Lk1/b;->f(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()[Lk1/a;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
