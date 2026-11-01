.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->a:Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/a;->d:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/prepare/steps/commonres/OooO0OO;Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;ZLjava/lang/String;)V

    return-void
.end method
