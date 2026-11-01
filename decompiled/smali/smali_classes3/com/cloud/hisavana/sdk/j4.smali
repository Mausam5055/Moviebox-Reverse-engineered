.class public final synthetic Lcom/cloud/hisavana/sdk/j4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/j4;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/j4;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/j4;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/j4;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/k4;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;)V

    return-void
.end method
