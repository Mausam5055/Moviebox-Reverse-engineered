.class public final synthetic Lcom/transsion/transfer/wifi/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/e;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/e;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->M0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;ZLjava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
