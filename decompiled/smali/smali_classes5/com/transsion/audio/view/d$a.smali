.class Lcom/transsion/audio/view/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/audio/view/EnFloatingView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/view/d;->g(Landroid/app/Activity;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/transsion/audio/view/d;


# direct methods
.method constructor <init>(Lcom/transsion/audio/view/d;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/view/d$a;->b:Lcom/transsion/audio/view/d;

    iput-object p2, p0, Lcom/transsion/audio/view/d$a;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/view/d$a;->b:Lcom/transsion/audio/view/d;

    invoke-static {p1}, Lcom/transsion/audio/view/d;->b(Lcom/transsion/audio/view/d;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/transsion/audio/view/d;->i(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/transsion/audio/view/d$a;->b:Lcom/transsion/audio/view/d;

    invoke-static {p1}, Lcom/transsion/audio/view/d;->c(Lcom/transsion/audio/view/d;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/room/api/IFloatingApi$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/room/api/IFloatingApi$a;->onRemove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/view/d$a;->b:Lcom/transsion/audio/view/d;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/transsion/audio/view/d;->w(I)Lcom/transsion/audio/view/d;

    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/audio/view/d$a;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    sget-object v0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->n:Lcom/transsion/audio/fragment/AudioBottomSheetFragment$a;

    iget-object v1, p0, Lcom/transsion/audio/view/d$a;->b:Lcom/transsion/audio/view/d;

    invoke-static {v1}, Lcom/transsion/audio/view/d;->a(Lcom/transsion/audio/view/d;)Lcom/transsion/baselib/db/audio/AudioBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$a;->a(Lcom/transsion/baselib/db/audio/AudioBean;)Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "dialog"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
