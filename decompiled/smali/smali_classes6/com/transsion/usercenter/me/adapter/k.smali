.class public final Lcom/transsion/usercenter/me/adapter/k;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/me/adapter/k$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/usercenter/me/adapter/k$a;


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/me/adapter/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/me/adapter/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/me/adapter/k;->i:Lcom/transsion/usercenter/me/adapter/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/k;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/k;->e:Lcom/transsion/usercenter/me/adapter/o;

    new-instance p1, Lcom/transsion/usercenter/me/adapter/f;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/f;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/k;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/usercenter/me/adapter/g;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/g;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/k;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/usercenter/me/adapter/h;

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/h;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/k;->h:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/k;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/usercenter/me/adapter/k;->F(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/me/adapter/k;->N(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C()Laq/b;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/adapter/k;->J()Laq/b;

    const/4 v0, 0x0

    return-object v0
.end method

.method private final D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/IconItemInfo;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linked_devices"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    :goto_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v0, :cond_1

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/tn/lib/widget/R$color;->white_60:I

    goto :goto_1

    :cond_2
    sget p2, Lcom/tn/lib/widget/R$color;->text_03:I

    :goto_1
    sget v0, Lcom/transsion/usercenter/R$id;->desTv:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private static final F(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 8

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    move-result-object p4

    const-string v0, "my_activity_type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object v1, p1, Lcom/transsion/usercenter/me/adapter/k;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getCheckLogin()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->G()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->G()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsnet/loginapi/ILoginApi;->j(Landroid/content/Context;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-object v3, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    invoke-virtual {v3, v1}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "linked_devices"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    const-string p0, "/profile/device_management"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p0, p3, v4, v3, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/k;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "tv_download_web_link"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    sget-object p4, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p4}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p4

    const-string v0, "key_tv_download_web_link_clicked"

    invoke-virtual {p4, v0, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, v5}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->setShowNewBadge(Z)V

    sget p0, Lcom/transsion/usercenter/R$id;->newBadgeTv:I

    invoke-virtual {p3, p0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p0

    const/16 p4, 0x8

    invoke-virtual {p0, p4}, Landroid/view/View;->setVisibility(I)V

    const-string p0, "/profile/tv_download_web_link"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const-string p4, "index"

    invoke-virtual {p0, p4, v5}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p0

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p0, p3, v4, v3, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/k;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "post_list_type"

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "like_list_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_2

    :sswitch_1
    const-string p3, "study_mode_type"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto/16 :goto_2

    :cond_9
    sget-object p0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_a

    goto :goto_1

    :cond_a
    sget-object p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    invoke-static {p0, v5, v2, v4}, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;->b(Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;ZILjava/lang/Object;)Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    move-result-object p0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p3

    const-string v0, "AccountSwitchDialog"

    invoke-virtual {p0, p3, v0}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    :goto_1
    sget-object v1, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->h:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;->b(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;ZZZILjava/lang/Object;)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    move-result-object p0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p3

    const-string v0, "CreateKidsProfileDialog"

    invoke-virtual {p0, p3, v0}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_2
    const-string p3, "parental_pin_type"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c

    goto/16 :goto_2

    :cond_c
    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->M()V

    goto/16 :goto_3

    :sswitch_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_2

    :cond_d
    const-string p0, "/profile/my_activity"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p0, p3, v4, v3, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_4
    const-string v0, "subscribe_list_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_2

    :cond_e
    const-string p0, "/subscription/my_subscription"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p0, p3, v4, v3, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_2

    :cond_f
    sget-object v0, Lak/g;->a:Lak/g;

    invoke-virtual {v0}, Lak/g;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "/postdetail/favorite"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p0, p3, v4, v3, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_3

    :cond_10
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p0, "/ugc/likes"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p0, p3, v4, v3, v4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_3

    :cond_11
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const-string v1, "source"

    invoke-virtual {p3, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->G()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    :cond_12
    const-string v0, "userId"

    invoke-virtual {p3, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1}, Lcom/transsion/usercenter/me/adapter/k;->H()Lcom/transsion/moviedetailapi/IMovieDetailService;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/transsion/usercenter/profile/ProfileSubjectListViewModel;

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p3, v2, p0}, Lcom/transsion/moviedetailapi/IMovieDetailService;->b(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDeepLink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-static {p0, v4, v2, v4}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_14
    :goto_3
    if-nez p4, :cond_15

    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/k;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x796e6aa4 -> :sswitch_5
        -0x5959727a -> :sswitch_4
        0x175c6917 -> :sswitch_3
        0x40b8ba4e -> :sswitch_2
        0x482fbd60 -> :sswitch_1
        0x7114a393 -> :sswitch_0
    .end sparse-switch
.end method

.method private final G()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/k;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final H()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/k;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/IMovieDetailService;

    return-object v0
.end method

.method private final I(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "linked_devices"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "tv_download_web_link"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "my_activity"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static final J()Laq/b;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Laq/b;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static final K()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final L()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/moviedetailapi/IMovieDetailService;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/IMovieDetailService;

    return-object v0
.end method

.method private final M()V
    .locals 9

    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/baselib/kids/KidsAccountManager;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/kids/pin_management"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v2, "arg_kids_id"

    invoke-virtual {v0, v2, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/transsion/usercenter/kids/PinInputDialog;->o:Lcom/transsion/usercenter/kids/PinInputDialog$a;

    new-instance v5, Lcom/transsion/usercenter/me/adapter/j;

    invoke-direct {v5, v1}, Lcom/transsion/usercenter/me/adapter/j;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/transsion/usercenter/kids/PinInputDialog$a;->b(Lcom/transsion/usercenter/kids/PinInputDialog$a;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/transsion/usercenter/kids/PinInputDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PinInputDialog"

    invoke-virtual {v0, v1, v2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final N(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {v0, p1}, Lcom/transsion/baselib/kids/KidsAccountManager;->p(Ljava/lang/String;)V

    const-string p1, "/kids/pin_management"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "arg_kids_id"

    invoke-virtual {p1, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-static {p0, p1, p1, v0, p1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final O(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/k;->I(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/me/u;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic y()Lcom/transsion/moviedetailapi/IMovieDetailService;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/adapter/k;->L()Lcom/transsion/moviedetailapi/IMovieDetailService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic z()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/me/adapter/k;->K()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 9

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/usercenter/profile/bean/IconItemInfo;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/transsion/usercenter/me/adapter/i;

    invoke-direct {v6, v0, p0, p2, p1}, Lcom/transsion/usercenter/me/adapter/i;-><init>(Lcom/transsion/usercenter/profile/bean/IconItemInfo;Lcom/transsion/usercenter/me/adapter/k;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v3 .. v8}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    sget p2, Lcom/transsion/usercenter/R$id;->titleTv:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/transsion/usercenter/R$id;->desTv:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/transsion/usercenter/R$id;->divider:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getDivider()Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/usercenter/R$id;->bgView:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getBgRes()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    sget p2, Lcom/transsion/usercenter/R$id;->icIV:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getIconRes()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget p2, Lcom/transsion/usercenter/R$id;->newBadgeTv:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getShowNewBadge()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/usercenter/me/adapter/k;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/IconItemInfo;)V

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/usercenter/me/adapter/k;->O(Ljava/lang/String;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getTop()I

    move-result p2

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_5
    invoke-virtual {v0}, Lcom/transsion/usercenter/profile/bean/IconItemInfo;->getModuleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "setting"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget p2, Lcom/transsion/usercenter/R$id;->image_red_tips:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/transsion/usercenter/R$id;->setting_tv_tips:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lak/o;->a:Lak/o;

    invoke-virtual {v0}, Lak/o;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "k_is_family_mode_badge"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v4

    :goto_3
    sget-object v2, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    invoke-virtual {v2}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/version/update/UpdateManager;->g()Z

    move-result v2

    if-eqz v0, :cond_7

    move v5, v4

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_8

    if-eqz v2, :cond_8

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    if-eqz v1, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_a
    sget p2, Lcom/transsion/usercenter/R$id;->setting_tv_tips:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/usercenter/R$id;->image_red_tips:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/k;->E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_icon_layout:I

    return v0
.end method
