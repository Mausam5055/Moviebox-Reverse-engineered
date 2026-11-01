.class public Lcom/cicada/player/utils/ass/AssSubtitleView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

.field private mAssSubtitleView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cicada/player/utils/ass/AssTextView;",
            ">;"
        }
    .end annotation
.end field

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    iput v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/AssSubtitleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    const/4 p2, 0x0

    iput p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    iput p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/AssSubtitleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    const/4 p2, 0x0

    iput p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    iput p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    invoke-direct {p0, p1}, Lcom/cicada/player/utils/ass/AssSubtitleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/cicada/player/utils/ass/AssResolver;

    invoke-direct {v0, p1}, Lcom/cicada/player/utils/ass/AssResolver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cicada/player/utils/ass/AssResolver;->destroy()V

    :cond_0
    return-void
.end method

.method public declared-synchronized dismiss(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cicada/player/utils/ass/AssTextView;

    invoke-virtual {v2}, Lcom/cicada/player/utils/ass/AssTextView;->getSubtitleId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v3, v2}, Lcom/cicada/player/utils/ass/AssResolver;->dismiss(Lcom/cicada/player/utils/ass/AssTextView;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setAssHeader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/AssResolver;->setAssHeaders(Ljava/lang/String;)V

    return-void
.end method

.method public setFontTypeFace(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/AssResolver;->setFontTypeMap(Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized setVideoRenderSize(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    if-eq v0, p2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iput p1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    iput p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    iget p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoWidth:I

    iget v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->videoHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/cicada/player/utils/ass/AssResolver;->setVideoDisplaySize(II)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cicada/player/utils/ass/AssTextView;

    invoke-virtual {p2}, Lcom/cicada/player/utils/ass/AssTextView;->getSubtitleId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/cicada/player/utils/ass/AssTextView;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, v1}, Lcom/cicada/player/utils/ass/AssSubtitleView;->dismiss(J)V

    invoke-virtual {p0, v0, v1, p2}, Lcom/cicada/player/utils/ass/AssSubtitleView;->show(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized show(JLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssResolver:Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v0, p3}, Lcom/cicada/player/utils/ass/AssResolver;->setAssDialog(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssTextView;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/cicada/player/utils/ass/AssTextView;->setSubtitleId(Ljava/lang/Long;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/cicada/player/utils/ass/AssSubtitleView;->mAssSubtitleView:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
