.class public final synthetic Lcom/cloud/hisavana/sdk/l3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/e;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l3;->a:Lcom/cloud/hisavana/sdk/e;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/l3;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l3;->a:Lcom/cloud/hisavana/sdk/e;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l3;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/e;->e(Lcom/cloud/hisavana/sdk/e;Ljava/util/List;)V

    return-void
.end method
