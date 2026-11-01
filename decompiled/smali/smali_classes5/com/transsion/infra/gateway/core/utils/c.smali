.class public Lcom/transsion/infra/gateway/core/utils/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    invoke-direct {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;-><init>()V

    const-string v1, "gateway_core"

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->o(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->p(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->n(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    move-result-object v0

    sput-object v0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
