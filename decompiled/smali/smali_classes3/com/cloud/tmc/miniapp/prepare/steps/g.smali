.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/g;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
