.class public final Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

.field private final eventCenterFactory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->eventCenterFactory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    const-string v0, "onKeyboardHeightChange"

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    return-void
.end method


# virtual methods
.method public final getCreateEvent()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    return-object v0
.end method

.method public final getEventCenterFactory()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->eventCenterFactory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    return-object v0
.end method

.method public onKeyBoardAnimEnd()V
    .locals 2

    const-string v0, "MiniAppBaseFragment"

    const-string v1, "Keyboard anim end"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyBoardAnimStart()V
    .locals 2

    const-string v0, "MiniAppBaseFragment"

    const-string v1, "Keyboard anim start"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyBoardHeightChange(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keyboard height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniAppBaseFragment"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->access$getPage$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    const-string v2, "page"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "height"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v2}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->eventCenterFactory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->access$getApp$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    const-string v1, "onKeyboardHeightChange"

    invoke-interface {p1, v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_0
    return-void
.end method
