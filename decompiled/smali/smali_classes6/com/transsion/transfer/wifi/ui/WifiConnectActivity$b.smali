.class public final Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/wifi/connect/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->X0(Llv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

.field final synthetic b:Llv/a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Llv/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    iput-object p2, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->b:Llv/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->b(Lcom/transsion/transfer/wifi/connect/b;Landroid/net/Network;)V

    return-void
.end method

.method public b(I)V
    .locals 4

    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    invoke-virtual {v1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> connectWifi() --> onFail() --> code = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgv/c;

    iget-object p1, p1, Lgv/c;->d:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    iget-object p1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->Y0()V

    sget-object p1, Luh/b;->a:Luh/b$a;

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/transfer/R$string;->transfer_wifi_connect_dialog_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Ljava/net/InetAddress;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->e(Lcom/transsion/transfer/wifi/connect/b;Ljava/net/InetAddress;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->a(Lcom/transsion/transfer/wifi/connect/b;I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "ip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/connect/b$a;->c(Lcom/transsion/transfer/wifi/connect/b;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParsingSuccess: ip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", WifiUtils.getLocalIP():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    invoke-static {v0}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->S0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    invoke-static {v0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->R0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    invoke-static {v0, p1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->U0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/transfer/wifi/connect/b$a;->d(Lcom/transsion/transfer/wifi/connect/b;)V

    iget-object v0, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->a:Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;

    iget-object v1, p0, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity$b;->b:Llv/a;

    invoke-static {v0, v1}, Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;->V0(Lcom/transsion/transfer/wifi/ui/WifiConnectActivity;Llv/a;)V

    return-void
.end method
