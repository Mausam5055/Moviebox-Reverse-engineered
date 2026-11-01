.class public final synthetic Lcom/transsion/transfer/wifi/create/adapter/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# instance fields
.field public final synthetic a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/k;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    return-void
.end method


# virtual methods
.method public final onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/k;->a:Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;

    invoke-static {v0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->j(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
