.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

.field public final synthetic OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO0OO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "eventData"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO0O0:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "true"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    iput p1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    iput-boolean v0, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    iget-boolean v4, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;->OooO00o()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :cond_0
    invoke-static {v2, v3, p1, v4, v7}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$reportAthenaWhiteScreen(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;Ljava/lang/String;IZLjava/lang/Long;)V

    goto :goto_0

    :cond_1
    iput v6, v1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;->access$getEventCenter$p(Lcom/cloud/tmc/miniapp/performanceanalyse/screen/ScreenInspectHelper;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "renderStatus"

    invoke-interface {p1, v1, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    :cond_3
    return v0
.end method
