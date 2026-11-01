.class public final Lcom/transsion/subroom/fragment/UserPreferFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lau/d;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u000eJ\u000f\u0010\u001a\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\'0&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R3\u00102\u001a\u001f\u0012\u0013\u0012\u00110,\u00a2\u0006\u000c\u0008-\u0012\u0008\u0008.\u0012\u0004\u0008\u0008(/\u0012\u0006\u0012\u0004\u0018\u00010\u00080+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0018\u00108\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010;\u001a\u00020,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010C\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010BR\u0018\u0010G\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010>R\u0018\u0010K\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010B\u00a8\u0006L"
    }
    d2 = {
        "Lcom/transsion/subroom/fragment/UserPreferFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lau/d;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "f0",
        "(Landroid/view/ViewGroup;)V",
        "Landroid/view/View;",
        "view",
        "e0",
        "(Landroid/view/View;)V",
        "i0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "d0",
        "(Landroid/view/LayoutInflater;)Lau/d;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "v",
        "onClick",
        "lazyLoadData",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lcom/transsion/subroom/adapter/a;",
        "b",
        "Lcom/transsion/subroom/adapter/a;",
        "mAdapter",
        "",
        "Lcom/transsion/mb/config/download/UserPreferOption;",
        "c",
        "Ljava/util/List;",
        "mCheckedList",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "removeFragment",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "mCallback",
        "e",
        "Landroid/view/ViewGroup;",
        "parentView",
        "f",
        "Landroid/view/View;",
        "rootView",
        "g",
        "Z",
        "viewCreated",
        "Landroid/widget/TextView;",
        "h",
        "Landroid/widget/TextView;",
        "tvSkip",
        "Landroid/widget/ProgressBar;",
        "i",
        "Landroid/widget/ProgressBar;",
        "pbSkip",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "j",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "k",
        "tvSubmit",
        "l",
        "loadView",
        "app_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/transsion/subroom/adapter/a;

.field private c:Ljava/util/List;

.field private d:Lkotlin/jvm/functions/Function1;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroidx/recyclerview/widget/RecyclerView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    const-string v0, "UserPrefer-tag"

    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    new-instance v0, Lbu/a;

    invoke-direct {v0}, Lbu/a;-><init>()V

    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/subroom/fragment/UserPreferFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/subroom/fragment/UserPreferFragment;->g0(Lcom/transsion/subroom/fragment/UserPreferFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic b0(Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/subroom/fragment/UserPreferFragment;->h0(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/subroom/fragment/UserPreferFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subroom/fragment/UserPreferFragment;->j0(Lcom/transsion/subroom/fragment/UserPreferFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final e0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private final f0(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/transsion/subroom/R$id;->tv_skip:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v1, Lcom/transsion/subroom/R$id;->pb_skip:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->i:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    sget v1, Lcom/transsion/subroom/R$id;->recycler_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    sget v1, Lcom/transsion/subroom/R$id;->tv_submit:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :goto_3
    iput-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    sget v0, Lcom/transsion/subroom/R$id;->load_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    :cond_4
    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->l:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_7
    new-instance v0, Lcom/transsion/subroom/adapter/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2}, Lcom/transsion/subroom/adapter/a;-><init>(Ljava/util/List;)V

    new-instance v2, Lbu/c;

    invoke-direct {v2, p0}, Lbu/c;-><init>(Lcom/transsion/subroom/fragment/UserPreferFragment;)V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    new-instance v2, Lcom/transsion/subroom/fragment/UserPreferFragment$a;

    invoke-direct {v2}, Lcom/transsion/subroom/fragment/UserPreferFragment$a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    iput-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->b:Lcom/transsion/subroom/adapter/a;

    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    new-instance v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c0(I)V

    invoke-virtual {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d0(I)V

    invoke-virtual {v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e0(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v1, Lcom/google/android/flexbox/d;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/flexbox/d;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/d;->l(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/subroom/R$drawable;->space_user_perfer_decoration:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/flexbox/d;->i(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->b:Lcom/transsion/subroom/adapter/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_8
    invoke-direct {p0, p1}, Lcom/transsion/subroom/fragment/UserPreferFragment;->e0(Landroid/view/View;)V

    return-void
.end method

.method private static final g0(Lcom/transsion/subroom/fragment/UserPreferFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.transsion.mb.config.download.UserPreferOption"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/mb/config/download/UserPreferOption;

    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/transsion/subroom/R$string;->choose_up_to_5:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    xor-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method private static final h0(Z)Lkotlin/Unit;
    .locals 0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final i0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->l:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/mb/config/download/UserPreferOption;

    invoke-virtual {v2}, Lcom/transsion/mb/config/download/UserPreferOption;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/transsion/startup/StartupManager;->g:Lcom/transsion/startup/StartupManager$a;

    invoke-virtual {v1}, Lcom/transsion/startup/StartupManager$a;->a()Lcom/transsion/startup/StartupManager;

    move-result-object v1

    new-instance v2, Lbu/b;

    invoke-direct {v2, p0}, Lbu/b;-><init>(Lcom/transsion/subroom/fragment/UserPreferFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/startup/StartupManager;->p0(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->d:Lkotlin/jvm/functions/Function1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final j0(Lcom/transsion/subroom/fragment/UserPreferFragment;Z)Lkotlin/Unit;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->a:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit success result = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public d0(Landroid/view/LayoutInflater;)Lau/d;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lau/d;->c(Landroid/view/LayoutInflater;)Lau/d;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/subroom/fragment/UserPreferFragment;->d0(Landroid/view/LayoutInflater;)Lau/d;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->e:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->f:Landroid/view/View;

    if-eqz p2, :cond_1

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "userPrefer"

    const-string v2, "userprefer, xml inflate before viewCreated"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->e:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/transsion/subroom/fragment/UserPreferFragment;->f0(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->g:Z

    :goto_0
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "UserPrefer"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget v0, Lcom/transsion/subroom/R$id;->tv_skip:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->d:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->i:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljg/c;->h(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget v0, Lcom/transsion/subroom/R$id;->tv_submit:I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/subroom/fragment/UserPreferFragment;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/transsion/subroom/R$string;->choose_at_least_one:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    return-void

    :cond_5
    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/transsion/subroom/fragment/UserPreferFragment;->i0()V

    :cond_7
    :goto_2
    return-void
.end method
