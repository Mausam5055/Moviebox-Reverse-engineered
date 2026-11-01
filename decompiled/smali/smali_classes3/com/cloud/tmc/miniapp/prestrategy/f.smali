.class public final synthetic Lcom/cloud/tmc/miniapp/prestrategy/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchData;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/cloud/tmc/miniapp/prestrategy/PrefetchData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/f;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/f;->b:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/f;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/f;->b:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchData;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigManager$requestStrategyConfig$4;->OooO00o(Ljava/util/List;Lcom/cloud/tmc/miniapp/prestrategy/PrefetchData;)V

    return-void
.end method
