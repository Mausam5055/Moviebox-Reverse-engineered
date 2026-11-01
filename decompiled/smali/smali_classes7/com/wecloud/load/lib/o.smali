.class public final Lcom/wecloud/load/lib/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/o$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/wecloud/load/lib/o$a;

.field private static volatile g:Lcom/wecloud/load/lib/o;


# instance fields
.field private volatile a:Lcom/wecloud/load/lib/i;

.field private volatile b:Z

.field private volatile c:Lcom/wecloud/load/lib/h;

.field private d:Landroid/content/ServiceConnection;

.field private e:Lcom/wecloud/load/lib/SoDownloadRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/wecloud/load/lib/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wecloud/load/lib/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/wecloud/load/lib/o;->f:Lcom/wecloud/load/lib/o$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/wecloud/load/lib/o;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/wecloud/load/lib/o;
    .locals 1

    sget-object v0, Lcom/wecloud/load/lib/o;->g:Lcom/wecloud/load/lib/o;

    return-object v0
.end method

.method public static final synthetic b(Lcom/wecloud/load/lib/o;)Lcom/wecloud/load/lib/SoDownloadRequest;
    .locals 0

    iget-object p0, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    return-object p0
.end method

.method public static final synthetic c(Lcom/wecloud/load/lib/o;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static final synthetic d(Lcom/wecloud/load/lib/o;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wecloud/load/lib/o;->b:Z

    return-void
.end method

.method public static final synthetic e(Lcom/wecloud/load/lib/o;)V
    .locals 0

    sput-object p0, Lcom/wecloud/load/lib/o;->g:Lcom/wecloud/load/lib/o;

    return-void
.end method

.method public static final synthetic f(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/SoDownloadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    return-void
.end method

.method public static final synthetic g(Lcom/wecloud/load/lib/o;Lcom/wecloud/load/lib/i;)V
    .locals 0

    iput-object p1, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    return-void
.end method

.method public static final synthetic h(Lcom/wecloud/load/lib/o;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final i(Landroid/content/Context;Lcom/wecloud/load/lib/h;Lcom/wecloud/load/lib/SoDownloadRequest;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/wecloud/load/lib/o;->c:Lcom/wecloud/load/lib/h;

    iput-object p3, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    iget-boolean p2, p0, Lcom/wecloud/load/lib/o;->b:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    if-eqz p2, :cond_0

    iput-object v0, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    invoke-virtual {p0, p3}, Lcom/wecloud/load/lib/o;->j(Lcom/wecloud/load/lib/SoDownloadRequest;)Z

    return-void

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.wecloud.load.lib.SoLoadService"

    invoke-direct {p3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance p3, Lcom/wecloud/load/lib/o$b;

    invoke-direct {p3, p0, p1}, Lcom/wecloud/load/lib/o$b;-><init>(Lcom/wecloud/load/lib/o;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object p3, Llg/a;->a:Llg/a$a;

    const-string v2, "SoLoadManager"

    const-string v3, "\u5df2\u542f\u52a8 Service"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    if-nez v1, :cond_1

    const-string v2, "SoLoadManager"

    const-string v3, "\u7ed1\u5b9a\u670d\u52a1\u5931\u8d25\uff1aserviceConnection \u5df2\u88ab\u5e76\u53d1\u6e05\u7a7a"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object v0, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    return-void

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string v2, "SoLoadManager"

    const-string v3, "\u7ed1\u5b9a\u670d\u52a1\u5931\u8d25"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p3

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object v0, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u542f\u52a8 Service \u5931\u8d25: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SoLoadManager"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final j(Lcom/wecloud/load/lib/SoDownloadRequest;)Z
    .locals 9

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/wecloud/load/lib/o;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/o;->c:Lcom/wecloud/load/lib/h;

    if-nez v0, :cond_1

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SoLoadManager"

    const-string v4, "\u56de\u8c03\u63a5\u53e3\u4e3a\u7a7a"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/wecloud/load/lib/o;->c:Lcom/wecloud/load/lib/h;

    invoke-interface {v0, p1, v2}, Lcom/wecloud/load/lib/i;->D(Lcom/wecloud/load/lib/SoDownloadRequest;Lcom/wecloud/load/lib/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v5, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :goto_1
    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8c03\u7528\u670d\u52a1\u5f02\u5e38: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "SoLoadManager"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_2
    return v1

    :cond_3
    :goto_3
    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "SoLoadManager"

    const-string v4, "\u670d\u52a1\u672a\u7ed1\u5b9a\uff0c\u65e0\u6cd5\u52a0\u8f7dSO"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v1
.end method

.method public final k(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/wecloud/load/lib/o;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v3, p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u7ed1\u670d\u52a1\u5f02\u5e38: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SoLoadManager"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/wecloud/load/lib/o;->a:Lcom/wecloud/load/lib/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wecloud/load/lib/o;->b:Z

    iput-object p1, p0, Lcom/wecloud/load/lib/o;->c:Lcom/wecloud/load/lib/h;

    iput-object p1, p0, Lcom/wecloud/load/lib/o;->d:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/wecloud/load/lib/o;->e:Lcom/wecloud/load/lib/SoDownloadRequest;

    const-string p1, "SoLoadManager"

    const-string v0, "\u89e3\u7ed1\u670d\u52a1:"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method
