.class public final Lcom/transsion/transfer/impl/TransferReceivedFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/TransferReceivedFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lgv/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\r\u0010\u0013\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\r\u0010\u0014\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R!\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0017\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010%\u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0017\u001a\u0004\u0008#\u0010$\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/transfer/impl/TransferReceivedFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lgv/h;",
        "<init>",
        "()V",
        "",
        "v0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "n0",
        "(Landroid/view/LayoutInflater;)Lgv/h;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "lazyLoadData",
        "m0",
        "t0",
        "u0",
        "Lcom/transsion/transfer/impl/ClientViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "j0",
        "()Lcom/transsion/transfer/impl/ClientViewModel;",
        "clientViewModel",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/transsion/transfer/impl/entity/FileData;",
        "b",
        "k0",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "data",
        "Lcom/transsion/transfer/impl/adapter/b;",
        "c",
        "l0",
        "()Lcom/transsion/transfer/impl/adapter/b;",
        "mAdapter",
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
.field public static final d:Lcom/transsion/transfer/impl/TransferReceivedFragment$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/transfer/impl/TransferReceivedFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/TransferReceivedFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/transfer/impl/TransferReceivedFragment;->d:Lcom/transsion/transfer/impl/TransferReceivedFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/transfer/impl/p;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/p;-><init>(Lcom/transsion/transfer/impl/TransferReceivedFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferReceivedFragment;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/transfer/impl/q;

    invoke-direct {v0}, Lcom/transsion/transfer/impl/q;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferReceivedFragment;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/transfer/impl/r;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/impl/r;-><init>(Lcom/transsion/transfer/impl/TransferReceivedFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/transfer/impl/TransferReceivedFragment;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a0(Lcom/transsion/transfer/impl/TransferReceivedFragment;)Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->h0(Lcom/transsion/transfer/impl/TransferReceivedFragment;)Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->p0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Lcom/transsion/transfer/impl/entity/FileData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->s0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Lcom/transsion/transfer/impl/entity/FileData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->i0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e0(Lcom/transsion/transfer/impl/TransferReceivedFragment;)Lcom/transsion/transfer/impl/adapter/b;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->r0(Lcom/transsion/transfer/impl/TransferReceivedFragment;)Lcom/transsion/transfer/impl/adapter/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->o0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Lcom/transsion/transfer/impl/TransferReceivedFragment;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->q0(Lcom/transsion/transfer/impl/TransferReceivedFragment;ZLjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h0(Lcom/transsion/transfer/impl/TransferReceivedFragment;)Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 2

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/transsion/transfer/impl/ClientViewModel;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p0

    check-cast p0, Lcom/transsion/transfer/impl/ClientViewModel;

    return-object p0
.end method

.method private static final i0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method private final j0()Lcom/transsion/transfer/impl/ClientViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferReceivedFragment;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/impl/ClientViewModel;

    return-object v0
.end method

.method private final k0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferReceivedFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private final l0()Lcom/transsion/transfer/impl/adapter/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferReceivedFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/impl/adapter/b;

    return-object v0
.end method

.method private static final o0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 4

    sget-object v0, Lmv/a;->a:Lmv/a;

    invoke-virtual {v0}, Lmv/a;->d()Ljava/util/List;

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

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/transsion/transfer/impl/entity/FileData;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->l0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/transfer/impl/adapter/b;->I1(Ljava/lang/String;Lcom/transsion/transfer/impl/entity/FileData;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final p0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 6

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->l0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->e(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v2

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v5}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->e(I)I

    move-result v0

    invoke-static {v0, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v4, v1}, Lkotlin/collections/MapsKt;->o(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->k0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->k0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->l0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/impl/ClientViewModel;->C(Ljava/util/List;)V

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->v0()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final q0(Lcom/transsion/transfer/impl/TransferReceivedFragment;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/impl/ClientViewModel;->s(Z)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final r0(Lcom/transsion/transfer/impl/TransferReceivedFragment;)Lcom/transsion/transfer/impl/adapter/b;
    .locals 4

    new-instance v0, Lcom/transsion/transfer/impl/adapter/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->k0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/transfer/impl/adapter/b;-><init>(Lkotlinx/coroutines/n0;ZLjava/util/concurrent/CopyOnWriteArrayList;)V

    new-instance v1, Lcom/transsion/transfer/impl/s;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/s;-><init>(Lcom/transsion/transfer/impl/TransferReceivedFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/adapter/b;->J1(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method private static final s0(Lcom/transsion/transfer/impl/TransferReceivedFragment;Lcom/transsion/transfer/impl/entity/FileData;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/impl/ClientViewModel;->y(Lcom/transsion/transfer/impl/entity/FileData;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final v0()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->k0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgv/h;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgv/h;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->n0(Landroid/view/LayoutInflater;)Lgv/h;

    move-result-object p1

    return-object p1
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgv/h;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lgv/h;->b:Landroidx/recyclerview/widget/RecyclerView;

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

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->l0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/ClientViewModel;->u()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/transsion/transfer/impl/n;

    invoke-direct {p2, p0}, Lcom/transsion/transfer/impl/n;-><init>(Lcom/transsion/transfer/impl/TransferReceivedFragment;)V

    new-instance v0, Lcom/transsion/transfer/impl/TransferReceivedFragment$b;

    invoke-direct {v0, p2}, Lcom/transsion/transfer/impl/TransferReceivedFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/ClientViewModel;->v()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/transsion/transfer/impl/o;

    invoke-direct {p2, p0}, Lcom/transsion/transfer/impl/o;-><init>(Lcom/transsion/transfer/impl/TransferReceivedFragment;)V

    new-instance v0, Lcom/transsion/transfer/impl/TransferReceivedFragment$b;

    invoke-direct {v0, p2}, Lcom/transsion/transfer/impl/TransferReceivedFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->v0()V

    return-void
.end method

.method public lazyLoadData()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/ClientViewModel;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object v0

    new-instance v1, Lcom/transsion/transfer/impl/m;

    invoke-direct {v1, p0}, Lcom/transsion/transfer/impl/m;-><init>(Lcom/transsion/transfer/impl/TransferReceivedFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/ClientViewModel;->k(Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/ClientViewModel;->s(Z)V

    :goto_0
    return-void
.end method

.method public final m0()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->j0()Lcom/transsion/transfer/impl/ClientViewModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/impl/ClientViewModel;->s(Z)V

    return-void
.end method

.method public n0(Landroid/view/LayoutInflater;)Lgv/h;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lgv/h;->c(Landroid/view/LayoutInflater;)Lgv/h;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final t0()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->l0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/adapter/b;->H1()V

    return-void
.end method

.method public final u0()V
    .locals 7

    sget-object v0, Lmv/a;->a:Lmv/a;

    invoke-virtual {v0}, Lmv/a;->d()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->l0()Lcom/transsion/transfer/impl/adapter/b;

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

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->k0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->k0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->l0()Lcom/transsion/transfer/impl/adapter/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->v0()V

    return-void
.end method
