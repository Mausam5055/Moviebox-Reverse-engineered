.class Lcom/hisavana/common/tracking/TrackingManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$newb:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    iput-object p2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$newb:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    invoke-static {v0}, Li7/b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sdk_version"

    const-string v3, "3.6.0.2"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdk_version_int"

    const v3, 0x57f08

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    const-string v3, "ad_trigger"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    const-string v3, "ad_show"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    const-string v3, "ad_click"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v1}, Li7/a;->v0(Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$newb:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v2, Lyi/a;

    iget-object v3, p0, Lcom/hisavana/common/tracking/TrackingManager$1;->val$event:Ljava/lang/String;

    const/16 v4, 0x21d5

    invoke-direct {v2, v3, v4}, Lyi/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v1, v0}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object v0

    invoke-virtual {v0}, Lyi/a;->b()V

    return-void
.end method
