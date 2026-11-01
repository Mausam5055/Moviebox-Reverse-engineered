.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/prepare/callback/OooO00o;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

.field public final synthetic b:Lcom/cloud/tmc/integration/model/AppModel;

.field public final synthetic c:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

.field public final synthetic d:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->a:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->c:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->d:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->a:Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->c:Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->d:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/d;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;->a(Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO0;Lcom/cloud/tmc/integration/model/AppModel;Lcom/cloud/tmc/miniapp/prepare/controller/PrepareController;Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Lcom/cloud/tmc/miniapp/dialog/Oooo0;)V

    return-void
.end method
