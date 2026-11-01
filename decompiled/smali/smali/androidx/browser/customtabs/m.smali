.class final Landroidx/browser/customtabs/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/browser/customtabs/l;


# instance fields
.field private final a:Lc/c;


# direct methods
.method private constructor <init>(Lc/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/browser/customtabs/m;->a:Lc/c;

    return-void
.end method

.method static a(Landroid/os/IBinder;)Landroidx/browser/customtabs/m;
    .locals 1

    invoke-static {p0}, Lc/c$a;->Y0(Landroid/os/IBinder;)Lc/c;

    move-result-object p0

    new-instance v0, Landroidx/browser/customtabs/m;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/m;-><init>(Lc/c;)V

    return-object v0
.end method


# virtual methods
.method public onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/m;->a:Lc/c;

    invoke-interface {v0, p1, p2}, Lc/c;->onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "EngagementSigsCallbkRmt"

    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSessionEnded(ZLandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/m;->a:Lc/c;

    invoke-interface {v0, p1, p2}, Lc/c;->onSessionEnded(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "EngagementSigsCallbkRmt"

    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/m;->a:Lc/c;

    invoke-interface {v0, p1, p2}, Lc/c;->onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "EngagementSigsCallbkRmt"

    const-string p2, "RemoteException during IEngagementSignalsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
