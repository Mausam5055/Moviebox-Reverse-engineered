.class public final Lgw/b;
.super Lcom/transsion/baseui/adapter/BaseItemBindingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgw/b$a;
    }
.end annotation


# static fields
.field public static final i:Lgw/b$a;


# instance fields
.field private final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgw/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgw/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgw/b;->i:Lgw/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;-><init>()V

    sget-object v0, Lti/n;->a:Lti/n;

    invoke-virtual {v0}, Lti/n;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgw/b;->g:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lgw/b;->h:I

    return-void
.end method

.method public static synthetic A(Lgw/b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lgw/b;->C(Lgw/b;Landroid/view/View;)V

    return-void
.end method

.method private static final C(Lgw/b;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lgw/b;->E()V

    const-string p1, "/member/MemberActivity"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final E()V
    .locals 12

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "module_name"

    const-string v2, "unlock_premium"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "button"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/transsion/base/report/athena/ClickType;->FEATURE:Lcom/transsion/base/report/athena/ClickType;

    const-string v3, "/profile/device_management"

    invoke-virtual {v0, v3, v1, v2}, Lhj/i;->q(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/base/report/athena/ClickType;)V

    sget-object v4, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    iget-object v7, p0, Lgw/b;->g:Ljava/lang/String;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v5, "/profile/device_management"

    const-string v6, "linked_device/vip_entry"

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static/range {v4 .. v11}, Lcom/transsion/baselib/helper/f;->g(Lcom/transsion/baselib/helper/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final F()V
    .locals 8

    sget-object v0, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    iget-object v3, p0, Lgw/b;->g:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v1, "/profile/device_management"

    const-string v2, "linked_device/vip_entry"

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static/range {v0 .. v7}, Lcom/transsion/baselib/helper/f;->i(Lcom/transsion/baselib/helper/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public B(Lfw/t0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p3, Ljw/a$a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p3, Ljw/a$a;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object p2, p1, Lfw/t0;->d:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {p3}, Ljw/a$a;->a()Ljw/b;

    move-result-object v1

    invoke-virtual {v1}, Ljw/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lfw/t0;->o:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {p3}, Ljw/a$a;->a()Ljw/b;

    move-result-object v1

    invoke-virtual {v1}, Ljw/b;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lfw/t0;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    instance-of v1, p2, Lcom/transsion/usercenter/devicemanagement/adapter/d;

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/transsion/usercenter/devicemanagement/adapter/d;

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/transsion/usercenter/devicemanagement/adapter/d;

    invoke-direct {v0}, Lcom/transsion/usercenter/devicemanagement/adapter/d;-><init>()V

    iget-object p2, p1, Lfw/t0;->u:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p1, Lfw/t0;->u:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p1, Lfw/t0;->u:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p2, p1, Lfw/t0;->u:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_3
    invoke-virtual {p3}, Ljw/a$a;->a()Ljw/b;

    move-result-object p2

    invoke-virtual {p2}, Ljw/b;->g()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    new-instance p2, Lgw/a;

    invoke-direct {p2, p0}, Lgw/a;-><init>(Lgw/b;)V

    iget-object p3, p1, Lfw/t0;->w:Lcom/noober/background/view/BLView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lfw/t0;->v:Lcom/transsion/baseui/widget/GradientBorderView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lgw/b;->F()V

    return-void
.end method

.method public D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/t0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lfw/t0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/t0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lgw/b;->h:I

    return v0
.end method

.method public bridge synthetic y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lfw/t0;

    check-cast p3, Ljw/a;

    invoke-virtual {p0, p1, p2, p3}, Lgw/b;->B(Lfw/t0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V

    return-void
.end method

.method public bridge synthetic z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgw/b;->D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/t0;

    move-result-object p1

    return-object p1
.end method
