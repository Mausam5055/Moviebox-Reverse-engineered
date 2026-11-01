.class Lcom/cloud/hisavana/sdk/i1$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/i1;->m0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/i1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1$b;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$b;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->W(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$b;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->W(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
