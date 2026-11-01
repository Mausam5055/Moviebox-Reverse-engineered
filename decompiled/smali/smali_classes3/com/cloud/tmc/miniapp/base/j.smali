.class public final synthetic Lcom/cloud/tmc/miniapp/base/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

.field public final synthetic c:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/base/j;->b:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/base/j;->c:Lcom/cloud/tmc/integration/structure/Page;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/j;->b:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/j;->c:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->a0(Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method
