.class public final synthetic Lcom/cloud/tmc/integration/resource/processor/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/cloud/tmc/integration/structure/App;

.field public final synthetic d:Lcom/cloud/tmc/integration/structure/Page;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/resource/processor/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/integration/resource/processor/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/resource/processor/a;->c:Lcom/cloud/tmc/integration/structure/App;

    iput-object p4, p0, Lcom/cloud/tmc/integration/resource/processor/a;->d:Lcom/cloud/tmc/integration/structure/Page;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/resource/processor/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/resource/processor/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/resource/processor/a;->c:Lcom/cloud/tmc/integration/structure/App;

    iget-object v3, p0, Lcom/cloud/tmc/integration/resource/processor/a;->d:Lcom/cloud/tmc/integration/structure/Page;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/resource/processor/OfflineDownloadResourceProcessor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/integration/structure/Page;)V

    return-void
.end method
