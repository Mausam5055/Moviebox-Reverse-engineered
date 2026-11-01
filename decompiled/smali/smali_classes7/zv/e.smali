.class public final Lzv/e;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field public final synthetic a:Lzv/f;


# direct methods
.method public constructor <init>(Lzv/f;)V
    .locals 0

    iput-object p1, p0, Lzv/e;->a:Lzv/f;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 8

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    :try_start_0
    iget-object p1, p0, Lzv/e;->a:Lzv/f;

    iget-object v0, p1, Lzv/f;->d:Ljava/lang/String;

    const-string v1, "CDNConfigNet step1-1:start"

    invoke-static {v0, v1}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v1

    iget-boolean v1, v1, Lyv/f;->l:Z

    if-eqz v1, :cond_0

    iget-object p1, p1, Lzv/f;->d:Ljava/lang/String;

    const-string v0, "CDNConfigNet step1-2: cached"

    invoke-static {p1, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v1, Lzv/d;->d:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv/d;

    iget v1, v1, Lzv/d;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object p1, p1, Lzv/f;->d:Ljava/lang/String;

    const-string v0, "CDNConfigNet step1-3: requesting"

    invoke-static {p1, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v1

    iget-object v1, v1, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getCdnRequestIntervalHours()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    :goto_0
    iget-wide v2, p1, Lzv/f;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lzv/f;->c:J

    sub-long/2addr v2, v4

    mul-int/lit16 v1, v1, 0xe10

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    iget-object p1, p1, Lzv/f;->d:Ljava/lang/String;

    const-string v0, "CDNConfigNet step1-3: request interval"

    invoke-static {p1, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lzv/f;->c:J

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lyv/f;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    return-void
.end method
