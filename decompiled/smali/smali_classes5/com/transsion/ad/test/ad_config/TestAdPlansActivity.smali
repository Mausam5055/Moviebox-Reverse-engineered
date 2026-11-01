.class public final Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;
.super Lcom/transsion/ad/test/TestBaseActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;",
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
        "Lji/x;",
        "a",
        "Lji/x;",
        "binding",
        "AdPlansAdapter",
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
.field private a:Lji/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/test/TestBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;->W(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;->V(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic U(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;)Lji/x;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;->a:Lji/x;

    return-object p0
.end method

.method private static final V(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$1$1;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final W(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/transsion/ad/test/ad_config/TestAdPlanDetailActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "MbAdDbPlans"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lji/x;->c(Landroid/view/LayoutInflater;)Lji/x;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;->a:Lji/x;

    const-string v0, "binding"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lji/x;->b()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;->a:Lji/x;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object p1, p1, Lji/x;->b:Landroid/widget/Button;

    new-instance v2, Lcom/transsion/ad/test/ad_config/e;

    invoke-direct {v2, p0}, Lcom/transsion/ad/test/ad_config/e;-><init>(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

    invoke-direct {p1}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;-><init>()V

    iget-object v2, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;->a:Lji/x;

    if-nez v2, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    iget-object v0, v2, Lji/x;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/transsion/ad/test/ad_config/f;

    invoke-direct {v0, p0}, Lcom/transsion/ad/test/ad_config/f;-><init>(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;)V

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;

    invoke-direct {v5, p1, p0, v1}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4;-><init>(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
