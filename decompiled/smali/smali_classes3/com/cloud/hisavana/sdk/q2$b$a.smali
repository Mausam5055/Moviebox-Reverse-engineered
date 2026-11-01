.class Lcom/cloud/hisavana/sdk/q2$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/util/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/q2$b;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/q2$b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/q2$b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q2$b$a;->a:Lcom/cloud/hisavana/sdk/q2$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q2$b$a;->a:Lcom/cloud/hisavana/sdk/q2$b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/q2$b;->c:Lcom/cloud/hisavana/sdk/q2;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q2;->g(Lcom/cloud/hisavana/sdk/q2;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q2$b$a;->a:Lcom/cloud/hisavana/sdk/q2$b;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/q2$b;->c:Lcom/cloud/hisavana/sdk/q2;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/q2;->i(Lcom/cloud/hisavana/sdk/q2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_0
    return-void
.end method
