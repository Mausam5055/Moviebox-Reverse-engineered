.class public final synthetic Lcom/transsion/transfer/wifi/connect/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/a;->a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/a;->a:Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;

    invoke-static {v0, p1}, Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;->n(Lcom/transsion/transfer/wifi/connect/adapter/DirectConnectAdapter;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method
