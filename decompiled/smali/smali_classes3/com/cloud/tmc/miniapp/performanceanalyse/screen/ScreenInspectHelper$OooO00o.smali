.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

.field public final OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;",
            ")V"
        }
    .end annotation

    const-string v0, "appData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    iget v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    iget-object v3, v3, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO00o:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v3, v2, v4, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$reportAthenaWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Ljava/lang/String;IZLjava/lang/Long;)V

    :cond_1
    return-void
.end method

.method public OooO0O0()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    iget v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public OooO0OO()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iget v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    const-string v3, "connectionRender"

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    if-nez v2, :cond_2

    iput v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$connectRender(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_4

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-interface {v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    invoke-static {v1, v0, v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$connectRender(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0OO:Lcom/cloud/tmc/kernel/worker/JSI;

    if-eqz v2, :cond_7

    iget v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    if-nez v2, :cond_5

    iput v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    invoke-static {v1, v0, v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$connectWorker(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    goto :goto_1

    :cond_5
    if-ne v2, v4, :cond_7

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0o0:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-interface {v2, v3, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    invoke-static {v1, v0, v2}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$connectWorker(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    iget v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    iget v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper$OooO00o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    invoke-static {v1, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$checkWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    :cond_8
    return-void
.end method
