.class public final Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1$a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1$a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1$a;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1$a;->a:Landroidx/fragment/app/FragmentActivity;

    instance-of v1, v0, Lcom/transsion/member/MemberActivity;

    if-nez v1, :cond_1

    const-string v0, "/main/tab"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "tabIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/member/MemberPremiumFragment$handlePurchaseSucceed$1$a;->a:Landroidx/fragment/app/FragmentActivity;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->l()V

    :cond_2
    :goto_0
    return-void
.end method
