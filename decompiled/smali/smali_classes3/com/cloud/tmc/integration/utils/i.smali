.class public final synthetic Lcom/cloud/tmc/integration/utils/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/i;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/i;->c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/i;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/i;->c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/i;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->c(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Ljava/lang/String;)V

    return-void
.end method
