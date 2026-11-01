.class Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/tranmeasure/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ScreenStateManager"

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "SCREEN_OFF"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "USER_PRESENT"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;Z)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "SCREEN_ON"

    invoke-virtual {p1, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "keyguard"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v0, v3}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->d(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/tranmeasure/f;->a(Lcom/cloud/hisavana/sdk/common/tranmeasure/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/tranmeasure/g;

    invoke-direct {v1, p0, p2, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/g;-><init>(Lcom/cloud/hisavana/sdk/common/tranmeasure/f$b;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
