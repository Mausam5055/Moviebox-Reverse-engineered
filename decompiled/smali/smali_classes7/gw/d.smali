.class public final Lgw/d;
.super Lcom/transsion/baseui/adapter/BaseItemBindingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgw/d$a;
    }
.end annotation


# static fields
.field public static final h:Lgw/d$a;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgw/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgw/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgw/d;->h:Lgw/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lgw/d;->g:I

    return-void
.end method


# virtual methods
.method public A(Lfw/v0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p3, Ljw/a$c;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p3, Ljw/a$c;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p2, p1, Lfw/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    instance-of v1, p2, Lcom/transsion/usercenter/devicemanagement/adapter/b;

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/transsion/usercenter/devicemanagement/adapter/b;

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/transsion/usercenter/devicemanagement/adapter/b;

    invoke-direct {v0}, Lcom/transsion/usercenter/devicemanagement/adapter/b;-><init>()V

    iget-object p2, p1, Lfw/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p1, Lfw/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p1, Lfw/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p1, p1, Lfw/v0;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_3
    invoke-virtual {p3}, Ljw/a$c;->a()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    return-void
.end method

.method public B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/v0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lfw/v0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/v0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lgw/d;->g:I

    return v0
.end method

.method public bridge synthetic y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lfw/v0;

    check-cast p3, Ljw/a;

    invoke-virtual {p0, p1, p2, p3}, Lgw/d;->A(Lfw/v0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V

    return-void
.end method

.method public bridge synthetic z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgw/d;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/v0;

    move-result-object p1

    return-object p1
.end method
