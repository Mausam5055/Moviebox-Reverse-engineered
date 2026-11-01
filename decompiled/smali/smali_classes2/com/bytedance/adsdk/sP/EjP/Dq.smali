.class public Lcom/bytedance/adsdk/sP/EjP/Dq;
.super Ljava/lang/Object;


# instance fields
.field private final Sj:Lcom/bytedance/adsdk/sP/EjP/Jcg;

.field private final sP:Lcom/bytedance/adsdk/sP/EjP/vS;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/EjP/Jcg;Lcom/bytedance/adsdk/sP/EjP/vS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj:Lcom/bytedance/adsdk/sP/EjP/Jcg;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/EjP/Dq;->sP:Lcom/bytedance/adsdk/sP/EjP/vS;

    return-void
.end method

.method private Sj(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/sP/aa<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj:Lcom/bytedance/adsdk/sP/EjP/Jcg;

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/sP/EjP/TKC;->sP:Lcom/bytedance/adsdk/sP/EjP/TKC;

    invoke-virtual {p4, p2, p3, v0}, Lcom/bytedance/adsdk/sP/EjP/Jcg;->Sj(Ljava/lang/String;Ljava/io/InputStream;Lcom/bytedance/adsdk/sP/EjP/TKC;)Ljava/io/File;

    move-result-object p3

    new-instance p4, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, p4, p2}, Lcom/bytedance/adsdk/sP/Dq;->Sj(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-instance p2, Ljava/util/zip/ZipInputStream;

    invoke-direct {p2, p3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/bytedance/adsdk/sP/Dq;->Sj(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p1

    return-object p1
.end method

.method private Sj(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/sP/aa<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    const-string p4, "application/json"

    :cond_0
    const-string v0, "application/zip"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-zip"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "application/x-zip-compressed"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    const-string p4, "\\?"

    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    aget-object p4, p4, v0

    const-string v0, ".lottie"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/bytedance/adsdk/sP/EjP/TKC;->Sj:Lcom/bytedance/adsdk/sP/EjP/TKC;

    invoke-direct {p0, p2, p3, p5}, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p3

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p4, Lcom/bytedance/adsdk/sP/EjP/TKC;->sP:Lcom/bytedance/adsdk/sP/EjP/TKC;

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p3

    move-object p1, p4

    :goto_1
    if-eqz p5, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/aa;->Sj()Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj:Lcom/bytedance/adsdk/sP/EjP/Jcg;

    if-eqz p4, :cond_3

    invoke-virtual {p4, p2, p1}, Lcom/bytedance/adsdk/sP/EjP/Jcg;->Sj(Ljava/lang/String;Lcom/bytedance/adsdk/sP/EjP/TKC;)V

    :cond_3
    return-object p3
.end method

.method private Sj(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/sP/aa<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj:Lcom/bytedance/adsdk/sP/EjP/Jcg;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/adsdk/sP/EjP/TKC;->Sj:Lcom/bytedance/adsdk/sP/EjP/TKC;

    invoke-virtual {p3, p1, p2, v0}, Lcom/bytedance/adsdk/sP/EjP/Jcg;->Sj(Ljava/lang/String;Ljava/io/InputStream;Lcom/bytedance/adsdk/sP/EjP/TKC;)Ljava/io/File;

    move-result-object p2

    new-instance p3, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p1}, Lcom/bytedance/adsdk/sP/Dq;->sP(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/sP/Dq;->sP(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p1

    return-object p1
.end method

.method private TKC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/sP/aa<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/EjP/Dq;->sP:Lcom/bytedance/adsdk/sP/EjP/vS;

    invoke-interface {v1, p2}, Lcom/bytedance/adsdk/sP/EjP/vS;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/EjP/EjP;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/EjP/EjP;->Sj()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/EjP/EjP;->sP()Ljava/io/InputStream;

    move-result-object v5

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/EjP/EjP;->TKC()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/aa;->Sj()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p1, Lcom/bytedance/adsdk/sP/aa;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/EjP/EjP;->EjP()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/bytedance/adsdk/sP/aa;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object p1

    :goto_0
    :try_start_4
    new-instance p2, Lcom/bytedance/adsdk/sP/aa;

    invoke-direct {p2, p1}, Lcom/bytedance/adsdk/sP/aa;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    return-object p2

    :goto_1
    if-eqz v0, :cond_2

    :try_start_6
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_2
    throw p1
.end method

.method private sP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Jcg;
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/EjP/Dq;->Sj:Lcom/bytedance/adsdk/sP/EjP/Jcg;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p2}, Lcom/bytedance/adsdk/sP/EjP/Jcg;->Sj(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/adsdk/sP/EjP/TKC;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/io/InputStream;

    sget-object v2, Lcom/bytedance/adsdk/sP/EjP/TKC;->sP:Lcom/bytedance/adsdk/sP/EjP/TKC;

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v1, p3}, Lcom/bytedance/adsdk/sP/Dq;->Sj(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p2, p3}, Lcom/bytedance/adsdk/sP/Dq;->sP(Ljava/io/InputStream;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/aa;->Sj()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/aa;->Sj()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/sP/Jcg;

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/adsdk/sP/aa<",
            "Lcom/bytedance/adsdk/sP/Jcg;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/EjP/Dq;->sP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/Jcg;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/bytedance/adsdk/sP/aa;

    invoke-direct {p1, v0}, Lcom/bytedance/adsdk/sP/aa;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/EjP/Dq;->TKC(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object p1

    return-object p1
.end method
