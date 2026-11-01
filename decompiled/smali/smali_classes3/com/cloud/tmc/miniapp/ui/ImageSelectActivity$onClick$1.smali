.class public final Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/oo000o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;ILcom/cloud/tmc/miniapp/dialog/o00Oo0;)V
    .locals 1

    const-string p1, "bean"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getTvTitle(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getRvImageSelectList(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAdapter$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAllImage$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAdapter$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAllAlbum$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iget-object p3, p3, Lcom/cloud/tmc/miniapp/dialog/o00Oo0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->setData(Ljava/util/List;)V

    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getRvImageSelectList(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->getActivity()Landroid/app/Activity;

    move-result-object p2

    sget p3, Lcom/cloud/tmc/miniapp/R$anim;->layout_from_right:I

    invoke-static {p2, p3}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$onClick$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getRvImageSelectList(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    :cond_4
    return-void
.end method
