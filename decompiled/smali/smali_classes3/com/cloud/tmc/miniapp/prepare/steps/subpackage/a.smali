.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic c:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic d:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->b:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->c:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->d:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->b:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->c:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->d:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/a;->e:Ljava/lang/String;

    move v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO0O0;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
