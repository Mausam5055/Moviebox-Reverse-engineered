.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILjava/util/List;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    return-void

    :cond_1
    const-string v0, "imageSelectList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "imageBackPressed"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "imageSelectPositionList"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "list.iterator()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/io/File;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    if-ne p1, v2, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, p2, v1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    return-void
.end method
