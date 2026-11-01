.class public final Lcom/google/android/exoplayer2/upstream/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/r$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/exoplayer2/upstream/k;

.field private d:Lcom/google/android/exoplayer2/upstream/k;

.field private e:Lcom/google/android/exoplayer2/upstream/k;

.field private f:Lcom/google/android/exoplayer2/upstream/k;

.field private g:Lcom/google/android/exoplayer2/upstream/k;

.field private h:Lcom/google/android/exoplayer2/upstream/k;

.field private i:Lcom/google/android/exoplayer2/upstream/k;

.field private j:Lcom/google/android/exoplayer2/upstream/k;

.field private k:Lcom/google/android/exoplayer2/upstream/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/r;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/k;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Lcom/google/android/exoplayer2/upstream/k;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Ljava/util/List;

    return-void
.end method

.method private f(Lcom/google/android/exoplayer2/upstream/k;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/k0;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/k;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()Lcom/google/android/exoplayer2/upstream/k;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->e:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->e:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/r;->f(Lcom/google/android/exoplayer2/upstream/k;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->e:Lcom/google/android/exoplayer2/upstream/k;

    return-object v0
.end method

.method private i()Lcom/google/android/exoplayer2/upstream/k;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->f:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->f:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/r;->f(Lcom/google/android/exoplayer2/upstream/k;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->f:Lcom/google/android/exoplayer2/upstream/k;

    return-object v0
.end method

.method private j()Lcom/google/android/exoplayer2/upstream/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->i:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->i:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/r;->f(Lcom/google/android/exoplayer2/upstream/k;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->i:Lcom/google/android/exoplayer2/upstream/k;

    return-object v0
.end method

.method private k()Lcom/google/android/exoplayer2/upstream/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->d:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->d:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/r;->f(Lcom/google/android/exoplayer2/upstream/k;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->d:Lcom/google/android/exoplayer2/upstream/k;

    return-object v0
.end method

.method private l()Lcom/google/android/exoplayer2/upstream/k;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->j:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->j:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/r;->f(Lcom/google/android/exoplayer2/upstream/k;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->j:Lcom/google/android/exoplayer2/upstream/k;

    return-object v0
.end method

.method private m()Lcom/google/android/exoplayer2/upstream/k;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->g:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/k;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->g:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/r;->f(Lcom/google/android/exoplayer2/upstream/k;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->g:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Lcom/google/android/exoplayer2/upstream/k;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->g:Lcom/google/android/exoplayer2/upstream/k;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->g:Lcom/google/android/exoplayer2/upstream/k;

    return-object v0
.end method

.method private n()Lcom/google/android/exoplayer2/upstream/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->h:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->h:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/r;->f(Lcom/google/android/exoplayer2/upstream/k;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->h:Lcom/google/android/exoplayer2/upstream/k;

    return-object v0
.end method

.method private o(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/k;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/n;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->w0(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/r;->h()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/r;->k()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto :goto_2

    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/r;->h()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto :goto_2

    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/r;->i()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto :goto_2

    :cond_4
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/r;->m()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto :goto_2

    :cond_5
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/r;->n()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto :goto_2

    :cond_6
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/r;->j()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto :goto_2

    :cond_7
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Lcom/google/android/exoplayer2/upstream/k;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto :goto_2

    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/r;->l()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/k;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->c:Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/k;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->d:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/r;->o(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->e:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/r;->o(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->f:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/r;->o(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->g:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/r;->o(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->h:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/r;->o(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->i:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/r;->o(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->j:Lcom/google/android/exoplayer2/upstream/k;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/r;->o(Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/k0;)V

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/r;->k:Lcom/google/android/exoplayer2/upstream/k;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/g;->read([BII)I

    move-result p1

    return p1
.end method
