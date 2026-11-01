.class public final Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Transfer_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;->V(Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;->U(Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final U(Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class v0, Lcom/transsion/transfer/itransfer/ITransferApi;

    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/itransfer/ITransferApi;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsion/transfer/itransfer/ITransferApi;->a(Landroidx/lifecycle/u;)V

    :cond_0
    return-void
.end method

.method private static final V(Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class v0, Lcom/transsion/transfer/itransfer/ITransferApi;

    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/transfer/itransfer/ITransferApi;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/transsion/transfer/itransfer/ITransferApi;->b(Landroidx/lifecycle/u;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/transfer/R$layout;->activity_wifi_p2p_test:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/transsion/transfer/R$id;->btnWifiCreate:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/transsion/transfer/wifi/ui/y;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/ui/y;-><init>(Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcom/transsion/transfer/R$id;->btnWifiConnect:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/transsion/transfer/wifi/ui/z;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/wifi/ui/z;-><init>(Lcom/transsion/transfer/wifi/ui/WifiP2PTestActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
