.class Landroidx/browser/customtabs/k$a;
.super Landroidx/browser/customtabs/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/k;-><init>(Lc/a;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/browser/customtabs/k;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/k;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/k$a;->a:Landroidx/browser/customtabs/k;

    invoke-direct {p0}, Landroidx/browser/customtabs/c;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/k$a;->a:Landroidx/browser/customtabs/k;

    iget-object v0, v0, Landroidx/browser/customtabs/k;->a:Lc/a;

    invoke-interface {v0, p1, p2}, Lc/a;->L(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/k$a;->a:Landroidx/browser/customtabs/k;

    iget-object v0, v0, Landroidx/browser/customtabs/k;->a:Lc/a;

    invoke-interface {v0, p1, p2}, Lc/a;->r(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityResized(IILandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/k$a;->a:Landroidx/browser/customtabs/k;

    iget-object v0, v0, Landroidx/browser/customtabs/k;->a:Lc/a;

    invoke-interface {v0, p1, p2, p3}, Lc/a;->B0(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/k$a;->a:Landroidx/browser/customtabs/k;

    iget-object v0, v0, Landroidx/browser/customtabs/k;->a:Lc/a;

    invoke-interface {v0, p1}, Lc/a;->S0(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string v0, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/k$a;->a:Landroidx/browser/customtabs/k;

    iget-object v0, v0, Landroidx/browser/customtabs/k;->a:Lc/a;

    invoke-interface {v0, p1, p2}, Lc/a;->L0(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/k$a;->a:Landroidx/browser/customtabs/k;

    iget-object v0, v0, Landroidx/browser/customtabs/k;->a:Lc/a;

    invoke-interface {v0, p1, p2}, Lc/a;->P0(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/k$a;->a:Landroidx/browser/customtabs/k;

    iget-object v0, v0, Landroidx/browser/customtabs/k;->a:Lc/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/a;->U0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
