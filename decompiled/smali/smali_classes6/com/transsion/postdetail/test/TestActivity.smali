.class public final Lcom/transsion/postdetail/test/TestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u0019\u0010\n\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0010\u001a\n \r*\u0004\u0018\u00010\u000c0\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u000fR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/postdetail/test/TestActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "",
        "V",
        "initPlayer",
        "W",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "kotlin.jvm.PlatformType",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "b",
        "json",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Lcom/transsion/postdetail/test/a;",
        "d",
        "Lcom/transsion/postdetail/test/a;",
        "mAdapter",
        "e",
        "videoUrl",
        "Lcom/transsion/player/orplayer/g;",
        "f",
        "Lcom/transsion/player/orplayer/g;",
        "mPlayer",
        "Lqn/a;",
        "g",
        "Lqn/a;",
        "mItemChange",
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


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Lcom/transsion/postdetail/test/a;

.field private final e:Ljava/lang/String;

.field private f:Lcom/transsion/player/orplayer/g;

.field private g:Lqn/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-class v0, Lcom/transsion/postdetail/test/TestActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/test/TestActivity;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/postdetail/test/TestActivity;->b:Ljava/lang/String;

    const-string v0, "https://test-acdn.aoneroom.com/media/video/2022/08/11/5970c1ffed2920c3b2d80da029fe3944-sd.mp4"

    iput-object v0, p0, Lcom/transsion/postdetail/test/TestActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic R(Lcom/transsion/postdetail/test/TestActivity;)Lcom/transsion/postdetail/test/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/test/TestActivity;->d:Lcom/transsion/postdetail/test/a;

    return-object p0
.end method

.method public static final synthetic T(Lcom/transsion/postdetail/test/TestActivity;)Lqn/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/test/TestActivity;->g:Lqn/a;

    return-object p0
.end method

.method public static final synthetic U(Lcom/transsion/postdetail/test/TestActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/test/TestActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final V()V
    .locals 51

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x15

    const/16 v5, 0xc8

    if-ge v3, v4, :cond_1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/transsion/moviedetailapi/bean/GifBean;

    move-object/from16 v18, v4

    const-string v6, "https://test-acdn.aoneroom.com/image/2022/08/16/61e43091d911c7e773efd9189332fadb.webp"

    const-string v7, "https://test-acdn.aoneroom.com/media/video/2022/08/11/5970c1ffed2920c3b2d80da029fe3944-sd.mp4"

    invoke-direct {v4, v6, v7}, Lcom/transsion/moviedetailapi/bean/GifBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/transsion/moviedetailapi/bean/Image;

    move-object v11, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v6, 0x7d0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v26, 0x3f80

    const/16 v27, 0x0

    const-string v14, "https://cdn.shalltry.com/tcmservice/tcmservice/111630622592760357.jpg"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v11 .. v27}, Lcom/transsion/moviedetailapi/bean/Image;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/GifBean;Ljava/lang/String;Ljava/lang/String;FFIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    rem-int/lit8 v5, v3, 0x9

    if-ltz v5, :cond_0

    move v6, v2

    :goto_1
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v6, v5, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/transsion/moviedetailapi/bean/Media;

    move-object/from16 v21, v6

    sget-object v4, Lcom/transsion/moviedetailapi/bean/MediaType;->IMAGE:Lcom/transsion/moviedetailapi/bean/MediaType;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/MediaType;->getValue()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/transsion/moviedetailapi/bean/Media;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/FirstFrame;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Video;)V

    new-instance v4, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-object v14, v4

    const/16 v49, 0x1

    const/16 v50, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

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

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/high16 v48, -0x80000

    invoke-direct/range {v14 .. v50}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v3, Lcom/transsion/postdetail/test/a;

    invoke-direct {v3, v1}, Lcom/transsion/postdetail/test/a;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Lcom/transsion/postdetail/test/TestActivity;->d:Lcom/transsion/postdetail/test/a;

    sget v1, Lcom/transsion/postdetail/R$id;->recycler_view:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v4, Lig/i;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v2, v6, v3}, Lig/i;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v2, v0, Lcom/transsion/postdetail/test/TestActivity;->d:Lcom/transsion/postdetail/test/a;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    iput-object v1, v0, Lcom/transsion/postdetail/test/TestActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private final W()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/test/TestActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/test/TestActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/test/TestActivity$b;-><init>(Lcom/transsion/postdetail/test/TestActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    return-void
.end method

.method private final initPlayer()V
    .locals 3

    new-instance v0, Lcom/transsion/player/ui/ORPlayerView;

    sget-object v1, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    invoke-direct {v0, p0, v1}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V

    new-instance v1, Lcom/transsion/player/orplayer/g$a;

    invoke-direct {v1, p0}, Lcom/transsion/player/orplayer/g$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/transsion/player/orplayer/g$a;->a()Lcom/transsion/player/orplayer/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    sget-object v2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    new-instance v2, Lqn/a;

    invoke-direct {v2, v1, v0}, Lqn/a;-><init>(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V

    iput-object v2, p0, Lcom/transsion/postdetail/test/TestActivity;->g:Lqn/a;

    new-instance v0, Lcom/transsion/postdetail/test/TestActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/test/TestActivity$a;-><init>(Lcom/transsion/postdetail/test/TestActivity;)V

    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    iput-object v1, p0, Lcom/transsion/postdetail/test/TestActivity;->f:Lcom/transsion/player/orplayer/g;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/postdetail/R$layout;->activity_test:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/transsion/postdetail/test/TestActivity;->V()V

    invoke-direct {p0}, Lcom/transsion/postdetail/test/TestActivity;->initPlayer()V

    invoke-direct {p0}, Lcom/transsion/postdetail/test/TestActivity;->W()V

    return-void
.end method
