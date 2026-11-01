.class public final Lcom/transsion/room/fragment/RoomBaseFragment$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomBaseFragment;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomBaseFragment$b;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$b;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/room/fragment/RoomBaseFragment;->u0()Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$b;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/room/fragment/RoomBaseFragment;->u0()Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$b;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/room/fragment/RoomBaseFragment;->u0()Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$b;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/room/fragment/RoomBaseFragment;->v0(I)V

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomBaseFragment$b;->a:Lcom/transsion/room/fragment/RoomBaseFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/room/fragment/RoomBaseFragment;->w0(I)V

    return-void
.end method
