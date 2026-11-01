.class public final Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;
.super Lcom/transsion/baseui/activity/BaseNewActivity;

# interfaces
.implements Lcom/transsion/videofloat/manager/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseNewActivity<",
        "Lqv/a;",
        ">;",
        "Lcom/transsion/videofloat/manager/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0005J\u000f\u0010\u001e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008 \u0010\u0005J\u000f\u0010!\u001a\u00020\nH\u0014\u00a2\u0006\u0004\u0008!\u0010\u0005J\u000f\u0010\"\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008%\u0010$J\u000f\u0010&\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008&\u0010\u001fJ\u000f\u0010\'\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\'\u0010$J\u000f\u0010(\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008(\u0010$J\u000f\u0010)\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008)\u0010$J\u000f\u0010*\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008*\u0010$J\u000f\u0010,\u001a\u00020+H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008/\u00100J\u000f\u00101\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00081\u0010\u0005J\u000f\u00102\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00082\u0010\u0005J\u000f\u00103\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00083\u0010\u0005J\u000f\u00104\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u00084\u0010\u0005R\u0018\u00107\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u0018\u00108\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00089\u00106R\u0018\u0010<\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u00106R\u0018\u0010>\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008=\u00106R\u0018\u0010@\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u00106R\u0018\u0010B\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u00106R\u0018\u0010D\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u00106R\u0018\u0010F\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u00106R\u0016\u0010I\u001a\u00020+8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR\u0016\u0010L\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0018\u0010N\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u00106R\u0018\u0010Q\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010S\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010KR\u001b\u0010Y\u001a\u00020T8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010X\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Lqv/a;",
        "Lcom/transsion/videofloat/manager/c;",
        "<init>",
        "()V",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "",
        "tag",
        "",
        "J0",
        "(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V",
        "N0",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;",
        "video",
        "",
        "P0",
        "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "category",
        "O0",
        "(Ljava/lang/String;)V",
        "M0",
        "()Lqv/a;",
        "t0",
        "retryLoadData",
        "getPageName",
        "()Ljava/lang/String;",
        "onPause",
        "onDestroy",
        "j",
        "isMusicFloatingAttach",
        "()Z",
        "isChangeStatusBar",
        "i0",
        "r0",
        "q0",
        "isTranslucent",
        "isStatusDark",
        "",
        "statusColor",
        "()I",
        "Landroid/view/View;",
        "j0",
        "()Landroid/view/View;",
        "o0",
        "p0",
        "n0",
        "s0",
        "i",
        "Ljava/lang/String;",
        "videoId",
        "collectionId",
        "k",
        "subjectId",
        "l",
        "type",
        "m",
        "ops",
        "n",
        "fromOptId",
        "o",
        "pageStyle",
        "p",
        "previousPageVideoId",
        "q",
        "previousPageTrackId",
        "r",
        "I",
        "bottomFragmentSelected",
        "s",
        "Z",
        "withoutHistory",
        "t",
        "homeTabId",
        "u",
        "Landroidx/fragment/app/Fragment;",
        "mFragment",
        "v",
        "hasHandledActivityLimit",
        "Lrv/a;",
        "w",
        "Lkotlin/Lazy;",
        "L0",
        "()Lrv/a;",
        "detailApi",
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


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Z

.field public t:Ljava/lang/String;

.field private u:Landroidx/fragment/app/Fragment;

.field private v:Z

.field private final w:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    new-instance v0, Lcom/transsion/ugcvideodetail/activity/a;

    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/activity/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->w:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic F0()Lrv/a;
    .locals 1

    invoke-static {}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->K0()Lrv/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic G0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->J0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic H0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;)Lrv/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->L0()Lrv/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic I0(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->P0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z

    move-result p0

    return p0
.end method

.method private final J0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "getSupportFragmentManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v2

    const-string v3, "beginTransaction()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v3, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->t:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createFragment: homeTabId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "UGCVideoDetailActivity"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v3, "id"

    iget-object v4, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const-string v4, "ugcCategory"

    iget-object v5, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->l:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "subject_id"

    iget-object v6, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->k:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const-string v6, "collection_id"

    iget-object v7, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->j:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const-string v7, "ops"

    iget-object v8, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->m:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-string v8, "from_opt_id"

    iget-object v9, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->n:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const-string v9, "parent_video_id"

    iget-object v10, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->p:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const-string v10, "parent_track_id"

    iget-object v11, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->q:Ljava/lang/String;

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    iget v11, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->r:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "ugc_bottom_fragment_selected"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    iget-boolean v12, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->s:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, "ugc_without_history"

    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const-string v13, "tab_id"

    iget-object v14, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->t:Ljava/lang/String;

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/16 v14, 0xb

    new-array v14, v14, [Lkotlin/Pair;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v3, 0x1

    aput-object v4, v14, v3

    const/4 v3, 0x2

    aput-object v5, v14, v3

    const/4 v3, 0x3

    aput-object v6, v14, v3

    const/4 v3, 0x4

    aput-object v7, v14, v3

    const/4 v3, 0x5

    aput-object v8, v14, v3

    const/4 v3, 0x6

    aput-object v9, v14, v3

    const/4 v3, 0x7

    aput-object v10, v14, v3

    const/16 v3, 0x8

    aput-object v11, v14, v3

    const/16 v3, 0x9

    aput-object v12, v14, v3

    const/16 v3, 0xa

    aput-object v13, v14, v3

    invoke-static {v14}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget v3, Lcom/transsion/moviedetail/R$id;->container:I

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v1, v4}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    iput-object v1, v0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/w;->j()I

    return-void
.end method

.method private static final K0()Lrv/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lrv/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrv/a;

    return-object v0
.end method

.method private final L0()Lrv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->w:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrv/a;

    return-object v0
.end method

.method private final N0()V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/a;

    iget-object v0, v0, Lqv/a;->c:Landroid/widget/ProgressBar;

    const-string v1, "ugcPbLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity$requestVideoDetailAndCreateFragment$1;-><init>(Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final P0(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public M0()Lqv/a;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lqv/a;->c(Landroid/view/LayoutInflater;)Lqv/a;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final O0(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MUSIC:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    sget-object v1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v1, p1, p0}, Lcom/transsion/baselib/report/l;->x(ILandroid/app/Activity;)V

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->v:Z

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "/ugc_video/detail"

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->M0()Lqv/a;

    move-result-object v0

    return-object v0
.end method

.method public i0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMusicFloatingAttach()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->u:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    :cond_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->L0()V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    if-eqz v1, :cond_3

    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->Y0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public j0()Landroid/view/View;
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->j0()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lyr/b;->a(Landroid/view/View;)V

    return-object v0
.end method

.method public n0()V
    .locals 0

    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->l:Ljava/lang/String;

    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->SHORT_TV:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->o:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseNewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->j()V

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lox/e;->i(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->j()V

    :cond_0
    return-void
.end method

.method public p0()V
    .locals 0

    return-void
.end method

.method public q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method

.method public s0()V
    .locals 0

    return-void
.end method

.method public statusColor()I
    .locals 1

    sget v0, Lcom/tn/lib/widget/R$color;->black:I

    return v0
.end method

.method public t0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->u:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "VideoDetailFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->u:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->o:Ljava/lang/String;

    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_HORIZONTAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;->D:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;

    move-result-object v0

    const-string v1, "UGCVideoDetailFragment"

    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->J0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/transsion/baselib/report/l;->x(ILandroid/app/Activity;)V

    sget-object v0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->I:Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$a;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    const-string v1, "UGCImmVideoDetailFragment"

    invoke-direct {p0, v0, v1}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->J0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/activity/UGCVideoDetailActivity;->N0()V

    :cond_2
    :goto_0
    return-void
.end method
