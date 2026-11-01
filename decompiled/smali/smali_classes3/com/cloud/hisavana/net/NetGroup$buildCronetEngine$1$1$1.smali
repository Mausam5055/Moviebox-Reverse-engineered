.class public final Lcom/cloud/hisavana/net/NetGroup$buildCronetEngine$1$1$1;
.super Lorg/chromium/net/RequestFinishedInfo$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/net/NetGroup;->b(Landroid/content/Context;Ljava/lang/String;)Lorg/chromium/net/CronetEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/cloud/hisavana/net/NetGroup$buildCronetEngine$1$1$1",
        "Lorg/chromium/net/RequestFinishedInfo$Listener;",
        "onRequestFinished",
        "",
        "requestInfo",
        "Lorg/chromium/net/RequestFinishedInfo;",
        "adnetwork_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/net/NetGroup$buildCronetEngine$1$1$1;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/chromium/net/RequestFinishedInfo$Listener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onRequestFinished(Lorg/chromium/net/RequestFinishedInfo;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lbi/b;->a:Lbi/b;

    iget-object v4, p0, Lcom/cloud/hisavana/net/NetGroup$buildCronetEngine$1$1$1;->a:Ljava/lang/String;

    sget-boolean v5, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z

    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v3, "All"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v9}, Lbi/b;->c(Lbi/b;Lorg/chromium/net/RequestFinishedInfo;ILjava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    return-void
.end method
