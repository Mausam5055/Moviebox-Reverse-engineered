.class Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv/base/widget/toast/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/shorttv/base/widget/toast/core/i;->a()Landroid/app/Activity;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv/base/widget/toast/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/shorttv/base/widget/toast/core/i;->c()V

    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->g(Z)V

    return-void

    :cond_0
    :try_start_1
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-static {v2}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->b(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lgs/a;

    move-result-object v2

    invoke-interface {v2}, Lgs/a;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv/base/widget/toast/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/shorttv/base/widget/toast/core/i;->c()V

    iget-object v1, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->g(Z)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    iget-object v2, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-static {v2}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->c(Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;)Lcom/transsion/shorttv/base/widget/toast/core/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/shorttv/base/widget/toast/core/i;->c()V

    iget-object v2, p0, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl$2;->this$0:Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;

    invoke-virtual {v2, v0}, Lcom/transsion/shorttv/base/widget/toast/core/ToastImpl;->g(Z)V

    throw v1
.end method
