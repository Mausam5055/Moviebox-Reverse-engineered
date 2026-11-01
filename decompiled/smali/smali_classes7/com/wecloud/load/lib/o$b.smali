.class public final Lcom/wecloud/load/lib/o$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/o;->i(Landroid/content/Context;Lcom/wecloud/load/lib/h;Lcom/wecloud/load/lib/SoDownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wecloud/load/lib/o;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/wecloud/load/lib/o;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    iput-object p2, p0, Lcom/wecloud/load/lib/o$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    invoke-static {p2}, Lcom/wecloud/load/lib/i$a;->Y0(Landroid/os/IBinder;)Lcom/wecloud/load/lib/i;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wecloud/load/lib/o;->g(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/i;)V

    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/wecloud/load/lib/o;->d(Lcom/wecloud/load/lib/o;Z)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "SoLoadManager"

    const-string v2, "\u670d\u52a1\u7ed1\u5b9a\u6210\u529f"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    invoke-static {p1}, Lcom/wecloud/load/lib/o;->b(Lcom/wecloud/load/lib/o;)Lcom/wecloud/load/lib/SoDownloadRequest;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/wecloud/load/lib/o;->f(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/SoDownloadRequest;)V

    invoke-virtual {p2, p1}, Lcom/wecloud/load/lib/o;->j(Lcom/wecloud/load/lib/SoDownloadRequest;)Z

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 8

    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/wecloud/load/lib/o;->g(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/i;)V

    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/wecloud/load/lib/o;->d(Lcom/wecloud/load/lib/o;Z)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SoLoadManager"

    const-string v4, "\u670d\u52a1\u65ad\u5f00\u8fde\u63a5"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    invoke-static {p1}, Lcom/wecloud/load/lib/o;->c(Lcom/wecloud/load/lib/o;)Landroid/content/ServiceConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    invoke-static {v1}, Lcom/wecloud/load/lib/o;->c(Lcom/wecloud/load/lib/o;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v4, p1

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u7ed1\u670d\u52a1\u5f02\u5e38: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "SoLoadManager"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/wecloud/load/lib/o$b;->a:Lcom/wecloud/load/lib/o;

    invoke-static {p1, v0}, Lcom/wecloud/load/lib/o;->h(Lcom/wecloud/load/lib/o;Landroid/content/ServiceConnection;)V

    return-void
.end method
