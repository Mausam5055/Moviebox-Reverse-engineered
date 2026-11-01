.class public final synthetic Lcom/cloud/tmc/integration/defaultImpl/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/c;->a:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/c;->a:Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;

    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;->a(Lcom/cloud/tmc/integration/defaultImpl/ConfigServiceImpl;Landroid/content/Context;)V

    return-void
.end method
