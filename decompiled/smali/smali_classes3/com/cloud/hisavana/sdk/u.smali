.class public final synthetic Lcom/cloud/hisavana/sdk/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/c0;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u;->a:Lcom/cloud/hisavana/sdk/c0;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/u;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/u;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u;->a:Lcom/cloud/hisavana/sdk/c0;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u;->b:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/u;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/c0;->a(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V

    return-void
.end method
