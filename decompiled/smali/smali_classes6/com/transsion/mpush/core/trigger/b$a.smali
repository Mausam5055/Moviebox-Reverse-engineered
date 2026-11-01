.class public final Lcom/transsion/mpush/core/trigger/b$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/trigger/b;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/mpush/core/trigger/b;


# direct methods
.method constructor <init>(Lcom/transsion/mpush/core/trigger/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mpush/core/trigger/b$a;->a:Lcom/transsion/mpush/core/trigger/b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/trigger/b$a;->a:Lcom/transsion/mpush/core/trigger/b;

    invoke-static {p1}, Lcom/transsion/mpush/core/trigger/b;->b(Lcom/transsion/mpush/core/trigger/b;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
