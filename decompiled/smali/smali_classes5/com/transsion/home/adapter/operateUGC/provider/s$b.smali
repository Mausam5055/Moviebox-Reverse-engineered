.class public final Lcom/transsion/home/adapter/operateUGC/provider/s$b;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/operateUGC/provider/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u001f\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0008\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/home/adapter/operateUGC/provider/s$b;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/adapter/operateUGC/provider/s$a;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "Lcom/transsion/home/bean/OperateItem;",
        "operateItem",
        "tabId",
        "<init>",
        "(ILcom/transsion/home/bean/OperateItem;I)V",
        "Landroid/content/Context;",
        "context",
        "Lcom/transsion/ugcvideodetail/api/bean/UGCContent;",
        "ugcContent",
        "Landroid/view/ViewGroup;",
        "parent",
        "Landroid/view/View;",
        "E1",
        "(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Landroid/view/ViewGroup;)Landroid/view/View;",
        "rankListItem",
        "position",
        "",
        "F1",
        "(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V",
        "G1",
        "holder",
        "item",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/s$a;)V",
        "F",
        "Lcom/transsion/home/bean/OperateItem;",
        "G",
        "I",
        "H",
        "perWidth",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final I:I = 0x8


# instance fields
.field private final F:Lcom/transsion/home/bean/OperateItem;

.field private final G:I

.field private final H:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/bean/OperateItem;I)V
    .locals 2

    const-string v0, "operateItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F:Lcom/transsion/home/bean/OperateItem;

    iput p3, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/16 p2, 0x44

    invoke-static {p2}, Ldk/a;->b(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->H:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/home/bean/OperateItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    sget p1, Lcom/transsion/home/R$layout;->item_provider_ranklist:I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;-><init>(ILcom/transsion/home/bean/OperateItem;I)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->D1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;ILandroid/view/View;)V

    return-void
.end method

.method private static final D1(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;ILandroid/view/View;)V
    .locals 1

    iget p4, p1, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object v0, p1, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p4, v0}, Lov/c;->e(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G1(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V

    return-void
.end method

.method private final E1(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/home/R$layout;->item_ugc_music_rank:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p3

    :cond_0
    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_image:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {v1, p1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, ""

    :cond_2
    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    iget v2, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->H:I

    invoke-virtual {v1, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_corner:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_type_icon:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v1, v2}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_time_text:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-static {v2}, Lcom/transsion/baseui/util/TimeUtilKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/baseui/R$string;->ugc_video_shorts:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "special_#shorts_icon"

    filled-new-array {v1, v0, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    sget-object v2, Lcom/transsion/home/enum/HomeTabId;->UGC_Trending:Lcom/transsion/home/enum/HomeTabId;

    invoke-virtual {v2}, Lcom/transsion/home/enum/HomeTabId;->getValue()I

    move-result v2

    const-wide/16 v3, 0x0

    if-ne v1, v2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_5
    invoke-static {v3, v4}, Lcom/transsion/baseui/util/TimeUtilKt;->j(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_7
    invoke-static {v3, v4}, Lcom/transsion/baseui/util/TimeUtilKt;->i(J)Ljava/lang/String;

    move-result-object p2

    :goto_0
    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_1
    sget v0, Lcom/transsion/home/R$id;->home_ugc_music_rank_subtitle:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p3
.end method

.method private final F1(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/provider/s$a;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lhl/d;->c:Lhl/d$a;

    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F:Lcom/transsion/home/bean/OperateItem;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-static/range {v0 .. v7}, Lhl/d$a;->e(Lhl/d$a;IILcom/transsion/home/bean/OperateItem;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final G1(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/provider/s$a;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    sget-object v0, Lhl/d;->c:Lhl/d$a;

    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->G:I

    iget-object v3, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F:Lcom/transsion/home/bean/OperateItem;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v2, p2

    invoke-static/range {v0 .. v7}, Lhl/d$a;->g(Lhl/d$a;IILcom/transsion/home/bean/OperateItem;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/s$a;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_rankinglist_root:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->H:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/16 v1, 0x8

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/transsion/home/adapter/operateUGC/provider/s$a;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4, v2, p1}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->E1(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/transsion/home/adapter/operateUGC/provider/t;

    invoke-direct {v5, v2, p0, p2, v1}, Lcom/transsion/home/adapter/operateUGC/provider/t;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Lcom/transsion/home/adapter/operateUGC/provider/s$b;Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p2, v1}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->F1(Lcom/transsion/home/adapter/operateUGC/provider/s$a;I)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/adapter/operateUGC/provider/s$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/provider/s$b;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/adapter/operateUGC/provider/s$a;)V

    return-void
.end method
