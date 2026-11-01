.class Lcom/cloud/hisavana/sdk/common/tranmeasure/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/d$a;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/d;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/d;)V

    return-void
.end method
