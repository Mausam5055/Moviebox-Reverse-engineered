.class public final Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShowToastRunnable"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;",
            ")V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    return-void
.end method

.method private final checkUpdateStateToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;)V
    .locals 8

    const-string v0, "check update state"

    const-string v1, "ToastStrategy"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v0, v2}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->setToastParams(Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    move-result-object v0

    instance-of v2, v0, Lcom/cloud/tmc/miniapp/utils/toast/style/StateToastStyle;

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->getView()Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1, v3}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->findIconView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getIcon()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0xa00000

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v2, v3

    goto :goto_4

    :goto_3
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    if-nez v2, :cond_8

    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDrawableResId()I

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->access$getStateToastIcon(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;)I

    move-result v2

    :cond_6
    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ToastStrategy"

    :try_start_0
    const-string v1, "show toast run with start"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    invoke-static {v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->access$getMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->getToastParams()Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;->getToastType()Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v2

    :goto_3
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    check-cast v1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->cancel()V

    move-object v1, v2

    :cond_4
    instance-of v3, v1, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/utils/toast/CustomToast;->isShow()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->cancel()V

    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getStyle()Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->createToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToastStyle;)Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;

    move-result-object v2

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;->access$setMToastReference$p(Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy;Ljava/lang/ref/WeakReference;)V

    move-object v1, v2

    :cond_8
    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->checkUpdateStateToast(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;)V

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getDuration()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setDuration(I)V

    :cond_9
    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;->show()V

    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/utils/toast/ToastParams;->getShowCallBack()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    const-string v2, "show toast failed!"

    invoke-static {v0, v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    return-void
.end method
