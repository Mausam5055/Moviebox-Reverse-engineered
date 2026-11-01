.class public final Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;
.super Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SportLiveViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Landroid/view/View;",
        "rootView",
        "<init>",
        "(Landroid/view/View;)V",
        "",
        "timestamp",
        "",
        "g",
        "(J)Ljava/lang/String;",
        "Lcom/transsion/home/bean/LiveListItem;",
        "item",
        "",
        "j",
        "(Lcom/transsion/home/bean/LiveListItem;)V",
        "i",
        "()V",
        "h",
        "a",
        "Landroid/view/View;",
        "getRootView",
        "()Landroid/view/View;",
        "Lkotlinx/coroutines/t1;",
        "b",
        "Lkotlinx/coroutines/t1;",
        "job",
        "c",
        "Lcom/transsion/home/bean/LiveListItem;",
        "info",
        "Home_psRelease"
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
.field private final a:Landroid/view/View;

.field private b:Lkotlinx/coroutines/t1;

.field private c:Lcom/transsion/home/bean/LiveListItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->a:Landroid/view/View;

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;)Lcom/transsion/home/bean/LiveListItem;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->c:Lcom/transsion/home/bean/LiveListItem;

    return-object p0
.end method

.method private final g(J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1, p2}, Lcom/transsion/baseui/util/TimeUtilKt;->p(J)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " \u00b7 HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "GMT+0:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->i()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-gez v1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-ne v1, v0, :cond_2

    sget p2, Lcom/transsion/usercenter/R$string;->user_day_left:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/transsion/usercenter/R$string;->user_days_left:I

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " \u00b7 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->b:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->b:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final i()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->c:Lcom/transsion/home/bean/LiveListItem;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/LiveListItem;->getStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "MatchIng"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->b:Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroidx/lifecycle/u;

    if-eqz v2, :cond_3

    check-cast v0, Landroidx/lifecycle/u;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder$startCutDown$1;

    invoke-direct {v5, v0, p0, v1}, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder$startCutDown$1;-><init>(Landroidx/lifecycle/u;Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->b:Lkotlinx/coroutines/t1;

    :cond_5
    :goto_2
    return-void
.end method

.method public final j(Lcom/transsion/home/bean/LiveListItem;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->c:Lcom/transsion/home/bean/LiveListItem;

    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getStartTime()Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    sget v0, Lcom/transsion/home/R$id;->main_op_sport_live_status_text:I

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v3, v5

    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getStartTime()Ljava/lang/Long;

    move-result-object v7

    const-string v8, "MatchNotStart"

    const-string v9, "MatchIng"

    if-eqz v7, :cond_2

    cmp-long v1, v5, v1

    if-gtz v1, :cond_2

    invoke-virtual {p1, v9}, Lcom/transsion/home/bean/LiveListItem;->setStatus(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v8}, Lcom/transsion/home/bean/LiveListItem;->setStatus(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/home/bean/LiveListItem;->getStatus()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/home/R$string;->sport_live_upcoming:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v3, v4}, Lcom/transsion/home/adapter/trending/adapter/SportLiveAdapter$SportLiveViewHolder;->g(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/tn/lib/widget/R$drawable;->bg_corner_tips_rectangle_2:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, ""

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p1, Lcom/transsion/home/R$mipmap;->ic_op_sport_live_status:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Ljg/c;->h(Landroid/view/View;)V

    :goto_2
    return-void
.end method
