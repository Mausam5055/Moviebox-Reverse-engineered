.class Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$b;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->i()V

    :cond_0
    return-void
.end method
