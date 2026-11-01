.class public final Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;-><init>(Landroid/content/Context;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO00o:Lcom/cloud/tmc/integration/structure/App;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->capsuleSetOnRightClick(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/dialog/oo0o0Oo;->OooO0oO:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method
