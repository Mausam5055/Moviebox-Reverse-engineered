.class public final Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;
.super Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment<",
        "Lqv/j;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001#B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0004R\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;",
        "Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;",
        "Lqv/j;",
        "<init>",
        "()V",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "video",
        "",
        "F0",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V",
        "G0",
        "D0",
        "",
        "isSubscribed",
        "I0",
        "(Z)V",
        "E0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "w0",
        "(Landroid/view/LayoutInflater;)Lqv/j;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "initViewData",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "v0",
        "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;",
        "mViewModel",
        "c",
        "a",
        "UGCVideoDetail_psRelease"
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
.field public static final c:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$a;


# instance fields
.field private final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->c:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;-><init>()V

    const-class v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->b:Lkotlin/Lazy;

    return-void
.end method

.method private static final A0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->E0()V

    return-void
.end method

.method private static final B0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Lkotlin/Unit;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->F0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final C0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->I0(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->v0()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->G()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->I0(Z)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final D0()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->v0()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->G()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->I0(Z)V

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->v0()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->n0(Ljava/lang/String;Z)V

    return-void
.end method

.method private final E0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->v0()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->G()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "/profile/user_profile"

    invoke-static {v1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v1

    const-string v3, "userId"

    invoke-virtual {v1, v3, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final F0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqv/j;->i:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lqv/j;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lqv/j;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v1, :cond_2

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    sget v3, Lcom/transsion/wrapperad/R$color;->white_20:I

    invoke-virtual {v2, v3}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lqv/j;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lqv/j;->j:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getHasSubscribe()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->I0(Z)V

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lqv/j;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lqv/j;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lqv/j;->e:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_1
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->G0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    sget-object p1, Lak/o;->a:Lak/o;

    invoke-virtual {p1}, Lak/o;->i()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lqv/j;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lqv/j;->g:Lcom/noober/background/view/BLTextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lqv/j;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lqv/j;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private final G0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getFilteredHashTags()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lqv/j;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    new-instance v0, Lcom/transsion/ugcvideodetail/adapter/i;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getFilteredHashTags()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/transsion/ugcvideodetail/adapter/i;-><init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lqv/j;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lqv/j;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/f1;

    invoke-direct {v1, p1, p0}, Lcom/transsion/ugcvideodetail/fragment/f1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lqv/j;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lqv/j;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private static final H0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 15

    const-string v0, "<unused var>"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getFilteredHashTags()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move/from16 v2, p4

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    sget-object v3, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;->getTag()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_2

    :cond_2
    move-object v7, v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->C0()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_3

    :cond_3
    move-object v8, v1

    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->A0()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_4

    :cond_4
    move-object v9, v1

    :goto_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->z0()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object v10, v1

    :goto_5
    const/16 v13, 0x180

    const/4 v14, 0x0

    const-string v4, "/ugc_video/detail"

    const-string v5, "hash_tag"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-static/range {v3 .. v14}, Lcom/transsion/ugcvideodetail/hepler/h;->b(Lcom/transsion/ugcvideodetail/hepler/h;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getFilteredHashTags()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    const-string v2, "/home/hashtag"

    invoke-static {v2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v2

    const-string v3, "titleHashTag"

    invoke-virtual {v2, v3, v0}, Lcom/therouter/router/Navigator;->I(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "UGCVideoId"

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final I0(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lqv/j;->g:Lcom/noober/background/view/BLTextView;

    if-eqz v0, :cond_1

    const/high16 v1, 0x40800000    # 4.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->white_10:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lcom/transsion/ugcvideodetail/R$drawable;->ugc_video_detail_ic_subscribed_hook:I

    invoke-virtual {v0, p1, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/baseui/R$string;->str_Subscribed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/tn/lib/widget/R$color;->gray_dark_00:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    sget p1, Lcom/transsion/ugcvideodetail/R$drawable;->ugc_video_detail_ic_subscribe_add:I

    invoke-virtual {v0, p1, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/baseui/R$string;->str_Subscribe:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic o0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->B0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->z0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->y0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->A0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->C0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->x0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->H0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final v0()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    return-object v0
.end method

.method private static final x0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;->m0(Lcom/transsion/play/detail/fragment/BaseBottomDialogFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final y0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->D0()V

    return-void
.end method

.method private static final z0(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->E0()V

    return-void
.end method


# virtual methods
.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->w0(Landroid/view/LayoutInflater;)Lqv/j;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqv/j;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/b1;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/b1;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lqv/j;->g:Lcom/noober/background/view/BLTextView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/c1;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/c1;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lqv/j;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/d1;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/d1;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lqv/j;->j:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/e1;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/e1;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public initViewData()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/j;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lqv/j;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v1, Lig/c;

    const/16 v2, 0xc

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v3}, Ldk/a;->b(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lig/c;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_0
    return-void
.end method

.method public initViewModel()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->v0()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->G()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/z0;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/z0;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;)V

    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$b;

    invoke-direct {v2, v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;->v0()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->R()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/a1;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/a1;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment;)V

    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$b;

    invoke-direct {v2, v1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDialogInfoDialogFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method

.method public w0(Landroid/view/LayoutInflater;)Lqv/j;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lqv/j;->c(Landroid/view/LayoutInflater;)Lqv/j;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
