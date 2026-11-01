.class Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;
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

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->e(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->g(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->f(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/b$c;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/b;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/b;->h(Lcom/cloud/hisavana/sdk/common/tranmeasure/b;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
