.class public final synthetic Lcom/cloud/tmc/integration/bridge/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/structure/App;IZLcom/google/gson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/j;->a:Lcom/cloud/tmc/integration/structure/App;

    iput p2, p0, Lcom/cloud/tmc/integration/bridge/j;->b:I

    iput-boolean p3, p0, Lcom/cloud/tmc/integration/bridge/j;->c:Z

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/j;->d:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/j;->a:Lcom/cloud/tmc/integration/structure/App;

    iget v1, p0, Lcom/cloud/tmc/integration/bridge/j;->b:I

    iget-boolean v2, p0, Lcom/cloud/tmc/integration/bridge/j;->c:Z

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/j;->d:Lcom/google/gson/JsonObject;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/bridge/NavigateBridge;->a(Lcom/cloud/tmc/integration/structure/App;IZLcom/google/gson/JsonObject;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
