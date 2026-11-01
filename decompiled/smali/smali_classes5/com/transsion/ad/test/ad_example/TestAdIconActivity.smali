.class public final Lcom/transsion/ad/test/ad_example/TestAdIconActivity;
.super Lcom/transsion/ad/test/TestBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_example/TestAdIconActivity;",
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
        "Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;",
        "a",
        "Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;",
        "iconAdapter",
        "Lji/m;",
        "b",
        "Lji/m;",
        "binding",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "c",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "adManager",
        "",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "d",
        "Ljava/util/List;",
        "iconList",
        "Ldi/a;",
        "e",
        "Ldi/a;",
        "listener",
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
.field private a:Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;

.field private b:Lji/m;

.field private c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

.field private final d:Ljava/util/List;

.field private final e:Ldi/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    new-instance v0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->d:Ljava/util/List;

    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$b;-><init>(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;)V

    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->e:Ldi/a;

    return-void
.end method

.method public static final synthetic R(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;)Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    return-object p0
.end method

.method public static final synthetic T(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;)Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->a:Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;

    return-object p0
.end method

.method public static final synthetic U(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;)Ldi/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->e:Ldi/a;

    return-object p0
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_ic"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lji/m;->c(Landroid/view/LayoutInflater;)Lji/m;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->b:Lji/m;

    const-string v0, "binding"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lji/m;->b()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->b:Lji/m;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object p1, p1, Lji/m;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;

    iget-object v2, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->c:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-direct {v0, v2}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;-><init>(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)V

    iput-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity;->a:Lcom/transsion/ad/test/ad_example/TestAdIconActivity$a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$c;

    invoke-direct {v0}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$c;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$onCreate$2;

    invoke-direct {v5, p0, v1}, Lcom/transsion/ad/test/ad_example/TestAdIconActivity$onCreate$2;-><init>(Lcom/transsion/ad/test/ad_example/TestAdIconActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
