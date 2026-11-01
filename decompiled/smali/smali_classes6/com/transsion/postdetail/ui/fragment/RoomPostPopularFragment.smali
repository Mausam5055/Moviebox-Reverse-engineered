.class public Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;
.super Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0010J\u000f\u0010\u0017\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0010J\u000f\u0010\u0018\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0019\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;",
        "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;",
        "<init>",
        "()V",
        "",
        "initViewData",
        "initViewModel",
        "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "postAdapterFrom",
        "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "item",
        "onItemHeaderClick",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "",
        "onItemHeaderModuleName",
        "()Ljava/lang/String;",
        "",
        "isFirstLoad",
        "isRefresh",
        "loadData",
        "(ZZ)V",
        "pageName",
        "subpageName",
        "isSwipeRefreshEnable",
        "()Z",
        "isNeedInsertPublishPost",
        "",
        "tabIndex",
        "()I",
        "isStaggeredPost",
        "Companion",
        "a",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;

.field private static final GROUP_ID:Ljava/lang/String; = "id"

.field public static final SUBPAGE_NAME:Ljava/lang/String; = "room_detail_popular"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;->initViewModel$lambda$1(Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final initViewModel$lambda$1(Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->updateData(Lcom/transsion/moviedetailapi/bean/PostSubjectBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public initViewData()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->initViewData()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->setMGroupId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "group_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMViewModel()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->I()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/c5;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/c5;-><init>(Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment;)V

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$b;

    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/RoomPostPopularFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method public isNeedInsertPublishPost()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStaggeredPost()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwipeRefreshEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadData(ZZ)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMGroupId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMViewModel()Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->getMPage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    move v1, p2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->N(ZLjava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public onItemHeaderClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;->openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    return-void
.end method

.method public onItemHeaderModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "user_center"

    return-object v0
.end method

.method public pageName()Ljava/lang/String;
    .locals 1

    const-string v0, "room_detail"

    return-object v0
.end method

.method public postAdapterFrom()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;->DETAIL:Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;

    return-object v0
.end method

.method public subpageName()Ljava/lang/String;
    .locals 1

    const-string v0, "room_detail_popular"

    return-object v0
.end method

.method public tabIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
