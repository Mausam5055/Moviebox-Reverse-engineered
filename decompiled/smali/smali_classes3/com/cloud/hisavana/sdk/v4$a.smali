.class Lcom/cloud/hisavana/sdk/v4$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/v4;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/v4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/v4;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/v4$a;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v4$a;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v4;->a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v4$a;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v4;->a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/v4$f;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/v4$a;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/v4;->a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/v4$a;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/v4;->a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/cloud/hisavana/sdk/v4$f;->b(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
