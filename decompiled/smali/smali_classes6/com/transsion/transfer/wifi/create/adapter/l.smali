.class public final synthetic Lcom/transsion/transfer/wifi/create/adapter/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

.field public final synthetic b:Landroid/net/wifi/p2p/WifiP2pGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/l;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    iput-object p2, p0, Lcom/transsion/transfer/wifi/create/adapter/l;->b:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/l;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/create/adapter/l;->b:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v0, v1, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->k(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method
