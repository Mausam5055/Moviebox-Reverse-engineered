.class Lcom/transsion/athena/attribution/ReferrerTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Lg5/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/athena/attribution/ReferrerTask;->checkGpReferrer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/athena/attribution/ReferrerTask;


# direct methods
.method constructor <init>(Lcom/transsion/athena/attribution/ReferrerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {v0}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {v0}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->a()V

    :cond_0
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "InstallReferrerResponse.FEATURE_NOT_SUPPORTED"

    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p1, "InstallReferrerResponse.SERVICE_UNAVAILABLE"

    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "InstallReferrerResponse.OK"

    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;

    move-result-object p1

    invoke-virtual {p1}, Lg5/a;->b()Lg5/d;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {v0, p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$100(Lcom/transsion/athena/attribution/ReferrerTask;Lg5/d;)V

    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$200(Lcom/transsion/athena/attribution/ReferrerTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;

    move-result-object p1

    if-eqz p1, :cond_3

    :goto_1
    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;

    move-result-object p1

    invoke-virtual {p1}, Lg5/a;->a()V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {p1}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    return-void

    :goto_4
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {v0}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask$1;->this$0:Lcom/transsion/athena/attribution/ReferrerTask;

    invoke-static {v0}, Lcom/transsion/athena/attribution/ReferrerTask;->access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->a()V

    :cond_4
    throw p1
.end method
