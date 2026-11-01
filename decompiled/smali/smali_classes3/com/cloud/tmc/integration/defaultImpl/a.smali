.class public final synthetic Lcom/cloud/tmc/integration/defaultImpl/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/a;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/a;->d:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/a;->c:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/a;->d:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->c(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;)V

    return-void
.end method
