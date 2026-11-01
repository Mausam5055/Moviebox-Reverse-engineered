.class public Lcom/aliyun/player/videoview/AliDisplayView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;,
        Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AliDisplayView"


# instance fields
.field private mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

.field private mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

.field private mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    invoke-direct {p0}, Lcom/aliyun/player/videoview/AliDisplayView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-direct {v0, p0}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;-><init>(Lcom/aliyun/player/videoview/AliDisplayView;)V

    iput-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    return-void
.end method


# virtual methods
.method public getDisplayViewHelper()Lcom/aliyun/player/nativeclass/DisplayViewHelper;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    return-object v0
.end method

.method public getOnViewStatusListener()Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    return-object v0
.end method

.method public getPreferDisplayViewType()Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    return-object v0
.end method

.method public setOnViewStatusListener(Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mOutOnViewStatusListener:Lcom/aliyun/player/videoview/AliDisplayView$OnViewStatusListener;

    return-void
.end method

.method public setPreferDisplayView(Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mPreferDisplayViewType:Lcom/aliyun/player/videoview/AliDisplayView$DisplayViewType;

    return-void
.end method

.method public setSurfaceReuse(Z)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/player/videoview/AliDisplayView;->mDisplayViewHelper:Lcom/aliyun/player/nativeclass/DisplayViewHelper;

    invoke-virtual {v0, p1}, Lcom/aliyun/player/nativeclass/DisplayViewHelper;->setSurfaceReuse(Z)V

    return-void
.end method
