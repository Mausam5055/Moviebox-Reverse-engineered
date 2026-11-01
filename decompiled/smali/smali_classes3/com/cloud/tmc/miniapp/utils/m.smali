.class public final synthetic Lcom/cloud/tmc/miniapp/utils/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/m;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/m;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/utils/m;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/utils/m;->e:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/utils/m;->f:Landroid/content/Context;

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/utils/m;->g:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/m;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/m;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/m;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/utils/m;->e:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/utils/m;->f:Landroid/content/Context;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/utils/m;->g:Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;

    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/miniapp/utils/OooOOO;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/cloud/tmc/integration/callback/ISubpackageLoadCheckCallback;)V

    return-void
.end method
