.class final Lcom/transsion/moviedetail/fragment/ForYouFragment$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetail/fragment/ForYouFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView;

.field private final b:Lkotlin/jvm/functions/Function2;

.field private final c:Landroid/util/SparseArray;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/List;

.field private h:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->b:Lkotlin/jvm/functions/Function2;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string p2, "emptyList(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->g:Ljava/util/List;

    const/high16 p1, 0x42200000    # 40.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->h:I

    return-void
.end method

.method private final b(I)V
    .locals 7

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportItemView line:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Foryou"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->f:I

    mul-int v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    mul-int/2addr v2, p1

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    invoke-static {v0}, Landroidx/core/util/k;->a(Landroid/util/SparseArray;)Lkotlin/collections/IntIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->b(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    iget v1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d(II)V

    return-void
.end method

.method public final d(II)V
    .locals 6

    if-ltz p1, :cond_5

    if-gez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iput p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    iput p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollWithLine startLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", endLine:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "Foryou"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    invoke-static {p2}, Landroidx/core/util/k;->a(Landroid/util/SparseArray;)Lkotlin/collections/IntIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    iget v2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    if-ge v0, v2, :cond_1

    if-gt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->b(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->d:I

    iget p2, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->e:I

    :goto_2
    if-ge p1, p2, :cond_5

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->c:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->a()V

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string v0, "emptyList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ForYouFragment$b;->g:Ljava/util/List;

    return-void
.end method
