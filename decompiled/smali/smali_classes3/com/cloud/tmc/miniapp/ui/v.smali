.class public final synthetic Lcom/cloud/tmc/miniapp/ui/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/v;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/v;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/ui/v;->c:Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/v;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/v;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/v;->c:Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->a0(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppAutoOperationConfig;)V

    return-void
.end method
