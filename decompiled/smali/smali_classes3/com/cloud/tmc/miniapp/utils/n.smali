.class public final synthetic Lcom/cloud/tmc/miniapp/utils/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/cloud/tmc/integration/model/SubPackageInfo;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/n;->a:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/n;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/n;->c:Lcom/cloud/tmc/integration/model/SubPackageInfo;

    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/utils/n;->d:Z

    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/utils/n;->e:Z

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/n;->a:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/n;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/n;->c:Lcom/cloud/tmc/integration/model/SubPackageInfo;

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/utils/n;->d:Z

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/utils/n;->e:Z

    move v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/OooOOO0;->OooO0O0(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;Lcom/cloud/tmc/integration/model/SubPackageInfo;ZZZLjava/lang/String;)V

    return-void
.end method
