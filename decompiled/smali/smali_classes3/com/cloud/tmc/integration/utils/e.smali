.class public final synthetic Lcom/cloud/tmc/integration/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/e;->a:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/e;->c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/e;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/e;->a:Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/e;->c:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/e;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/utils/AddHomeToScreenUtils;->a(Lcom/cloud/tmc/integration/model/MiniAddHomeDataModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V

    return-void
.end method
