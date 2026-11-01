.class public final Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$openPage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->openPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$openPage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$openPage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
