.class public final Lcom/transsion/member/MemberActivity$b;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/MemberActivity;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberActivity$b;->a:Lcom/transsion/member/MemberActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/member/MemberActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberActivity$b;->h(Lcom/transsion/member/MemberActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberActivity$b;->g(Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/member/MemberActivity;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/member/MemberActivity$b;->i(Lcom/transsion/member/MemberActivity;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/transsion/member/MemberActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/MemberActivity;->F0(Lcom/transsion/member/MemberActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final i(Lcom/transsion/member/MemberActivity;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemberActivity --> onBackPress --> onLoadFailed{} --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_discount"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0}, Lcom/transsion/member/MemberActivity;->F0(Lcom/transsion/member/MemberActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 6

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    const-string v1, "MemberActivity --> onBackPress --> handleOnBackPressed()"

    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/memberapi/IPremiumApi;->c()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/transsion/member/MemberActivity$b;->a:Lcom/transsion/member/MemberActivity;

    invoke-static {v0}, Lcom/transsion/member/MemberActivity;->F0(Lcom/transsion/member/MemberActivity;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/member/MemberActivity$b;->a:Lcom/transsion/member/MemberActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "member_retention_dialog"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/member/MemberActivity$b;->a:Lcom/transsion/member/MemberActivity;

    new-instance v2, Lcom/transsion/member/b;

    invoke-direct {v2}, Lcom/transsion/member/b;-><init>()V

    iget-object v3, p0, Lcom/transsion/member/MemberActivity$b;->a:Lcom/transsion/member/MemberActivity;

    new-instance v4, Lcom/transsion/member/c;

    invoke-direct {v4, v3}, Lcom/transsion/member/c;-><init>(Lcom/transsion/member/MemberActivity;)V

    iget-object v3, p0, Lcom/transsion/member/MemberActivity$b;->a:Lcom/transsion/member/MemberActivity;

    new-instance v5, Lcom/transsion/member/d;

    invoke-direct {v5, v3}, Lcom/transsion/member/d;-><init>(Lcom/transsion/member/MemberActivity;)V

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/transsion/memberapi/IPremiumApi;->l(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    :goto_1
    return-void
.end method
