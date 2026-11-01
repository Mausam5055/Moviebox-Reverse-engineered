.class public final Lcom/transsion/room/fragment/RoomMyListFragment;
.super Lcom/transsion/room/fragment/RoomListBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/room/fragment/RoomMyListFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u000eR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/room/fragment/RoomMyListFragment;",
        "Lcom/transsion/room/fragment/RoomListBaseFragment;",
        "<init>",
        "()V",
        "",
        "N0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initViewModel",
        "initListener",
        "",
        "getEmptyDescText",
        "()Ljava/lang/String;",
        "Lcom/transsion/room/adapter/RoomListFrom;",
        "w0",
        "()Lcom/transsion/room/adapter/RoomListFrom;",
        "",
        "isRefresh",
        "E0",
        "(Z)V",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "pageName",
        "n",
        "Ljava/lang/String;",
        "userId",
        "o",
        "a",
        "Room_psRelease"
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
.field public static final o:Lcom/transsion/room/fragment/RoomMyListFragment$a;


# instance fields
.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/room/fragment/RoomMyListFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/room/fragment/RoomMyListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/room/fragment/RoomMyListFragment;->o:Lcom/transsion/room/fragment/RoomMyListFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic K0(Lcom/transsion/room/fragment/RoomMyListFragment;Lcom/transsion/moviedetailapi/bean/RoomBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/fragment/RoomMyListFragment;->M0(Lcom/transsion/room/fragment/RoomMyListFragment;Lcom/transsion/moviedetailapi/bean/RoomBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L0(Lcom/transsion/room/fragment/RoomMyListFragment;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/room/fragment/RoomMyListFragment;->O0(Lcom/transsion/room/fragment/RoomMyListFragment;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final M0(Lcom/transsion/room/fragment/RoomMyListFragment;Lcom/transsion/moviedetailapi/bean/RoomBean;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->J0(Lcom/transsion/moviedetailapi/bean/RoomBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final N0()V
    .locals 7

    new-instance v6, Lcom/transsion/room/fragment/y1;

    invoke-direct {v6, p0}, Lcom/transsion/room/fragment/y1;-><init>(Lcom/transsion/room/fragment/RoomMyListFragment;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v1, "getName(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final O0(Lcom/transsion/room/fragment/RoomMyListFragment;Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;)Lkotlin/Unit;
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;->getJoin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->t0()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->u0()Lcom/transsion/room/adapter/RoomListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/RoomItem;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/RoomItem;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/JoinRoomEvent;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v1, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->u0()Lcom/transsion/room/adapter/RoomListAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->G0(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->u0()Lcom/transsion/room/adapter/RoomListAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->checkToShowEmptyView()V

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public E0(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->v0()Lcom/transsion/room/viewmodel/RoomViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->getMPage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->getMPerPage()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/room/fragment/RoomMyListFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/transsion/room/viewmodel/RoomViewModel;->z(ZLjava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getEmptyDescText()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsion/room/R$string;->my_room_empty_tips:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initListener()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/room/fragment/RoomMyListFragment;->N0()V

    return-void
.end method

.method public initViewModel()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->initViewModel()V

    invoke-virtual {p0}, Lcom/transsion/room/fragment/RoomListBaseFragment;->v0()Lcom/transsion/room/viewmodel/RoomViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/room/viewmodel/RoomViewModel;->A()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/room/fragment/z1;

    invoke-direct {v1, p0}, Lcom/transsion/room/fragment/z1;-><init>(Lcom/transsion/room/fragment/RoomMyListFragment;)V

    new-instance v2, Lcom/transsion/room/fragment/RoomMyListFragment$b;

    invoke-direct {v2, v1}, Lcom/transsion/room/fragment/RoomMyListFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "my_room_list"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/room/fragment/RoomListBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput-object p1, p0, Lcom/transsion/room/fragment/RoomMyListFragment;->n:Ljava/lang/String;

    return-void
.end method

.method public pageName()Ljava/lang/String;
    .locals 1

    const-string v0, "my_room_list"

    return-object v0
.end method

.method public w0()Lcom/transsion/room/adapter/RoomListFrom;
    .locals 1

    sget-object v0, Lcom/transsion/room/adapter/RoomListFrom;->MY_ROOM:Lcom/transsion/room/adapter/RoomListFrom;

    return-object v0
.end method
