.class public final Lcom/cloud/h5update/download/DownloadTask$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/h5update/download/DownloadTask;-><init>(Lcom/cloud/h5update/bean/DownloadEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/h5update/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/cloud/h5update/download/DownloadTask;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-interface {p1, v0}, Lcom/cloud/h5update/download/a;->e(Lcom/cloud/h5update/download/DownloadTask;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/cloud/h5update/download/a;->d(Lcom/cloud/h5update/download/DownloadTask;I)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/cloud/h5update/download/a;->d(Lcom/cloud/h5update/download/DownloadTask;I)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-interface {p1, v0}, Lcom/cloud/h5update/download/a;->a(Lcom/cloud/h5update/download/DownloadTask;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-interface {p1, v0}, Lcom/cloud/h5update/download/a;->b(Lcom/cloud/h5update/download/DownloadTask;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-static {p1}, Lcom/cloud/h5update/download/DownloadTask;->access$getMListener$p(Lcom/cloud/h5update/download/DownloadTask;)Lcom/cloud/h5update/download/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/h5update/download/DownloadTask$a;->a:Lcom/cloud/h5update/download/DownloadTask;

    invoke-interface {p1, v0}, Lcom/cloud/h5update/download/a;->c(Lcom/cloud/h5update/download/DownloadTask;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
