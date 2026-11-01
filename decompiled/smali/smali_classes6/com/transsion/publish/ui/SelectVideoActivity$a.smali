.class public final Lcom/transsion/publish/ui/SelectVideoActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/rxjava3/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/SelectVideoActivity;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/SelectVideoActivity;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/SelectVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {p1}, Lcom/transsion/publish/ui/SelectVideoActivity;->n0(Lcom/transsion/publish/ui/SelectVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->o0(Lcom/transsion/publish/ui/SelectVideoActivity;)Lcom/transsion/publish/adapter/k0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/publish/adapter/k0;->addData(Ljava/util/List;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {p1}, Lcom/transsion/publish/ui/SelectVideoActivity;->p0(Lcom/transsion/publish/ui/SelectVideoActivity;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->l0(Lcom/transsion/publish/ui/SelectVideoActivity;)Lio/reactivex/rxjava3/disposables/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->p0(Lcom/transsion/publish/ui/SelectVideoActivity;)V

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->o0(Lcom/transsion/publish/ui/SelectVideoActivity;)Lcom/transsion/publish/adapter/k0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->o0(Lcom/transsion/publish/ui/SelectVideoActivity;)Lcom/transsion/publish/adapter/k0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/publish/adapter/k0;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {v0}, Lcom/transsion/publish/ui/SelectVideoActivity;->n0(Lcom/transsion/publish/ui/SelectVideoActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "SelectVideoManager"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/c;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/ui/SelectVideoActivity$a;->a:Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-static {v0, p1}, Lcom/transsion/publish/ui/SelectVideoActivity;->r0(Lcom/transsion/publish/ui/SelectVideoActivity;Lio/reactivex/rxjava3/disposables/c;)V

    return-void
.end method
