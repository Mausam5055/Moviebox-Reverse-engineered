.class public final synthetic Lcom/cloud/hisavana/sdk/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/c0;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/c0;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/t;->a:Lcom/cloud/hisavana/sdk/c0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/t;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/c0;->e(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void
.end method
