.class public final Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->jumpPreviewActivity(I)V
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

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorized(Z)V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener$DefaultImpls;->onCancel(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    return-void
.end method

.method public onDialogClickCancel()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener$DefaultImpls;->onDialogClickCancel(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    return-void
.end method

.method public onSelected(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "imageList"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getSelectImage$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getSelectImage$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getSelectPosition$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getSelectPosition$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$changeSelectTv(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$jumpPreviewActivity$1;->this$0:Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;->access$getAdapter$p(Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity;)Lcom/cloud/tmc/miniapp/ui/adapter/ImageSelectAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
