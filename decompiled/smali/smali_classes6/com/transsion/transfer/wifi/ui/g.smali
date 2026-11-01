.class public final synthetic Lcom/transsion/transfer/wifi/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/g;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/g;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    invoke-static {v0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->G0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object v0

    return-object v0
.end method
