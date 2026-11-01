.class public final synthetic Lcom/cloud/hisavana/sdk/common/tranmeasure/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/g;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/g;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/g;->a:Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/g;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
