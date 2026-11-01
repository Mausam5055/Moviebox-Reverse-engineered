.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/a;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/a;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
