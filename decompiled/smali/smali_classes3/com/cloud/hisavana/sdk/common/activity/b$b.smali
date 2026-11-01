.class Lcom/cloud/hisavana/sdk/common/activity/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/b;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$b;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/b$b;->a:Lcom/cloud/hisavana/sdk/common/activity/b;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/activity/b;->onBackPressed()V

    return-void
.end method
