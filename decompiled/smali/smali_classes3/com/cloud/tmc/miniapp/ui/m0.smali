.class public final synthetic Lcom/cloud/tmc/miniapp/ui/m0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/m0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/m0;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->i0(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    move-result p1

    return p1
.end method
