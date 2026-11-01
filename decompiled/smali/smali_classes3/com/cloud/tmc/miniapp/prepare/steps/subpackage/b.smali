.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic c:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;->a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;->b:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;->c:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;->a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;->b:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/b;->c:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0OO;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V

    return-void
.end method
