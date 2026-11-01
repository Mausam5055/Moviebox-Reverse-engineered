.class public final Lcom/transsion/publish/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u000eR\u0014\u0010\u0017\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000eR\u0014\u0010\u0019\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/publish/NetworkReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "a",
        "(Landroid/content/Context;)I",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "I",
        "LAST_TYPE",
        "",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "c",
        "NETWORK_NONE",
        "d",
        "NETWORK_WIFI",
        "e",
        "NETWORK_MOBILE",
        "Publish_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x3

    iput v0, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    const-string v0, "TNPublish"

    iput-object v0, p0, Lcom/transsion/publish/NetworkReceiver;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/publish/NetworkReceiver;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/publish/NetworkReceiver;->e:I

    return-void
.end method

.method private final a(Landroid/content/Context;)I
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget p1, p0, Lcom/transsion/publish/NetworkReceiver;->d:I

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/transsion/publish/NetworkReceiver;->e:I

    return p1

    :cond_2
    iget p1, p0, Lcom/transsion/publish/NetworkReceiver;->c:I

    return p1

    :cond_3
    iget p1, p0, Lcom/transsion/publish/NetworkReceiver;->c:I

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/publish/NetworkReceiver;->a(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    iget p2, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    sget-object p1, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/publish/PublishManager;->onConnected(Lcom/tn/lib/util/networkinfo/NetworkType;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget v0, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    if-eq v0, p2, :cond_1

    iput p1, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, p0, Lcom/transsion/publish/NetworkReceiver;->b:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "\u6570\u636e\u7f51\u7edc"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/transsion/publish/PublishManager;->onConnected(Lcom/tn/lib/util/networkinfo/NetworkType;)V

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    iget v0, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    if-eq v0, p2, :cond_2

    iput p1, p0, Lcom/transsion/publish/NetworkReceiver;->a:I

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/publish/NetworkReceiver;->b:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "\u65e0\u7f51\u7edc"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/publish/PublishManager;->Companion:Lcom/transsion/publish/PublishManager$a;

    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager$a;->a()Lcom/transsion/publish/PublishManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/publish/PublishManager;->onDisconnected()V

    :cond_2
    :goto_0
    return-void
.end method
