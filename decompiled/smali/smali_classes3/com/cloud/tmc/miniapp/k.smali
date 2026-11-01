.class public final synthetic Lcom/cloud/tmc/miniapp/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/k;->b:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/k;->b:Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/k;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/miniapp/UpgradeImpl;->a(Landroid/content/Context;Lcom/cloud/tmc/miniapp/prepare/steps/o000oOoO;Ljava/lang/String;)V

    return-void
.end method
