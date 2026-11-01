.class public final synthetic Lcom/cloud/tmc/integration/utils/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/utils/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/integration/utils/h;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/integration/utils/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/integration/utils/h;->d:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    iput-object p5, p0, Lcom/cloud/tmc/integration/utils/h;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/integration/utils/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/utils/h;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/integration/utils/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/utils/h;->d:Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;

    iget-object v4, p0, Lcom/cloud/tmc/integration/utils/h;->e:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/integration/utils/CreateShortCutUtils;->b(Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Lcom/cloud/tmc/integration/utils/CreateShortCutUtils$MiniAppIconCallback;Landroid/content/Context;)V

    return-void
.end method
