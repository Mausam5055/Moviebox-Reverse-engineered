.class public final Lcom/transsion/publish/view/operation/OperationBarView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lop/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/view/operation/OperationBarView;->init(ILcom/transsion/publish/api/GroupBean;Lcom/transsion/moviedetailapi/bean/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/view/operation/OperationBarView;


# direct methods
.method constructor <init>(Lcom/transsion/publish/view/operation/OperationBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

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

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getStatus()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {p2}, Lcom/transsion/publish/view/operation/OperationBarView;->getSelectItem()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object p2, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {p2}, Lcom/transsion/publish/view/operation/OperationBarView;->getRv()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/publish/view/operation/OperationBean;->getType()I

    move-result p1

    const-string p2, "getContext(...)"

    if-eqz p1, :cond_a

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startLocation(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startGroup(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startLink(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startWork(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startAudio(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startVideo(Landroid/content/Context;)V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-static {p1}, Lcom/transsion/publish/view/operation/OperationBarView;->access$getListener$p(Lcom/transsion/publish/view/operation/OperationBarView;)Lcom/transsion/publish/adapter/a;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/transsion/publish/view/operation/OperationBarView$a;->a:Lcom/transsion/publish/view/operation/OperationBarView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/publish/adapter/a;->startPhoto(Landroid/content/Context;)V

    :cond_b
    :goto_0
    return-void
.end method
