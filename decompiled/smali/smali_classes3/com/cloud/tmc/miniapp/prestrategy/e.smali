.class public final synthetic Lcom/cloud/tmc/miniapp/prestrategy/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prestrategy/e;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prestrategy/e;->d:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/prestrategy/PreStrategyManager;->OooO0OO(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
