.class public final synthetic Lcom/cloud/tmc/miniapp/ui/e0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

.field public final synthetic b:Lcom/cloud/tmc/integration/activity/LoadStepAction;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/e0;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/e0;->b:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/e0;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/e0;->b:Lcom/cloud/tmc/integration/activity/LoadStepAction;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->X(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Lcom/cloud/tmc/integration/activity/LoadStepAction;)V

    return-void
.end method
