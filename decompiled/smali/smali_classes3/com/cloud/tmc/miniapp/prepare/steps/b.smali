.class public final synthetic Lcom/cloud/tmc/miniapp/prepare/steps/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/model/PrepareContext;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->a:Lcom/cloud/tmc/integration/model/PrepareContext;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/b;->c:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    move-object v5, p3

    check-cast v5, Ljava/io/IOException;

    invoke-static/range {v0 .. v5}, Lcom/cloud/tmc/miniapp/prepare/steps/OooOOO;->OooO00o(Lcom/cloud/tmc/integration/model/PrepareContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
