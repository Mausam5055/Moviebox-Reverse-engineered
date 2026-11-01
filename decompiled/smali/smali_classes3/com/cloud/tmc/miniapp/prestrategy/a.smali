.class public final synthetic Lcom/cloud/tmc/miniapp/prestrategy/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/a;->b:Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/a;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/a;->b:Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/a;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;->OooO00o(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prestrategy/OooO0O0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
