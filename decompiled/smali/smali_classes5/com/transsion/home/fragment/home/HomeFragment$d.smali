.class public final Lcom/transsion/home/fragment/home/HomeFragment$d;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/home/HomeFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/home/HomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeFragment$d;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeFragment$d;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/home/HomeFragment;->s0(Lcom/transsion/home/fragment/home/HomeFragment;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeFragment$d;->a:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/home/HomeFragment;->r0(Lcom/transsion/home/fragment/home/HomeFragment;)Lcom/transsion/home/bean/AppTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/AppTab;->getHomeTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
