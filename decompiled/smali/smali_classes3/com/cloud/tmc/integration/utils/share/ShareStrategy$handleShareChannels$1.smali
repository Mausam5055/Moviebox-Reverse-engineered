.class final Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/utils/share/ShareStrategy;->handleShareChannels(Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $listener:Lcom/cloud/tmc/integration/utils/share/OnShareListener;

.field final synthetic $shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/utils/share/ShareParams;Landroid/content/Context;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$listener:Lcom/cloud/tmc/integration/utils/share/OnShareListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getChannel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$listener:Lcom/cloud/tmc/integration/utils/share/OnShareListener;

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/share/ShareBySystem;->share(Lcom/cloud/tmc/integration/utils/share/ShareParams;Lcom/cloud/tmc/integration/utils/share/OnShareListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "ShareStrategy"

    const-string v1, "handleShareChannels: no channel"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$listener:Lcom/cloud/tmc/integration/utils/share/OnShareListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/share/ShareStrategy$handleShareChannels$1;->$shareParams:Lcom/cloud/tmc/integration/utils/share/ShareParams;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/utils/share/ShareParams;->getChannel()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/share/OnShareListener;->onShare(II)V

    :cond_1
    :goto_0
    return-void
.end method
