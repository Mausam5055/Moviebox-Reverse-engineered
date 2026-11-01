.class public final Lcom/transsion/room/fragment/RoomListMainFragment$b;
.super Lik/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomListMainFragment;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/room/fragment/RoomListMainFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomListMainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment$b;->b:Lcom/transsion/room/fragment/RoomListMainFragment;

    invoke-direct {p0}, Lik/a;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/room/fragment/RoomListMainFragment;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/room/fragment/RoomListMainFragment$b;->j(Lcom/transsion/room/fragment/RoomListMainFragment;ILandroid/view/View;)V

    return-void
.end method

.method private static final j(Lcom/transsion/room/fragment/RoomListMainFragment;ILandroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p0

    check-cast p0, Lbq/s;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lbq/s;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomListMainFragment$b;->b:Lcom/transsion/room/fragment/RoomListMainFragment;

    invoke-static {v0}, Lcom/transsion/room/fragment/RoomListMainFragment;->b0(Lcom/transsion/room/fragment/RoomListMainFragment;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;->setRoundRadius(F)V

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;->setVerticalPadding(I)V

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;->setHorizontalPadding(I)V

    sget v1, Lcom/tn/lib/widget/R$color;->bg_01:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/WrapPagerIndicator;->setFillColor(I)V

    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/room/view/RoomListMainTabTitleView;

    invoke-direct {v0, p1}, Lcom/transsion/room/view/RoomListMainTabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/room/fragment/RoomListMainFragment$b;->b:Lcom/transsion/room/fragment/RoomListMainFragment;

    invoke-static {p1}, Lcom/transsion/room/fragment/RoomListMainFragment;->b0(Lcom/transsion/room/fragment/RoomListMainFragment;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/room/view/RoomListMainTabTitleView;->setTextById(I)V

    new-instance v1, Lcom/transsion/room/fragment/x1;

    invoke-direct {v1, p1, p2}, Lcom/transsion/room/fragment/x1;-><init>(Lcom/transsion/room/fragment/RoomListMainFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
