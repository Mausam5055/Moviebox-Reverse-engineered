.class public final Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00112\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u001d\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsion/home/bean/HomeTabItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "",
        "data",
        "",
        "currentTabIndex",
        "<init>",
        "(Ljava/util/List;I)V",
        "holder",
        "item",
        "",
        "C1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomeTabItem;)V",
        "F",
        "I",
        "G",
        "a",
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
.field private static final G:Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;

.field public static final H:I

.field public static final I:F = 22.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final J:F = 120.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final F:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->G:Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->H:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/home/bean/HomeTabItem;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$layout;->item_category_discover_layout:I

    invoke-direct {p0, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    iput p2, p0, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->F:I

    return-void
.end method

.method public static synthetic B1(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;ZZJ)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->D1(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;ZZJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final D1(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;ZZJ)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method protected C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomeTabItem;)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->tvCategoryName:I

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomeTabItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/home/R$id;->tvCategoryName:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/home/R$id;->ivCategoryNameImage:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomeTabItem;->getNameImage()Lcom/transsion/home/bean/NameImage;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/transsion/home/bean/NameImage;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_6

    invoke-static {v5}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v6, 0x42f00000    # 120.0f

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v6

    const/high16 v7, 0x41b00000    # 22.0f

    invoke-static {v7}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v7

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomeTabItem;->getNameImage()Lcom/transsion/home/bean/NameImage;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/home/bean/NameImage;->getWidth()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v4

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2, v6}, Lkotlin/ranges/RangesKt;->i(II)I

    move-result p2

    goto :goto_2

    :cond_3
    const/4 p2, -0x2

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v8, v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v8, :cond_4

    move-object v4, v6

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    :cond_4
    if-eqz v4, :cond_5

    iput p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object p2, Lej/f;->a:Lej/f$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, v5}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    sget p2, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-virtual {p1, p2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p1

    new-instance p2, Lcom/transsion/home/fragment/dialog/c;

    invoke-direct {p2, v1, v5, v0}, Lcom/transsion/home/fragment/dialog/c;-><init>(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lej/f$b;->b(Lkotlin/jvm/functions/Function3;)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/HomeTabItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/fragment/dialog/CategoryDiscoverDialog$a;->C1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/HomeTabItem;)V

    return-void
.end method
