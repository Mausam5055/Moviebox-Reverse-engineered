.class Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/util/concurrent/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a$a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a$a;->a:Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;

    invoke-static {v0}, Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;->d(Lcom/cloud/hisavana/protocol/okhttptransport/e$c$a;)Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/protocol/okhttptransport/UploadBodyDataBroker;->i(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
