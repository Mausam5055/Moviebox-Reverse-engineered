.class public final Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;->a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;->a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$pageScrollStateChanged(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;->a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$pageScrolled(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$b;->a:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;->access$pageSelected(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;I)V

    return-void
.end method
