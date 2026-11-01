.class public final Lwo/h;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwo/h$a;
    }
.end annotation


# static fields
.field public static final f:Lwo/h$a;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwo/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwo/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lwo/h;->f:Lwo/h$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lwo/h;->a:Ljava/lang/String;

    new-instance p1, Lwo/g;

    invoke-direct {p1}, Lwo/g;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lwo/h;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic g()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 1

    invoke-static {}, Lwo/h;->l()Lcom/transsion/moviedetailapi/IMovieDetailService;

    move-result-object v0

    return-object v0
.end method

.method private final h(I)Landroidx/fragment/app/Fragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "userId"

    iget-object v1, p0, Lwo/h;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lwo/h;->j()Lcom/transsion/moviedetailapi/IMovieDetailService;

    move-result-object p1

    if-eqz p1, :cond_0

    const-class v1, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    invoke-interface {p1, v0, v1}, Lcom/transsion/moviedetailapi/IMovieDetailService;->e(Landroid/os/Bundle;Ljava/lang/Class;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    new-instance p1, Lcom/transsion/baseui/fragment/EmptyFragment;

    invoke-direct {p1}, Lcom/transsion/baseui/fragment/EmptyFragment;-><init>()V

    :cond_1
    return-object p1
.end method

.method private final j()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 1

    iget-object v0, p0, Lwo/h;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/IMovieDetailService;

    return-object v0
.end method

.method private static final l()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/moviedetailapi/IMovieDetailService;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/IMovieDetailService;

    return-object v0
.end method


# virtual methods
.method public containsItem(J)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwo/h;->getItemId(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lwo/h;->getItemId(I)J

    move-result-wide v3

    cmp-long v1, p1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lwo/h;->getItemId(I)J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    new-instance p1, Lcom/transsion/baseui/fragment/EmptyFragment;

    invoke-direct {p1}, Lcom/transsion/baseui/fragment/EmptyFragment;-><init>()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/postdetail/comment/ui/CommentListFragment;->c:Lcom/transsion/postdetail/comment/ui/CommentListFragment$a;

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/comment/ui/CommentListFragment$a;->a(Z)Lcom/transsion/postdetail/comment/ui/CommentListFragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lwo/h;->h(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lwo/h;->h(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItemId(I)J
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    int-to-long v0, p1

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0xbb8

    iget-wide v2, p0, Lwo/h;->e:J

    :goto_0
    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x7d0

    iget-wide v2, p0, Lwo/h;->d:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x3e8

    iget-wide v2, p0, Lwo/h;->c:J

    goto :goto_0

    :goto_1
    return-wide v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lwo/h;->a:Ljava/lang/String;

    iget-wide v0, p0, Lwo/h;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwo/h;->c:J

    iget-wide v0, p0, Lwo/h;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwo/h;->d:J

    iget-wide v0, p0, Lwo/h;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwo/h;->e:J

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final k(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    sget p1, Lcom/transsion/baseui/R$string;->my_comments:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/tn/lib/widget/R$string;->my_posts:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/tn/lib/widget/R$string;->my_likes:I

    :goto_0
    return p1
.end method
