.class public final synthetic Lcom/cloud/tmc/miniapp/ui/b0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/ActivityHelper$OnSetHostActivityStatusBackgroundCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/b0;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    return-void
.end method


# virtual methods
.method public final setHostActivityStatusBackground(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/b0;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->d0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;I)V

    return-void
.end method
