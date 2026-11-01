.class public final Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

.field final synthetic b:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->a:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

    iput-object p2, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->a:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->g0(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    iget-object v0, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity$a;->a:Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;->g0(Lcom/transsion/room/sub/activity/likes/UgcLikesActivity;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
