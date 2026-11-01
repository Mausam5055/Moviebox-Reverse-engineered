.class Lcom/cloud/hisavana/sdk/d1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/http/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/d1;->a(Lcom/cloud/hisavana/sdk/q3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/q3;

.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field final synthetic c:Lcom/cloud/hisavana/sdk/d1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d1$a;->c:Lcom/cloud/hisavana/sdk/d1;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/d1$a;->a:Lcom/cloud/hisavana/sdk/q3;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/d1$a;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1$a;->a:Lcom/cloud/hisavana/sdk/q3;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d1$a;->b:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/d1;->k(Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
