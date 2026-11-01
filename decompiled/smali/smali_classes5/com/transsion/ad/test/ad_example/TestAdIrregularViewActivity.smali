.class public final Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;
.super Lcom/transsion/ad/test/TestBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;",
        "Lcom/transsion/ad/test/TestBaseActivity;",
        "<init>",
        "()V",
        "",
        "getLogTag",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "Lji/o;",
        "a",
        "Lji/o;",
        "binding",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lji/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_fb"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lji/o;->c(Landroid/view/LayoutInflater;)Lji/o;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;->a:Lji/o;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lji/o;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;->a:Lji/o;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p1, p1, Lji/o;->b:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    const-string v2, "MBNativeTestId"

    invoke-virtual {p1, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setSceneId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;->a:Lji/o;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lji/o;->b:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    invoke-virtual {p1}, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->loadAd()V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;->a:Lji/o;

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    iget-object p1, p1, Lji/o;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xc8

    if-ge v3, v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6211\u662f\u8c01 \u6211\u5728\u54ea\u91cc \u6211\u8981\u5e72\u4ec0\u4e48 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance v3, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity$a;

    invoke-direct {v3, v2}, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity$a;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;->a:Lji/o;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_5
    iget-object p1, p1, Lji/o;->b:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    iget-object v2, p0, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;->a:Lji/o;

    if-nez v2, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v0, v2

    :goto_1
    iget-object v0, v0, Lji/o;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;->a:Lji/o;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lji/o;->b:Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;

    invoke-virtual {v0}, Lcom/transsion/ad/view/native_ad/BiddingFloatingIrregularAnimationView;->onAdViewDestroy()V

    return-void
.end method
