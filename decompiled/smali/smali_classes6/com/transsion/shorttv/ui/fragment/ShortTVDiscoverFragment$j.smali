.class public final Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->v1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 1

    iget-object p3, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-static {p3}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->z0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)I

    move-result v0

    invoke-static {p3, p1, v0, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->D0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;IIF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->C0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->F0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;J)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment$j;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->G0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;I)V

    return-void
.end method
