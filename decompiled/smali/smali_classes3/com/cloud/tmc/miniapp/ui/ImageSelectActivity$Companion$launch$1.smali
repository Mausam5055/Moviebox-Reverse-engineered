.class public final Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
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

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {v0}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    return-void

    :cond_1
    const-string v0, "imageList"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "list.iterator()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    return-void

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    return-void
.end method
