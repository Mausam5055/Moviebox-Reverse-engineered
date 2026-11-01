.class public final Lcom/transsion/transfer/impl/TransferSentFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/TransferSentFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lgv/i;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 $2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0017\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0012\u0010\u0004R!\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0016\u001a\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/transfer/impl/TransferSentFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lgv/i;",
        "<init>",
        "()V",
        "",
        "r0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "k0",
        "(Landroid/view/LayoutInflater;)Lgv/i;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "p0",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/transsion/transfer/impl/entity/FileData;",
        "a",
        "Lkotlin/Lazy;",
        "h0",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "data",
        "Lcom/transsion/transfer/impl/adapter/b;",
        "b",
        "i0",
        "()Lcom/transsion/transfer/impl/adapter/b;",
        "mAdapter",
        "Lcom/transsion/transfer/impl/k;",
        "c",
        "j0",
        "()Lcom/transsion/transfer/impl/k;",
        "serverViewModel",
        "d",
        "Transfer_psRelease"
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


# static fields
.field public static final d:Lcom/transsion/transfer/impl/TransferSentFragment$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/transfer/impl/TransferSentFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/TransferSentFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/transfer/impl/TransferSentFragment;->d:Lcom/transsion/transfer/impl/TransferSentFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/transfer/impl/t;

    invoke-direct {v0}, Lcom/transsion/transfer/impl/t;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/transfer/impl/u;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/u;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/transfer/impl/v;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/v;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/adapter/b;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->o0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/adapter/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Triple;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->m0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Triple;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/k;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->q0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/k;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->n0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/impl/TransferSentFragment;->g0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->l0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method private final h0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private final i0()Lcom/transsion/transfer/impl/adapter/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/impl/adapter/b;

    return-object v0
.end method

.method private final j0()Lcom/transsion/transfer/impl/k;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferSentFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/impl/k;

    return-object v0
.end method

.method private static final l0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v0, Lkv/b;->a:Lkv/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->j0()Lcom/transsion/transfer/impl/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/transfer/impl/k;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lkv/b;->q(ILjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final m0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Triple;)Lkotlin/Unit;
    .locals 4

    sget-object v0, Lmv/b;->a:Lmv/b;

    invoke-virtual {v0}, Lmv/b;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/transfer/impl/adapter/b;->I1(Ljava/lang/String;Lcom/transsion/transfer/impl/entity/FileData;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final n0(Lcom/transsion/transfer/impl/TransferSentFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/transfer/impl/adapter/b;->H1()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final o0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/adapter/b;
    .locals 3

    new-instance v0, Lcom/transsion/transfer/impl/adapter/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/transfer/impl/adapter/b;-><init>(Lkotlinx/coroutines/n0;ZLjava/util/concurrent/CopyOnWriteArrayList;)V

    return-object v0
.end method

.method private static final q0(Lcom/transsion/transfer/impl/TransferSentFragment;)Lcom/transsion/transfer/impl/k;
    .locals 2

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/transsion/transfer/impl/k;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    check-cast p0, Lcom/transsion/transfer/impl/k;

    return-object p0
.end method

.method private final r0()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgv/i;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgv/i;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->k0(Landroid/view/LayoutInflater;)Lgv/i;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgv/i;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lgv/i;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$j;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->j0()Lcom/transsion/transfer/impl/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->u()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/transsion/transfer/impl/w;

    invoke-direct {p2, p0}, Lcom/transsion/transfer/impl/w;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    new-instance v0, Lcom/transsion/transfer/impl/TransferSentFragment$b;

    invoke-direct {v0, p2}, Lcom/transsion/transfer/impl/TransferSentFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->j0()Lcom/transsion/transfer/impl/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->v()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/transsion/transfer/impl/x;

    invoke-direct {p2, p0}, Lcom/transsion/transfer/impl/x;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    new-instance v0, Lcom/transsion/transfer/impl/TransferSentFragment$b;

    invoke-direct {v0, p2}, Lcom/transsion/transfer/impl/TransferSentFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->j0()Lcom/transsion/transfer/impl/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/k;->o()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/transsion/transfer/impl/y;

    invoke-direct {p2, p0}, Lcom/transsion/transfer/impl/y;-><init>(Lcom/transsion/transfer/impl/TransferSentFragment;)V

    new-instance v0, Lcom/transsion/transfer/impl/TransferSentFragment$b;

    invoke-direct {v0, p2}, Lcom/transsion/transfer/impl/TransferSentFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->r0()V

    return-void
.end method

.method public k0(Landroid/view/LayoutInflater;)Lgv/i;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lgv/i;->c(Landroid/view/LayoutInflater;)Lgv/i;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public lazyLoadData()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    sget-object v1, Lmv/b;->a:Lmv/b;

    invoke-virtual {v1}, Lmv/b;->d()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->r0()V

    return-void
.end method

.method public final p0()V
    .locals 7

    sget-object v0, Lmv/b;->a:Lmv/b;

    invoke-virtual {v0}, Lmv/b;->d()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->e(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v3

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->e(I)I

    move-result v1

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v3}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v5, v2}, Lkotlin/collections/MapsKt;->o(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->h0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->i0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferSentFragment;->r0()V

    return-void
.end method
