.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0013\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B=\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u000b\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001dR\u0014\u0010\"\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001dR\u0014\u0010$\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/BannerData;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "layoutResId",
        "Lcom/transsion/home/bean/OperateItem;",
        "operateItem",
        "Lcom/transsion/home/bean/CustomData;",
        "customData",
        "firstItem",
        "tabId",
        "",
        "isTablet",
        "<init>",
        "(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZ)V",
        "item",
        "position",
        "",
        "C1",
        "(Lcom/transsion/home/bean/BannerData;I)V",
        "holder",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BannerData;)V",
        "F",
        "Lcom/transsion/home/bean/OperateItem;",
        "G",
        "Lcom/transsion/home/bean/CustomData;",
        "H",
        "I",
        "Z",
        "J",
        "itemWidth",
        "K",
        "itemHeight",
        "L",
        "hiddenTitle",
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


# static fields
.field public static final M:I = 0x8


# instance fields
.field private final F:Lcom/transsion/home/bean/OperateItem;

.field private final G:Lcom/transsion/home/bean/CustomData;

.field private final H:I

.field private final I:Z

.field private final J:I

.field private final K:I

.field private final L:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZ)V
    .locals 2

    const-string v0, "operateItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->G:Lcom/transsion/home/bean/CustomData;

    iput p5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->H:I

    iput-boolean p6, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->I:Z

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/home/bean/CustomData;->getRowCount()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p2

    const/4 p5, 0x0

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move v1, p5

    :goto_1
    add-int/2addr p2, v1

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p6

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v1

    invoke-static {p6, v1}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result p6

    int-to-float p6, p6

    invoke-static {p6}, Lcom/blankj/utilcode/util/a0;->b(F)I

    move-result p6

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/transsion/home/bean/CustomData;->getItems()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/transsion/home/bean/CustomData;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/BannerData;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move p5, p1

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/transsion/home/bean/CustomData;->getHiddenTitle()Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    :cond_7
    :goto_4
    iput-boolean p5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->L:Z

    add-int/lit8 p6, p6, -0xc

    mul-int/lit8 p3, p2, 0x8

    sub-int/2addr p6, p3

    add-int/lit8 p6, p6, -0x18

    int-to-float p3, p6

    const/high16 p5, 0x3f800000    # 1.0f

    mul-float/2addr p3, p5

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->J:I

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/transsion/moviedetailapi/bean/Image;->getHeight()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_5

    :cond_8
    move p3, p1

    :goto_5
    int-to-float p3, p3

    mul-float/2addr p3, p5

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/transsion/moviedetailapi/bean/Image;->getWidth()Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_9
    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p2

    mul-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->K:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    sget p1, Lcom/transsion/home/R$layout;->item_sub_operation_variable_item:I

    :cond_0
    move v1, p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;-><init>(ILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/CustomData;Lcom/transsion/home/bean/BannerData;IZ)V

    return-void
.end method

.method private final C1(Lcom/transsion/home/bean/BannerData;I)V
    .locals 3

    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lhl/d;->c:Lhl/d$a;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->H:I

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0, v1, p2, v2, p1}, Lhl/d$a;->a(IILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BannerData;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "browse_custom_item"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->G:Lcom/transsion/home/bean/CustomData;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/home/bean/CustomData;->getRowCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "rowCount"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->H:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "tabId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-static {p1, v0}, Lil/b;->c(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->F:Lcom/transsion/home/bean/OperateItem;

    invoke-static {p1, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->H:I

    invoke-virtual {p2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BannerData;)V
    .locals 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->J:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->K:I

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    sget v0, Lcom/transsion/home/R$id;->sub_operation_variable_image:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/home/R$id;->sub_operation_variable_item_title:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->J:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->K:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->J:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-boolean v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->L:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter$convert$1;

    const/4 v1, 0x0

    invoke-direct {v5, p2, v0, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter$convert$1;-><init>(Lcom/transsion/home/bean/BannerData;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_2

    :cond_2
    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move-object v2, v3

    :cond_4
    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v3, v2

    :cond_6
    :goto_1
    invoke-virtual {v1, v3}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$mipmap;->ic_img_placeholder:I

    invoke-virtual {v1, v2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->C1(Lcom/transsion/home/bean/BannerData;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/BannerData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubCustomAdapter;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/BannerData;)V

    return-void
.end method
