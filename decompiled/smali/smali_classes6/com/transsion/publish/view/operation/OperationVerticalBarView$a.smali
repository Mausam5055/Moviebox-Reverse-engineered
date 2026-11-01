.class public final Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lop/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/operation/OperationVerticalBarView;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/operation/OperationVerticalBarView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    iput-object p2, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/publish/view/operation/OperationBean;I)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getStatus()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getType()I

    move-result p1

    const-string p2, "getContext(...)"

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startLink(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startWork(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startAudio(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startVideo(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->a:Lcom/transsion/publish/view/operation/OperationVerticalBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationVerticalBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationVerticalBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationVerticalBarView$a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startPhoto(Landroid/content/Context;)V

    :cond_6
    :goto_0
    return-void
.end method
