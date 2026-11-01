.class public final synthetic Lcom/cloud/tmc/miniapp/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/PackageInstallCallback;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/l;->a:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/l;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/utils/l;->c:Z

    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/utils/l;->d:Z

    return-void
.end method


# virtual methods
.method public final onResult(ZLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/l;->a:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/l;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/utils/l;->c:Z

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/utils/l;->d:Z

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/utils/OooOO0;->OooO00o(Lcom/cloud/tmc/integration/model/AppModel;Landroid/content/Context;ZZZLjava/lang/String;)V

    return-void
.end method
