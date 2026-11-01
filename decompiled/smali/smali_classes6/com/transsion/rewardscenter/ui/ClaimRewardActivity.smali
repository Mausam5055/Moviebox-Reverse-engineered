.class public final Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;
.super Lcom/transsion/baseui/activity/BaseNewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseNewActivity<",
        "Lvp/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\r\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0004\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Lvp/a;",
        "<init>",
        "()V",
        "F0",
        "()Lvp/a;",
        "",
        "i0",
        "()Ljava/lang/String;",
        "",
        "o0",
        "p0",
        "n0",
        "s0",
        "retryLoadData",
        "G0",
        "i",
        "a",
        "RewardsCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final i:Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$a;

.field public static final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;->i:Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$a;

    sget v0, Lcom/transsion/baseui/activity/BaseNewActivity;->h:I

    sput v0, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public F0()Lvp/a;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lvp/a;->c(Landroid/view/LayoutInflater;)Lvp/a;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final G0()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    return-void
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;->F0()Lvp/a;

    move-result-object v0

    return-object v0
.end method

.method public i0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public n0()V
    .locals 0

    return-void
.end method

.method public o0()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "prize_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    const-string v2, "beginTransaction()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/transsion/rewardscenter/R$id;->fl_content:I

    sget-object v3, Lcom/transsion/rewardscenter/ui/ClaimRewardFragment;->h:Lcom/transsion/rewardscenter/ui/ClaimRewardFragment$a;

    invoke-virtual {v3, v0}, Lcom/transsion/rewardscenter/ui/ClaimRewardFragment$a;->a(Ljava/lang/String;)Lcom/transsion/rewardscenter/ui/ClaimRewardFragment;

    move-result-object v0

    const-string v3, "ClaimRewardFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {v1}, Landroidx/fragment/app/w;->j()I

    return-void
.end method

.method public p0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$b;

    invoke-direct {v1, p0}, Lcom/transsion/rewardscenter/ui/ClaimRewardActivity$b;-><init>(Lcom/transsion/rewardscenter/ui/ClaimRewardActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    return-void
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method

.method public s0()V
    .locals 0

    return-void
.end method
