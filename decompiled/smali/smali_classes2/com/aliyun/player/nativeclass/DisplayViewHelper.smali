.class public Lcom/aliyun/player/nativeclass/DisplayViewHelper;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

.field private mBackgroundColor:I

.field private mClearScreenView:Landroid/view/View;

.field private mDirectRender:Z

.field private mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

.field private mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

.field private mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

.field private mOldDisplayViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/player/videoview/displayView/IDisplayView;",
            ">;"
        }
    .end annotation
.end field

.field private mReuseSurface:Z

.field private mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

.field private mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

.field private mVideoHeight:I

.field private mVideoRotate:I

.field private mVideoWidth:I

.field private oldHeight:I

.field private oldWith:I

.field private surfaceValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AliDisplayView_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/aliyun/player/videoview/AliDisplayView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    const/4 v1, -0x1

    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->surfaceValid:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    const/high16 v2, -0x1000000

    iput v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mBackgroundColor:I

    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    iput v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    sget-object v2, Lcom/aliyun/player/IPlayer$ScaleMode;->SCALE_ASPECT_FIT:Lcom/aliyun/player/IPlayer$ScaleMode;

    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    sget-object v2, Lcom/aliyun/player/IPlayer$MirrorMode;->MIRROR_MODE_NONE:Lcom/aliyun/player/IPlayer$MirrorMode;

    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    sget-object v2, Lcom/aliyun/player/IPlayer$RotateMode;->ROTATE_0:Lcom/aliyun/player/IPlayer$RotateMode;

    iput-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    iput-boolean v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDirectRender:Z

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-direct {p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/AliDisplayView;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I
    .locals 0

    iget p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    return p0
.end method

.method static synthetic access$102(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I
    .locals 0

    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldWith:I

    return p1
.end method

.method static synthetic access$200(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)I
    .locals 0

    iget p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/aliyun/player/nativeclass/DisplayViewHelper;I)I
    .locals 0

    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->oldHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/displayView/IDisplayView;)Lcom/aliyun/player/videoview/displayView/IDisplayView;
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    return-object p1
.end method

.method static synthetic access$402(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->surfaceValid:Z

    return p1
.end method

.method static synthetic access$500(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    return-object p0
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "#FF000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;

    invoke-direct {v1, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$1;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method clearScreen()V
    .locals 2

    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    const-string v1, "clearScreen "

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;

    invoke-direct {v0, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$3;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized createDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v0}, Lcom/aliyun/player/videoview/AliDisplayView;->getPreferDisplayViewType()Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->Either:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    if-eq p1, v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    sget-object v1, Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;->TextureView:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    if-ne p1, v1, :cond_1

    new-instance v1, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-direct {v1, v2}, Lcom/aliyun/player/videoview/displayView/TextureDisplayView;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->initView()V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-direct {v1, v2}, Lcom/aliyun/player/videoview/displayView/SurfaceDisplayView;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->initView()V

    :goto_1
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;->onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    :cond_2
    iget-object v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v1}, Lcom/aliyun/player/videoview/AliDisplayView;->getOnViewStatusListener()Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;->onViewCreated(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V

    :cond_3
    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz p1, :cond_4

    new-instance v2, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;

    invoke-direct {v2, p0, v1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$2;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;)V

    invoke-virtual {p1, v2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-boolean v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    invoke-virtual {p1, v1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setSurfaceReuse(Z)V

    invoke-virtual {p0, p2}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setRenderFlagChanged(Z)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    iget v1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    iget v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    invoke-virtual {p1, p2, v1, v2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setVideoSize(III)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    iget-object p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    invoke-virtual {p1, p2}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    invoke-virtual {p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->attachView()V

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V

    iget-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mOldDisplayViews:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method firstFrameRender(Z)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstFrameRender , hasVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper$4;-><init>(Lcom/aliyun/player/nativeclass/DisplayViewHelper;Z)V

    invoke-direct {p0, v0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method needUpdateView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method setBackgroundColor(I)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mBackgroundColor:I

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMirrorMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mMirrorMode:Lcom/aliyun/player/IPlayer$MirrorMode;

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setMirrorMode(Lcom/aliyun/player/IPlayer$MirrorMode;)V

    :cond_0
    return-void
.end method

.method setOnViewStatusListener(Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mListener:Lcom/aliyun/player/videoview/displayView/IDisplayView$OnDisplayViewStatusListener;

    return-void
.end method

.method setRenderFlagChanged(Z)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRenderFlagChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDirectRender:Z

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRenderFlag(Z)V

    :cond_0
    return-void
.end method

.method setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRotateMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mRotateMode:Lcom/aliyun/player/IPlayer$RotateMode;

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setRotateMode(Lcom/aliyun/player/IPlayer$RotateMode;)V

    :cond_0
    return-void
.end method

.method setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScaleMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mScaleMode:Lcom/aliyun/player/IPlayer$ScaleMode;

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setScaleMode(Lcom/aliyun/player/IPlayer$ScaleMode;)V

    :cond_0
    return-void
.end method

.method public setSurfaceReuse(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mReuseSurface:Z

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setSurfaceReuse(Z)V

    :cond_0
    return-void
.end method

.method setVideoSize(III)V
    .locals 3

    sget-object v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoWidth:I

    iput p2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoHeight:I

    iput p3, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mVideoRotate:I

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->setVideoSize(III)V

    :cond_0
    return-void
.end method

.method snapshot()Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mDisPlayView:Lcom/aliyun/player/videoview/displayView/IDisplayView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/aliyun/player/videoview/displayView/IDisplayView;->snapShot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    iget-object v2, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mAliView:Lcom/aliyun/player/videoview/AliDisplayView;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v2, v2

    div-float/2addr v2, v6

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v0, v4, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    iget-object v0, p0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->mClearScreenView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v1
.end method
