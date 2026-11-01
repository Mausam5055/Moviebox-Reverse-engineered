.class final Lcom/transsion/push/service/JobIntentService$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/push/service/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/push/service/JobIntentService;


# direct methods
.method constructor <init>(Lcom/transsion/push/service/JobIntentService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/service/JobIntentService$a;->a:Lcom/transsion/push/service/JobIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/push/service/JobIntentService$a;->a:Lcom/transsion/push/service/JobIntentService;

    invoke-virtual {p1}, Lcom/transsion/push/service/JobIntentService;->a()Lcom/transsion/push/service/JobIntentService$e;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/push/service/JobIntentService$a;->a:Lcom/transsion/push/service/JobIntentService;

    invoke-interface {p1}, Lcom/transsion/push/service/JobIntentService$e;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/push/service/JobIntentService;->e(Landroid/content/Intent;)V

    invoke-interface {p1}, Lcom/transsion/push/service/JobIntentService$e;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/push/service/JobIntentService$a;->a:Lcom/transsion/push/service/JobIntentService;

    invoke-virtual {p1}, Lcom/transsion/push/service/JobIntentService;->f()V

    return-void
.end method

.method protected c(Ljava/lang/Void;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/push/service/JobIntentService$a;->a:Lcom/transsion/push/service/JobIntentService;

    invoke-virtual {p1}, Lcom/transsion/push/service/JobIntentService;->f()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/push/service/JobIntentService$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/push/service/JobIntentService$a;->b(Ljava/lang/Void;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/push/service/JobIntentService$a;->c(Ljava/lang/Void;)V

    return-void
.end method
