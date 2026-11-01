.class Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Handler;Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;-><init>(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->f(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/N0;->i(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->c(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->i(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->j(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;->i(Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdWebFormsActivity$b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iput v2, v3, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "load_runnable_data"

    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
