.class public final Lcom/transsion/publish/ui/ClippingImageActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/ClippingImageActivity;->u0(Lcom/transsion/publish/view/clip/ClipImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/ClippingImageActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/ClippingImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 7

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/ClippingImageActivity;->l0(Lcom/transsion/publish/ui/ClippingImageActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNext e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lcom/transsion/publish/api/PhotoEntity;

    invoke-direct {v1}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    iget-object v2, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-static {v2}, Lcom/transsion/publish/ui/ClippingImageActivity;->j0(Lcom/transsion/publish/ui/ClippingImageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/PhotoEntity;->setWidth(I)V

    iget-object v2, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-static {v2}, Lcom/transsion/publish/ui/ClippingImageActivity;->h0(Lcom/transsion/publish/ui/ClippingImageActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/PhotoEntity;->setHeight(I)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/publish/api/PhotoEntity;->setLocalPath(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-static {p1}, Lcom/transsion/publish/ui/ClippingImageActivity;->i0(Lcom/transsion/publish/ui/ClippingImageActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/publish/api/PhotoEntity;->setImageSize(J)V

    const-string p1, "clip_result"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    const/16 v1, 0x2713

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/a;

    iget-object v0, v0, Lhp/a;->d:Landroid/widget/ProgressBar;

    const-string v1, "clipLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/ClippingImageActivity;->k0(Lcom/transsion/publish/ui/ClippingImageActivity;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lhp/a;

    iget-object v0, v0, Lhp/a;->d:Landroid/widget/ProgressBar;

    const-string v1, "clipLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/ClippingImageActivity;->l0(Lcom/transsion/publish/ui/ClippingImageActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a(Ljava/io/File;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/ui/ClippingImageActivity$b;->a:Lcom/transsion/publish/ui/ClippingImageActivity;

    invoke-static {v0, p1}, Lcom/transsion/publish/ui/ClippingImageActivity;->m0(Lcom/transsion/publish/ui/ClippingImageActivity;Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
