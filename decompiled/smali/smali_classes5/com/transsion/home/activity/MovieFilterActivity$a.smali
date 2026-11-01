.class public final Lcom/transsion/home/activity/MovieFilterActivity$a;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/activity/MovieFilterActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/activity/MovieFilterActivity;


# direct methods
.method constructor <init>(Lcom/transsion/home/activity/MovieFilterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    iget v1, v0, Lcom/transsion/home/activity/MovieFilterActivity;->a:I

    invoke-static {v0}, Lcom/transsion/home/activity/MovieFilterActivity;->g0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/HomeTabItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/HomeTabItem;->getTabId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    iget-object v0, v0, Lcom/transsion/home/activity/MovieFilterActivity;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/transsion/home/fragment/tab/MovieFragment;->A:Lcom/transsion/home/fragment/tab/MovieFragment$a;

    iget-object v2, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    invoke-static {v2}, Lcom/transsion/home/activity/MovieFilterActivity;->g0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/home/bean/HomeTabItem;

    invoke-virtual {v2}, Lcom/transsion/home/bean/HomeTabItem;->getTabId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    :goto_2
    iget-object v3, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    invoke-static {v3}, Lcom/transsion/home/activity/MovieFilterActivity;->g0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/HomeTabItem;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomeTabItem;->getTabCode()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/transsion/home/fragment/tab/MovieFragment$a;->a(IZLjava/lang/String;Ljava/lang/String;)Lcom/transsion/home/fragment/tab/MovieFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$a;->a:Lcom/transsion/home/activity/MovieFilterActivity;

    invoke-static {v0}, Lcom/transsion/home/activity/MovieFilterActivity;->g0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
