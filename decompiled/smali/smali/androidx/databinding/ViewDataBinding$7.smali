.class Landroidx/databinding/ViewDataBinding$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/ViewDataBinding;


# direct methods
.method constructor <init>(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, v0}, Landroidx/databinding/ViewDataBinding;->c(Landroidx/databinding/ViewDataBinding;Z)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->d()V

    invoke-static {v1}, Landroidx/databinding/ViewDataBinding;->e(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/databinding/ViewDataBinding;->e(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->f()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-static {v1}, Landroidx/databinding/ViewDataBinding;->e(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Landroidx/databinding/ViewDataBinding;->f()Landroid/view/View$OnAttachStateChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_0
    throw v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
