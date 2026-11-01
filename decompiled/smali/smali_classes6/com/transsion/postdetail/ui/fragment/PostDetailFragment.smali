.class public final Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;

# interfaces
.implements Lcom/tn/lib/widget/dialog/TRDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lso/q;",
        ">;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 j2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001kB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u0019\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0005J\u000f\u0010\u001f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008 \u0010\u0005J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0018J\u000f\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010)\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008)\u0010(J\u000f\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010-\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0005J\u0017\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0017\u00102\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00082\u00101J1\u00109\u001a\u00020\u00062\u0006\u00104\u001a\u0002032\u0010\u00106\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u0016052\u0006\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010;\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008<\u0010\u0005J\u000f\u0010=\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0005J\u000f\u0010>\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008>\u0010\u0005J\u000f\u0010?\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008@\u0010\u0005J\u0017\u0010A\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008A\u0010\u0011J\u0017\u0010B\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008B\u0010\u0011J\u0017\u0010C\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008C\u0010\u0011R\u0018\u0010D\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER$\u0010F\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010E\u001a\u0004\u0008G\u0010\u0018\"\u0004\u0008H\u0010IR\u0016\u0010J\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR$\u0010L\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010E\u001a\u0004\u0008M\u0010\u0018\"\u0004\u0008N\u0010IR\u0018\u0010O\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010ER$\u0010P\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010\u0011R\u0016\u0010U\u001a\u00020&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008U\u0010KR\u0018\u0010W\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u0010XR\u001b\u0010^\u001a\u00020Y8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]R\u001d\u0010c\u001a\u0004\u0018\u00010_8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008`\u0010[\u001a\u0004\u0008a\u0010bR\u0018\u0010e\u001a\u0004\u0018\u00010d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010fR\u0018\u0010h\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010i\u00a8\u0006l"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lso/q;",
        "Lcom/tn/lib/widget/dialog/TRDialogListener;",
        "<init>",
        "()V",
        "",
        "initView",
        "",
        "commentCount",
        "updateCommentCount",
        "(J)V",
        "loadData",
        "updatePostDetail",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "postItem",
        "onDownloadClick",
        "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V",
        "requestPermission",
        "showSettingDialog",
        "item",
        "setPTParams",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "observeLike",
        "updateOperationViewState",
        "clickLike",
        "showCommentsDialog",
        "doShare",
        "clickDownload",
        "localLogPause",
        "receiveArguments",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "getViewBinding",
        "(Landroid/view/LayoutInflater;)Lso/q;",
        "getPageStateLayoutTitle",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "isMonitorNetworkState",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "initViewData",
        "Lcom/tn/lib/widget/dialog/TRDialog;",
        "dialog",
        "onLeftButtonClick",
        "(Lcom/tn/lib/widget/dialog/TRDialog;)V",
        "onRightButtonClick",
        "",
        "requestCode",
        "",
        "permissions",
        "",
        "grantResults",
        "onRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "onResume",
        "onPause",
        "onDestroy",
        "openSubjectDetail",
        "openRoomDetail",
        "openUserCenter",
        "tranOps",
        "Ljava/lang/String;",
        "postId",
        "getPostId",
        "setPostId",
        "(Ljava/lang/String;)V",
        "fromComment",
        "Z",
        "commentId",
        "getCommentId",
        "setCommentId",
        "pageFrom",
        "mPostDetailBean",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "getMPostDetailBean",
        "()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;",
        "setMPostDetailBean",
        "mNeedDeleteOnExit",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment;",
        "commentFragment",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment;",
        "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "getViewModel",
        "()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;",
        "viewModel",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "mLoginApi$delegate",
        "getMLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "mLoginApi",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "onCommentCountChangedListener",
        "Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;",
        "Lcom/transsion/ninegridview/a;",
        "mGifPlayerManager",
        "Lcom/transsion/ninegridview/a;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;

.field public static final PAGE_NAME:Ljava/lang/String; = "post_detail"


# instance fields
.field private commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

.field private commentId:Ljava/lang/String;

.field private fromComment:Z

.field private mGifPlayerManager:Lcom/transsion/ninegridview/a;

.field private final mLoginApi$delegate:Lkotlin/Lazy;

.field private mNeedDeleteOnExit:Z

.field private mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

.field private onCommentCountChangedListener:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

.field private pageFrom:Ljava/lang/String;

.field private postId:Ljava/lang/String;

.field private tranOps:Ljava/lang/String;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class v1, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v0, p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/d3;

    invoke-direct {v0}, Lcom/transsion/postdetail/ui/fragment/d3;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mLoginApi$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$37$lambda$35(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$22$lambda$21$lambda$16(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initView$lambda$6$lambda$3$lambda$2(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$22$lambda$21$lambda$18(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$22$lambda$21$lambda$13(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$37$lambda$29(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$22$lambda$21$lambda$20(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateCommentCount(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateCommentCount(J)V

    return-void
.end method

.method private final clickDownload()V
    .locals 98

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getAudio()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Audio;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :cond_3
    :goto_2
    move-object v8, v4

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    invoke-static {v4, v2, v5, v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getCoverUrl$default(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v97, ""

    if-eqz v4, :cond_6

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v2, v97

    :cond_6
    move-object v9, v2

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceId()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object v7, v2

    goto :goto_6

    :cond_8
    move-object v7, v3

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :goto_6
    new-instance v2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    move-object v6, v4

    goto :goto_8

    :cond_b
    :goto_7
    move-object/from16 v6, v97

    :goto_8
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Audio;->getSize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v10, v1

    goto :goto_9

    :cond_c
    move-object v10, v3

    :goto_9
    const v95, 0xffff

    const/16 v96, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, -0x2040

    const/16 v94, -0x1

    const-string v11, ""

    move-object v5, v2

    invoke-direct/range {v5 .. v96}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_d
    move-object v1, v3

    :goto_a
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_e
    move-object v1, v3

    :goto_b
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_f
    move-object v1, v3

    :goto_c
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v1

    check-cast v11, Landroidx/fragment/app/FragmentActivity;

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getOps()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_d

    :cond_10
    move-object v14, v3

    :goto_d
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetector()Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getResourceLink()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_e

    :cond_11
    move-object v15, v1

    goto :goto_f

    :cond_12
    :goto_e
    move-object/from16 v15, v97

    :goto_f
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    :cond_13
    move-object/from16 v16, v3

    const/16 v18, 0x40

    const/16 v19, 0x0

    const-string v13, "post_audio_detail"

    const/16 v17, 0x0

    move-object v12, v2

    invoke-static/range {v10 .. v19}, Lcom/transsnet/downloader/DownloadManagerApi;->P(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/postdetail/helper/a;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final clickLike()V
    .locals 5

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->G(Ljava/lang/String;I)V

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getHasLike()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/transsion/postdetail/helper/a;->p(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v0, Luh/b;->a:Luh/b$a;

    sget v1, Lcom/tn/lib/widget/R$string;->no_network_tips:I

    invoke-virtual {v0, v1}, Luh/b$a;->d(I)V

    :goto_2
    return-void
.end method

.method private final doShare()V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    move v11, v1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    sget-object v3, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    sget-object v4, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_5

    :cond_4
    move-object v5, v2

    :goto_5
    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_6

    :cond_5
    move-object v6, v2

    :goto_6
    sget-object v1, Lcom/transsion/usercenterapi/ReportType;->POST:Lcom/transsion/usercenterapi/ReportType;

    invoke-virtual {v1}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    :cond_6
    move-object v8, v2

    iget-object v14, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->tranOps:Ljava/lang/String;

    const/16 v16, 0x900

    const/16 v17, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v12, 0x0

    const-string v13, "postdetail"

    const/4 v15, 0x0

    invoke-static/range {v3 .. v17}, Lcom/transsion/share/share/ShareDialogFragment$a;->b(Lcom/transsion/share/share/ShareDialogFragment$a;Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/share/share/ShareDialogFragment;

    move-result-object v1

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$b;

    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$b;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "share"

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/postdetail/helper/a;->A(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getMLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mLoginApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "post_detail"

    return-object v0
.end method

.method private final getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    return-object v0
.end method

.method private final initView()V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$c;

    invoke-direct {v1, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$c;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    iput-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->onCommentCountChangedListener:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/q;

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v1, v1, Lso/q;->f:Lcom/tn/lib/view/TitleLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    sget v3, Lcom/transsion/postdetail/R$drawable;->ic_post_negative_feedback:I

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/s2;

    invoke-direct {v4, v0}, Lcom/transsion/postdetail/ui/fragment/s2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    invoke-virtual {v1, v3, v4}, Lcom/tn/lib/view/TitleLayout;->setRightView(ILandroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    invoke-virtual {v1}, Lcom/tn/lib/view/TitleLayout;->getRightImageView()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v7, :cond_0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    iput v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "getChildFragmentManager(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    const-string v3, "beginTransaction()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->O:Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;

    iget-object v5, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    sget-object v3, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    invoke-virtual {v3}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_2

    :cond_3
    const-wide/16 v7, 0x0

    :goto_2
    iget-object v3, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v11, v2

    goto :goto_3

    :cond_4
    move-object v11, v3

    :goto_3
    iget-object v12, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    const/16 v19, 0x1f88

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v4 .. v20}, Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;->b(Lcom/transsion/postdetail/ui/fragment/CommentFragment$a;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    move-result-object v2

    sget v3, Lcom/transsion/postdetail/R$id;->fl_comment_container:I

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    iput-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/w;->i()I

    iget-object v1, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->onCommentCountChangedListener:Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;

    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->b1(Lcom/transsion/postdetail/ui/fragment/CommentFragment$b;)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/q;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lso/q;->g:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/t2;

    invoke-direct {v2, v0}, Lcom/transsion/postdetail/ui/fragment/t2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method private static final initView$lambda$6$lambda$3(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V
    .locals 7

    sget-object p1, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    sget v0, Lcom/transsion/postdetail/R$drawable;->ic_post_negative_feedback:I

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, p1

    goto :goto_2

    :cond_3
    :goto_1
    const-string p1, ""

    goto :goto_0

    :goto_2
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v4}, Lcom/transsion/postdetail/helper/a;->l(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string p1, "requireContext(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object p1

    const-string v4, "getViewLifecycleOwner(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/transsion/postdetail/ui/fragment/p2;

    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/p2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->k(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlinx/coroutines/n0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final initView$lambda$6$lambda$3$lambda$2(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mNeedDeleteOnExit:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initView$lambda$9(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z

    :cond_0
    return-void
.end method

.method private static final initViewModel$lambda$26$lambda$23(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showEmptyView$default(Lcom/transsion/baseui/fragment/PageStatusFragment;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showContentView()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->tranOps:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setTran_ops(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final initViewModel$lambda$26$lambda$25(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "0"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lty/b;->a:Lty/b$a;

    invoke-virtual {v0}, Lty/b$a;->a()Lty/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lty/b;->e(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    sget-object p1, Luh/b;->a:Luh/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_2

    sget v0, Lcom/transsion/postdetail/R$string;->delete_post_failed:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic j0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->observeLike$lambda$28(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$37$lambda$31(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$37$lambda$32(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final loadData()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->tranOps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setTran_ops(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.transsion.postdetail.ui.activity.PostDetailActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/transsion/postdetail/ui/activity/PostDetailActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseNewActivity;->x0()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->x(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/q;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/e3;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/e3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private static final loadData$lambda$12(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lso/q;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lso/q;->b:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final localLogPause()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lhj/b;->h()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "post_duration"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static synthetic m0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$37$lambda$30(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final mLoginApi_delegate$lambda$0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$22$lambda$21$lambda$17(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final newInstance(Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->Companion:Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$a;->a(Ljava/lang/String;ZLjava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$37$lambda$36(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final observeLike()V
    .locals 7

    new-instance v6, Lcom/transsion/postdetail/ui/fragment/r2;

    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/r2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/LikeEvent;

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

.method private static final observeLike$lambda$28(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsnet/flow/event/sync/event/LikeEvent;)Lkotlin/Unit;
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setHasLike(Ljava/lang/Boolean;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LikeEvent;->getLike()Z

    move-result p1

    const-wide/16 v2, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Stat;->getLikeCount()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_5
    invoke-virtual {p1, v1}, Lcom/transsion/moviedetailapi/bean/Stat;->setLikeCount(Ljava/lang/Long;)V

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/postdetail/helper/a;->i(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->b(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    :cond_1
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    :cond_2
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/util/PostSaveHelper;->b(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->requestPermission()V

    :goto_0
    return-void
.end method

.method public static synthetic p0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initViewModel$lambda$26$lambda$23(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->loadData$lambda$12(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    return-void
.end method

.method public static synthetic r0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$22$lambda$21$lambda$15(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final requestPermission()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    invoke-virtual {v1}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic s0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$37$lambda$34(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final setPTParams(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhj/b;->k(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getRec_ops()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhj/b;->n(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v1

    :cond_2
    const-string v3, "post_id"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Media;->getMediaType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v3

    :cond_6
    :goto_1
    const-string v3, "post_media_type"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v1, v2

    :goto_2
    const-string v3, "subject_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getHasResource()Ljava/lang/Boolean;

    move-result-object v2

    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "has_resource"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private final showCommentsDialog()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->d1(Lcom/transsion/moviedetailapi/bean/CommentBean;)Z

    :cond_0
    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/postdetail/helper/a;->e(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final showSettingDialog()V
    .locals 6

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/ninegridview/R$string;->system_settings:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v3, Lcom/transsion/baseui/R$string;->base_app_name:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->permission_deny_down_tip:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/tn/lib/widget/dialog/TRDialog$a;

    invoke-direct {v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->g(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->e(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/ninegridview/R$string;->system_settings:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tn/lib/widget/dialog/TRDialog$a;->j(Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->f(Lcom/tn/lib/widget/dialog/TRDialogListener;)Lcom/tn/lib/widget/dialog/TRDialog$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/lib/widget/dialog/TRDialog$a;->a()Lcom/tn/lib/widget/dialog/TRBaseDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$22$lambda$21$lambda$14(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updatePostDetail$lambda$22$lambda$21$lambda$19(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final updateCommentCount(J)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/q;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lso/q;->h:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_0

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    sget v2, Lcom/transsion/postdetail/R$string;->comments:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/q;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setCommentCount(J)V

    :cond_1
    return-void
.end method

.method private final updateOperationViewState()V
    .locals 15

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lso/q;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/u2;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/u2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setOnNegativeFeedbackClick(Lkotlin/jvm/functions/Function0;)V

    iget-object v3, v0, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    new-instance v5, Lcom/transsion/postdetail/ui/fragment/v2;

    invoke-direct {v5, p0}, Lcom/transsion/postdetail/ui/fragment/v2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v6, Lcom/transsion/postdetail/ui/fragment/w2;

    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/w2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v7, Lcom/transsion/postdetail/ui/fragment/x2;

    invoke-direct {v7, p0}, Lcom/transsion/postdetail/ui/fragment/x2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v8, Lcom/transsion/postdetail/ui/fragment/y2;

    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/fragment/y2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v9, Lcom/transsion/postdetail/ui/fragment/z2;

    invoke-direct {v9, p0}, Lcom/transsion/postdetail/ui/fragment/z2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v10, Lcom/transsion/postdetail/ui/fragment/b3;

    invoke-direct {v10, p0}, Lcom/transsion/postdetail/ui/fragment/b3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v11, Lcom/transsion/postdetail/ui/fragment/c3;

    invoke-direct {v11, p0}, Lcom/transsion/postdetail/ui/fragment/c3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    const/16 v13, 0x100

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v3 .. v14}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomBarClick$default(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final updateOperationViewState$lambda$37$lambda$29(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 3

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/postdetail/helper/a;->l(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateOperationViewState$lambda$37$lambda$30(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->clickLike()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateOperationViewState$lambda$37$lambda$31(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->showCommentsDialog()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateOperationViewState$lambda$37$lambda$32(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->doShare()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateOperationViewState$lambda$37$lambda$33(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateOperationViewState$lambda$37$lambda$34(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateOperationViewState$lambda$37$lambda$35(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updateOperationViewState$lambda$37$lambda$36(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final updatePostDetail()V
    .locals 14

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/q;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentFragment:Lcom/transsion/postdetail/ui/fragment/CommentFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getStat()Lcom/transsion/moviedetailapi/bean/Stat;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Stat;->getCommentCount()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/transsion/postdetail/ui/fragment/CommentFragment;->updateCommentCount(J)V

    :cond_1
    iget-object v2, v1, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setIsDetail(Z)V

    iget-object v2, v1, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    const-string v3, "post_detail"

    iget-object v4, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setPage(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/a3;

    invoke-direct {v3, p0}, Lcom/transsion/postdetail/ui/fragment/a3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    invoke-virtual {v2, v3}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setOnNegativeFeedbackClick(Lkotlin/jvm/functions/Function0;)V

    iget-object v1, v1, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setData(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lso/q;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lso/q;->e:Lcom/transsion/postdetail/ui/view/PostDetailItemView;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/f3;

    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ui/fragment/f3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v5, Lcom/transsion/postdetail/ui/fragment/g3;

    invoke-direct {v5, p0}, Lcom/transsion/postdetail/ui/fragment/g3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v6, Lcom/transsion/postdetail/ui/fragment/h3;

    invoke-direct {v6, p0}, Lcom/transsion/postdetail/ui/fragment/h3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v7, Lcom/transsion/postdetail/ui/fragment/i3;

    invoke-direct {v7, p0}, Lcom/transsion/postdetail/ui/fragment/i3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v8, Lcom/transsion/postdetail/ui/fragment/j3;

    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/fragment/j3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v9, Lcom/transsion/postdetail/ui/fragment/k3;

    invoke-direct {v9, p0}, Lcom/transsion/postdetail/ui/fragment/k3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v10, Lcom/transsion/postdetail/ui/fragment/l3;

    invoke-direct {v10, p0}, Lcom/transsion/postdetail/ui/fragment/l3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    const/16 v12, 0x100

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Lcom/transsion/postdetail/ui/view/PostBaseItemView;->setBottomBarClick$default(Lcom/transsion/postdetail/ui/view/PostBaseItemView;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->setPTParams(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    :cond_3
    return-void
.end method

.method private static final updatePostDetail$lambda$22$lambda$21$lambda$13(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 3

    sget-object v0, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/transsion/postdetail/helper/a;->l(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updatePostDetail$lambda$22$lambda$21$lambda$14(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->clickLike()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updatePostDetail$lambda$22$lambda$21$lambda$15(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->showCommentsDialog()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updatePostDetail$lambda$22$lambda$21$lambda$16(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->doShare()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updatePostDetail$lambda$22$lambda$21$lambda$17(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updatePostDetail$lambda$22$lambda$21$lambda$18(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updatePostDetail$lambda$22$lambda$21$lambda$19(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->onDownloadClick(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final updatePostDetail$lambda$22$lambda$21$lambda$20(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic v0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->updateOperationViewState$lambda$37$lambda$33(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w0()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mLoginApi_delegate$lambda$0()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic x0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initViewModel$lambda$26$lambda$25(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initView$lambda$9(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z0(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initView$lambda$6$lambda$3(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getCommentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMPostDetailBean()Lcom/transsion/moviedetailapi/bean/PostSubjectItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-object v0
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewBinding(Landroid/view/LayoutInflater;)Lso/q;

    move-result-object p1

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;)Lso/q;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lso/q;->c(Landroid/view/LayoutInflater;)Lso/q;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public initListener()V
    .locals 0

    return-void
.end method

.method public initViewData()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->initView()V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->loadData()V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhj/b;->g()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "page_from"

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public initViewModel()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getViewModel()Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->A()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/m3;

    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/fragment/m3;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$d;

    invoke-direct {v3, v2}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-virtual {v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->t()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/postdetail/ui/fragment/q2;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/fragment/q2;-><init>(Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;)V

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$d;

    invoke-direct {v2, v1}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->observeLike()V

    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMonitorNetworkState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "post_detail"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->f()V

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mNeedDeleteOnExit:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v1, Lty/b;->a:Lty/b$a;

    invoke-virtual {v1}, Lty/b$a;->a()Lty/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lty/b;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onLeftButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->localLogPause()V

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onPause()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->k()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    sget-object p2, Lcom/transsion/ninegridview/helper/FileHelper;->a:Lcom/transsion/ninegridview/helper/FileHelper;

    invoke-virtual {p2}, Lcom/transsion/ninegridview/helper/FileHelper;->l()I

    move-result p2

    if-ne p1, p2, :cond_1

    array-length p1, p3

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    sget-object p1, Lcom/transsion/postdetail/util/PostSaveHelper;->a:Lcom/transsion/postdetail/util/PostSaveHelper;

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/util/PostSaveHelper;->b(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->j(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->showSettingDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mGifPlayerManager:Lcom/transsion/ninegridview/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ninegridview/a;->l()V

    :cond_0
    sget-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mNeedDeleteOnExit:Z

    :cond_1
    return-void
.end method

.method public onRightButtonClick(Lcom/tn/lib/widget/dialog/TRDialog;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/ninegridview/helper/b;->a:Lcom/transsion/ninegridview/helper/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x65

    invoke-virtual {p1, v0, v1}, Lcom/transsion/ninegridview/helper/b;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final openRoomDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    sget-object v0, Lhh/b;->b:Lhh/b$a;

    invoke-virtual {v0}, Lhh/b$a;->a()Lhh/b;

    move-result-object v0

    invoke-virtual {v0}, Lhh/b;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/room/api/IRoomApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/room/api/IRoomApi;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/room/api/IRoomApi;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Group;->getGroupId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "/room/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->m(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openSubjectDetail(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 4

    sget-object v0, Lhh/b;->b:Lhh/b$a;

    invoke-virtual {v0}, Lhh/b$a;->a()Lhh/b;

    move-result-object v0

    invoke-virtual {v0}, Lhh/b;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/moviedetailapi/IMovieDetailService;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/IMovieDetailService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/moviedetailapi/IMovieDetailService;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "StreamDetailActivity"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "MusicDetailActivity"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getSubject()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "/movie/detail"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    :goto_1
    const-string v3, "subject_type"

    invoke-virtual {v0, v3, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "ops"

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_3
    sget-object p1, Lcom/transsion/postdetail/helper/a;->a:Lcom/transsion/postdetail/helper/a;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/postdetail/helper/a;->C(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openUserCenter(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getUser()Lcom/transsion/moviedetailapi/bean/User;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {v0}, Lcom/transsnet/loginapi/bean/UserInfo;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/loginapi/bean/UserInfo;->setUsername(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/User;->getNickname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsnet/loginapi/bean/UserInfo;->setNickname(Ljava/lang/String;)V

    const-string p1, "/profile/user_profile"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v1, "userId"

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public receiveArguments()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->receiveArguments()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "from_comment"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->fromComment:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "rec_ops"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->tranOps:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "page_from"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->pageFrom:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "comment_id"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "item_object"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    :cond_5
    iput-object v1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-void
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method

.method public final setCommentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->commentId:Ljava/lang/String;

    return-void
.end method

.method public final setMPostDetailBean(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->mPostDetailBean:Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/PostDetailFragment;->postId:Ljava/lang/String;

    return-void
.end method
