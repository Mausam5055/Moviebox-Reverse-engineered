.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


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

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->b:Lcom/cloud/tmc/integration/model/AppModel;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prepare/steps/h;->e:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    move-object v7, p3

    check-cast v7, Ljava/io/IOException;

    invoke-static/range {v0 .. v7}, Lcom/cloud/tmc/miniapp/prepare/steps/UpdateStep;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Lcom/cloud/tmc/integration/model/AppModel;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
