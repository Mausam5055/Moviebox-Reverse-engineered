.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->a:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->c:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->e:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->a:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->c:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/e;->e:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    move v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;->b(Lcom/cloud/tmc/miniapp/prepare/steps/OooOOOO;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/model/PrepareContext;Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;ZLjava/lang/String;)V

    return-void
.end method
