.class Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->personaliseCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 2

    invoke-static {}, Lcom/cloud/hisavana/sdk/t2;->p()Lcom/cloud/hisavana/sdk/t2;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->a(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/t2;->e(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c$a;->a:Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;->c(Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity$c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
