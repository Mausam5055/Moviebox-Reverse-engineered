.class public final Lpn/c;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpn/c$a;
    }
.end annotation


# static fields
.field public static final i:Lpn/c$a;


# instance fields
.field private a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field private b:Lqn/a;

.field private c:Lpn/d;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpn/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpn/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpn/c;->i:Lpn/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpn/c;->d:I

    iput v0, p0, Lpn/c;->e:I

    iput v0, p0, Lpn/c;->f:I

    iput v0, p0, Lpn/c;->g:I

    return-void
.end method

.method private final d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lpn/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpn/c;->b:Lqn/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lpn/c;->c:Lpn/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lpn/d;->a()V

    :cond_1
    iget-object v0, p0, Lpn/c;->b:Lqn/a;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lqn/a;->b()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lpn/c;->b:Lqn/a;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lqn/a;->f()I

    move-result v1

    :cond_3
    iget-object v2, p0, Lpn/c;->b:Lqn/a;

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lqn/a;->n()Z

    move-result v2

    if-ne v2, v3, :cond_4

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, v2, v0, v1}, Lpn/c;->h(Landroidx/recyclerview/widget/LinearLayoutManager;II)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lpn/c;->b:Lqn/a;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lqn/a;->r()V

    :cond_5
    iget-object v1, p0, Lpn/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0, v1, p1}, Lpn/c;->f(Ljava/util/List;Landroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result v1

    if-gez v1, :cond_7

    return-void

    :cond_7
    sget-object v4, Llg/a;->a:Llg/a$a;

    iget v2, p0, Lpn/c;->h:I

    iget v5, p0, Lpn/c;->f:I

    iget v6, p0, Lpn/c;->g:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curPos="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " next="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", dy="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", firstVisible="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastVisible="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "ItemChangeListener"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, p0, Lpn/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_a

    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ne v7, v1, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    if-eq v0, v1, :cond_9

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    iget-object v8, p0, Lpn/c;->b:Lqn/a;

    if-eqz v8, :cond_8

    invoke-virtual {v8, v7, v6, v1}, Lqn/a;->s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/view/View;I)V

    :cond_8
    iget-object v6, p0, Lpn/c;->b:Lqn/a;

    if-eqz v6, :cond_9

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v7

    invoke-virtual {v6, v7}, Lqn/a;->e(Lcom/transsion/moviedetailapi/bean/Media;)I

    move-result v6

    if-ne v6, v3, :cond_9

    invoke-direct {p0, v1}, Lpn/c;->i(I)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method private final f(Ljava/util/List;Landroidx/recyclerview/widget/LinearLayoutManager;)I
    .locals 9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_5

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    sget v6, Lcom/transsion/ninegridview/R$id;->nine_grid:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/transsion/ninegridview/video/NineGridVideoView;

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v5

    if-ltz v5, :cond_4

    move-object v7, p1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v8

    invoke-static {v8}, Lqn/b;->a(Lcom/transsion/moviedetailapi/bean/Media;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lpn/c;->b:Lqn/a;

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Lqn/a;->h(Lcom/transsion/ninegridview/video/NineGridVideoView;Lcom/transsion/moviedetailapi/bean/Media;)F

    move-result v6

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    cmpg-float v7, v4, v6

    if-gez v7, :cond_4

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, v6, v4

    if-lez v4, :cond_3

    move v0, v5

    :cond_3
    move v4, v6

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private final g()Z
    .locals 2

    iget-object v0, p0, Lpn/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    invoke-static {v1}, Lqn/b;->a(Lcom/transsion/moviedetailapi/bean/Media;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final h(Landroidx/recyclerview/widget/LinearLayoutManager;II)Z
    .locals 11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    sget v4, Lcom/transsion/ninegridview/R$id;->nine_grid:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/ninegridview/video/NineGridVideoView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$m;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ne v3, p2, :cond_4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p3}, Lcom/transsion/ninegridview/video/NineGridVideoView;->currentGifVisible(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "childPos="

    if-eqz p2, :cond_1

    sget-object v5, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " currentGifVisible="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "ItemChangeListener"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/ninegridview/video/NineGridVideoView;->hasGifVisible()Z

    move-result v1

    :cond_2
    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " gifVisible="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "ItemChangeListener"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lpn/c;->b:Lqn/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lqn/a;->q()V

    :cond_3
    move p1, v1

    :goto_2
    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return v1
.end method

.method private final i(I)V
    .locals 5

    iget-object v0, p0, Lpn/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v1, p1

    :goto_1
    if-ge v1, v0, :cond_6

    if-le v1, p1, :cond_5

    iget-object v2, p0, Lpn/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    goto :goto_2

    :cond_1
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v4

    goto :goto_3

    :cond_2
    move-object v4, v3

    :goto_3
    invoke-static {v4}, Lqn/b;->a(Lcom/transsion/moviedetailapi/bean/Media;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object p1, p0, Lpn/c;->b:Lqn/a;

    if-eqz p1, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v3

    :cond_3
    invoke-virtual {p1, v3}, Lqn/a;->v(Lcom/transsion/moviedetailapi/bean/Media;)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lpn/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object v0, p0, Lpn/c;->b:Lqn/a;

    const/4 v1, -0x1

    iput v1, p0, Lpn/c;->e:I

    iput v1, p0, Lpn/c;->d:I

    iput v1, p0, Lpn/c;->f:I

    iput v1, p0, Lpn/c;->g:I

    const/4 v1, 0x0

    iput v1, p0, Lpn/c;->h:I

    iput-object v0, p0, Lpn/c;->c:Lpn/d;

    return-void
.end method

.method public final j(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0

    iput-object p1, p0, Lpn/c;->a:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    return-void
.end method

.method public final k(Lqn/a;)V
    .locals 0

    iput-object p1, p0, Lpn/c;->b:Lqn/a;

    return-void
.end method

.method public final l(Lpn/d;)V
    .locals 0

    iput-object p1, p0, Lpn/c;->c:Lpn/d;

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lpn/c;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p2

    instance-of v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lpn/c;->d:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lpn/c;->e:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lpn/c;->f:I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    iput p2, p0, Lpn/c;->g:I

    iput p3, p0, Lpn/c;->h:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lpn/c;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unsupported layoutManager."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
