.class public final Lcom/transsion/usercenter/me/adapter/r;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    const-string v0, "open_account"

    iput-object v0, p0, Lcom/transsion/usercenter/me/adapter/r;->e:Ljava/lang/String;

    return-void
.end method

.method private static final A(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;Landroid/view/View;)Lkotlin/Unit;
    .locals 6

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeDeepLink()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    sget-object p2, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string v0, "notice"

    invoke-virtual {p2, v0}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeDeepLink()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "toLowerCase(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    iget-object v1, p1, Lcom/transsion/usercenter/me/adapter/r;->e:Ljava/lang/String;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    sget-object p0, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {p0}, Lcom/transsion/baselib/kids/KidsAccountManager;->e()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    const/4 p2, 0x0

    invoke-static {p0, p2, v1, v0}, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;->b(Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;ZILjava/lang/Object;)Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    move-result-object p0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    const-string p2, "AccountSwitchDialog"

    invoke-virtual {p0, p1, p2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->h:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;->b(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$a;ZZZILjava/lang/Object;)Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    move-result-object p0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p1

    const-string p2, "CreateKidsProfileDialog"

    invoke-virtual {p0, p1, p2}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeDeepLink()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0, v0, v1, v0}, Lak/k;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic y(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/r;->A(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/r;->z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_notice_layout:I

    return v0
.end method

.method public z(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 9

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/usercenter/R$id;->titleTv:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/usercenter/R$id;->arrowIV:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;->getNoticeDeepLink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :goto_3
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/transsion/usercenter/me/adapter/q;

    invoke-direct {v6, p2, p0}, Lcom/transsion/usercenter/me/adapter/q;-><init>(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v3 .. v8}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
