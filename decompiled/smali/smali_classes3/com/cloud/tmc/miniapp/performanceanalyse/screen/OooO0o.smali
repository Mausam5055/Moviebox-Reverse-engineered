.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

.field public final synthetic OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 2

    const-string p1, "miniapp"

    const-string v0, "connectRender success"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    const/4 v0, 0x2

    iput v0, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "connectionRender"

    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0OO:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;

    iget p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO00o;->OooO0Oo:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$checkWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
