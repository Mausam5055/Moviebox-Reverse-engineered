.class public final synthetic Lcom/transsion/transfer/androidasync/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/y;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/net/InetAddress;

    invoke-static {p1}, Lcom/transsion/transfer/androidasync/AsyncServer;->c([Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method
