.class public final Lcom/transsion/usercenter/me/adapter/f0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/me/adapter/f0$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/tn/lib/view/RoundedLinearLayout;

.field private final l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/f0;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 1

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/f0;->e:Lcom/transsion/usercenter/me/adapter/o;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/f0;->l:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/f0;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/usercenter/me/adapter/f0;->C(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final B(Lcom/transsion/memberapi/MemberInfo;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    sget-object v5, Llg/a;->a:Llg/a$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "member detail is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v5, v6, v7, v9, v10}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v10

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    sget-object v5, Lcom/transsion/memberapi/MembershipDetailType;->Companion:Lcom/transsion/memberapi/MembershipDetailType$a;

    invoke-virtual {v5, v1}, Lcom/transsion/memberapi/MembershipDetailType$a;->a(Lcom/transsion/memberapi/MemberInfo;)Lcom/transsion/memberapi/MembershipDetailType;

    move-result-object v5

    sget-object v6, Lcom/transsion/usercenter/me/adapter/f0$a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const-class v6, Lcom/transsion/memberapi/IMemberApi;

    const-class v11, Lcom/transsnet/loginapi/ILoginApi;

    const/16 v13, 0x53

    const/4 v15, 0x7

    const/16 v10, 0x8

    if-eq v5, v4, :cond_22

    if-eq v5, v9, :cond_7

    const/4 v14, 0x3

    if-eq v5, v14, :cond_7

    const/4 v1, 0x4

    if-eq v5, v1, :cond_3

    const/4 v1, 0x5

    if-ne v5, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_3
    :goto_1
    iget-object v1, v3, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v4, "itemView"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/transsion/usercenter/me/adapter/f0;->f:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v4, v0, Lcom/transsion/usercenter/me/adapter/f0;->g:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    new-instance v5, Lcom/transsion/usercenter/me/adapter/e0;

    invoke-direct {v5, v0, v3, v2}, Lcom/transsion/usercenter/me/adapter/e0;-><init>(Lcom/transsion/usercenter/me/adapter/f0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, v0, Lcom/transsion/usercenter/me/adapter/f0;->k:Lcom/tn/lib/view/RoundedLinearLayout;

    if-eqz v1, :cond_36

    invoke-static {v10}, Lgk/b;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/tn/lib/view/RoundedLinearLayout;->setCornerRadius(F)V

    goto/16 :goto_1c

    :cond_7
    iget-object v5, v0, Lcom/transsion/usercenter/me/adapter/f0;->f:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_8

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v5, v0, Lcom/transsion/usercenter/me/adapter/f0;->g:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v5, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v5, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    sget v14, Lcom/tn/lib/widget/R$id;->tv_member_guide_title:I

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    :goto_2
    iget-object v14, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v14, :cond_c

    sget v10, Lcom/tn/lib/widget/R$id;->tv_member_guide_desc:I

    invoke-virtual {v14, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto :goto_3

    :cond_c
    const/4 v10, 0x0

    :goto_3
    iget-object v14, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v14, :cond_d

    sget v4, Lcom/tn/lib/widget/R$id;->tv_member_guide_btn:I

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    :goto_4
    iget-object v14, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v14, :cond_e

    sget v9, Lcom/tn/lib/widget/R$id;->me_vip_entry_container:I

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    goto :goto_5

    :cond_e
    const/4 v9, 0x0

    :goto_5
    iget-object v14, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v14, :cond_f

    new-instance v12, Lcom/transsion/usercenter/me/adapter/d0;

    invoke-direct {v12, v0, v1, v3, v2}, Lcom/transsion/usercenter/me/adapter/d0;-><init>(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    const/16 v21, 0x1

    const/16 v22, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v17, v14

    move-object/from16 v20, v12

    invoke-static/range {v17 .. v22}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_f
    const-class v2, Lcom/transsion/memberapi/IPremiumApi;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Lcom/transsion/memberapi/IPremiumApi;->u()Z

    move-result v2

    goto :goto_6

    :cond_10
    move v2, v7

    :goto_6
    if-eqz v4, :cond_18

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_7

    :cond_11
    move v3, v7

    :goto_7
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    if-nez v2, :cond_13

    if-gt v3, v15, :cond_12

    goto :goto_8

    :cond_12
    sget v14, Lcom/tn/lib/widget/R$string;->me_vip_upgrade:I

    goto :goto_9

    :cond_13
    :goto_8
    sget v14, Lcom/tn/lib/widget/R$string;->member_banner_vip_btn_content:I

    :goto_9
    invoke-virtual {v12, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v2, :cond_14

    sget v14, Lcom/tn/lib/widget/R$color;->yellow_dark_10:I

    goto :goto_a

    :cond_14
    sget v14, Lcom/tn/lib/widget/R$color;->color_1B2743:I

    :goto_a
    invoke-virtual {v12, v14}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v2, :cond_15

    sget v14, Lcom/tn/lib/widget/R$drawable;->bg_member_guide_banner_btn:I

    goto :goto_b

    :cond_15
    sget v14, Lcom/tn/lib/widget/R$drawable;->bg_btn_me_vip_entry_basic:I

    :goto_b
    invoke-virtual {v12, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-nez v2, :cond_16

    if-gt v3, v15, :cond_17

    :cond_16
    const/16 v3, 0x46

    goto :goto_c

    :cond_17
    invoke-static {v13}, Lgk/b;->a(I)I

    move-result v3

    goto :goto_d

    :goto_c
    invoke-static {v3}, Lgk/b;->a(I)I

    move-result v3

    :goto_d
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_18
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_19

    sget v4, Lcom/tn/lib/widget/R$string;->me_vip_premium_pro:I

    goto :goto_e

    :cond_19
    sget v4, Lcom/tn/lib/widget/R$string;->me_vip_premium_basic:I

    :goto_e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v2, :cond_1a

    sget v4, Lcom/tn/lib/widget/R$color;->yellow_dark_10:I

    goto :goto_f

    :cond_1a
    sget v4, Lcom/tn/lib/widget/R$color;->color_1B2743:I

    :goto_f
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1b
    if-eqz v10, :cond_1e

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/usercenter/R$string;->user_date_left:I

    if-eqz v1, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberInfo;->getExpiryDate()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    const/4 v1, 0x2

    goto :goto_10

    :cond_1c
    const/4 v1, 0x2

    const/16 v16, 0x0

    :goto_10
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v7

    const/4 v5, 0x1

    aput-object v16, v1, v5

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v2, :cond_1d

    sget v3, Lcom/tn/lib/widget/R$color;->yellow_dark_10:I

    goto :goto_11

    :cond_1d
    sget v3, Lcom/tn/lib/widget/R$color;->color_1B2743:I

    :goto_11
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1e
    if-eqz v9, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    if-eqz v2, :cond_1f

    sget v2, Lcom/tn/lib/widget/R$drawable;->bg_pro_member_banner:I

    goto :goto_12

    :cond_1f
    sget v2, Lcom/tn/lib/widget/R$drawable;->bg_basic_member_banner:I

    :goto_12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v11, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result v1

    if-ne v1, v2, :cond_21

    iget-object v1, v0, Lcom/transsion/usercenter/me/adapter/f0;->k:Lcom/tn/lib/view/RoundedLinearLayout;

    if-eqz v1, :cond_36

    const/16 v2, 0x8

    invoke-static {v2}, Lgk/b;->a(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lgk/b;->a(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Lcom/tn/lib/view/RoundedLinearLayout;->setCornerRadii(FFFF)V

    goto/16 :goto_1c

    :cond_21
    iget-object v1, v0, Lcom/transsion/usercenter/me/adapter/f0;->k:Lcom/tn/lib/view/RoundedLinearLayout;

    if-eqz v1, :cond_36

    const/16 v4, 0x8

    invoke-static {v4}, Lgk/b;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/tn/lib/view/RoundedLinearLayout;->setCornerRadius(F)V

    goto/16 :goto_1c

    :cond_22
    move v4, v10

    iget-object v5, v0, Lcom/transsion/usercenter/me/adapter/f0;->f:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_23

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    iget-object v5, v0, Lcom/transsion/usercenter/me/adapter/f0;->g:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_24

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    iget-object v4, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v4, :cond_25

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    if-eqz v8, :cond_26

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_13

    :cond_26
    move v4, v7

    :goto_13
    iget-object v5, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v5, :cond_27

    sget v9, Lcom/tn/lib/widget/R$id;->tv_member_guide_title:I

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    goto :goto_14

    :cond_27
    const/4 v5, 0x0

    :goto_14
    iget-object v9, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v9, :cond_28

    sget v10, Lcom/tn/lib/widget/R$id;->tv_member_guide_desc:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    goto :goto_15

    :cond_28
    const/4 v9, 0x0

    :goto_15
    iget-object v10, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v10, :cond_29

    sget v12, Lcom/tn/lib/widget/R$id;->tv_member_guide_btn:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    goto :goto_16

    :cond_29
    const/4 v10, 0x0

    :goto_16
    iget-object v12, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v12, :cond_2a

    sget v14, Lcom/tn/lib/widget/R$id;->me_vip_entry_container:I

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    goto :goto_17

    :cond_2a
    const/4 v12, 0x0

    :goto_17
    if-eqz v10, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v14

    if-gt v4, v15, :cond_2b

    sget v17, Lcom/tn/lib/widget/R$string;->member_banner_vip_btn_content:I

    :goto_18
    move/from16 v7, v17

    goto :goto_19

    :cond_2b
    sget v17, Lcom/tn/lib/widget/R$string;->me_vip_upgrade:I

    goto :goto_18

    :goto_19
    invoke-virtual {v14, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2c
    if-eqz v10, :cond_2e

    if-gt v4, v15, :cond_2d

    const/16 v4, 0x46

    invoke-static {v4}, Lgk/b;->a(I)I

    move-result v4

    goto :goto_1a

    :cond_2d
    invoke-static {v13}, Lgk/b;->a(I)I

    move-result v4

    :goto_1a
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    :cond_2e
    if-eqz v10, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v4

    sget v7, Lcom/tn/lib/widget/R$drawable;->bg_btn_me_vip_entry_basic:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    iget-object v4, v0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    if-eqz v4, :cond_30

    new-instance v7, Lcom/transsion/usercenter/me/adapter/c0;

    invoke-direct {v7, v0, v1, v3, v2}, Lcom/transsion/usercenter/me/adapter/c0;-><init>(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v19, v4

    move-object/from16 v22, v7

    invoke-static/range {v19 .. v24}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_30
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$string;->me_vip_premium_basic:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$color;->color_1B2743:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_31
    if-eqz v9, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/usercenter/R$string;->user_date_left:I

    if-eqz v1, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberInfo;->getExpiryDate()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x2

    goto :goto_1b

    :cond_32
    const/4 v1, 0x2

    const/4 v10, 0x0

    :goto_1b
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v1, v4

    const/4 v4, 0x1

    aput-object v10, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    if-eqz v12, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$drawable;->bg_basic_member_banner:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_34
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v11, v2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v2, :cond_35

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->a()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v1, :cond_35

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result v1

    if-ne v1, v3, :cond_35

    iget-object v1, v0, Lcom/transsion/usercenter/me/adapter/f0;->k:Lcom/tn/lib/view/RoundedLinearLayout;

    if-eqz v1, :cond_36

    const/16 v2, 0x8

    invoke-static {v2}, Lgk/b;->a(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2}, Lgk/b;->a(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Lcom/tn/lib/view/RoundedLinearLayout;->setCornerRadii(FFFF)V

    goto :goto_1c

    :cond_35
    iget-object v1, v0, Lcom/transsion/usercenter/me/adapter/f0;->k:Lcom/tn/lib/view/RoundedLinearLayout;

    if-eqz v1, :cond_36

    const/16 v2, 0x8

    invoke-static {v2}, Lgk/b;->a(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/tn/lib/view/RoundedLinearLayout;->setCornerRadius(F)V

    :cond_36
    :goto_1c
    return-void
.end method

.method private static final C(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string v0, "member"

    invoke-virtual {p4, v0}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/f0;->G(Lcom/transsion/memberapi/MemberInfo;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/f0;->H(I)V

    const-string p1, "/member/MemberActivity"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string p4, "scene_id"

    const-string v0, "me/vip_entry"

    invoke-virtual {p1, p4, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string p4, "trace_id"

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/f0;->l:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, p4, v0, p4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/usercenter/me/adapter/f0;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final D(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string v0, "member"

    invoke-virtual {p4, v0}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/f0;->G(Lcom/transsion/memberapi/MemberInfo;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/f0;->H(I)V

    const-string p1, "/member/MemberActivity"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string p4, "scene_id"

    const-string v0, "me/vip_entry"

    invoke-virtual {p1, p4, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string p4, "trace_id"

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/f0;->l:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p4, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, p4, v0, p4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/usercenter/me/adapter/f0;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final E(Lcom/transsion/usercenter/me/adapter/f0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string v0, "member"

    invoke-virtual {p3, v0}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/transsion/usercenter/me/adapter/f0;->H(I)V

    const-string p3, "/member/MemberActivity"

    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v0, "scene_id"

    const-string v1, "me/vip_entry"

    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v0, "trace_id"

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/f0;->l:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p3, p1, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/usercenter/me/adapter/f0;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final G(Lcom/transsion/memberapi/MemberInfo;)I
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/memberapi/IPremiumApi;->u()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberInfo;->getDaysLeft()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez v1, :cond_3

    const/4 v0, 0x7

    if-gt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x4

    :goto_1
    move v0, p1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x3

    goto :goto_1

    :cond_4
    :goto_3
    return v0
.end method

.method private final H(I)V
    .locals 8

    sget-object v0, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    iget-object v3, p0, Lcom/transsion/usercenter/me/adapter/f0;->l:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v1, "profiledetail"

    const-string v2, "me/vip_entry"

    const/4 v4, 0x0

    move v5, p1

    invoke-static/range {v0 .. v7}, Lcom/transsion/baselib/helper/f;->g(Lcom/transsion/baselib/helper/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method private final I(I)V
    .locals 8

    sget-object v0, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    iget-object v3, p0, Lcom/transsion/usercenter/me/adapter/f0;->l:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v1, "profiledetail"

    const-string v2, "me/vip_entry"

    const/4 v4, 0x0

    move v5, p1

    invoke-static/range {v0 .. v7}, Lcom/transsion/baselib/helper/f;->i(Lcom/transsion/baselib/helper/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/usercenter/me/adapter/f0;->D(Lcom/transsion/usercenter/me/adapter/f0;Lcom/transsion/memberapi/MemberInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/usercenter/me/adapter/f0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/usercenter/me/adapter/f0;->E(Lcom/transsion/usercenter/me/adapter/f0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/memberapi/MemberInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/memberapi/MemberInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Lcom/transsion/usercenter/R$id;->top_container:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/usercenter/me/adapter/f0;->f:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/usercenter/R$id;->radius_container:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tn/lib/view/RoundedLinearLayout;

    iput-object v1, p0, Lcom/transsion/usercenter/me/adapter/f0;->k:Lcom/tn/lib/view/RoundedLinearLayout;

    sget v1, Lcom/transsion/usercenter/R$id;->bottom_container:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/transsion/usercenter/me/adapter/f0;->g:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/usercenter/R$id;->member_guide_banner_container:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/transsion/usercenter/me/adapter/f0;->h:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/usercenter/R$id;->tv_vip_guide_title:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/usercenter/me/adapter/f0;->i:Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$id;->tv_vip_guide_btn:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/usercenter/me/adapter/f0;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p1}, Lcom/transsion/usercenter/me/adapter/f0;->B(Lcom/transsion/memberapi/MemberInfo;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-direct {p0, v0}, Lcom/transsion/usercenter/me/adapter/f0;->G(Lcom/transsion/memberapi/MemberInfo;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/f0;->I(I)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/f0;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_member_layout:I

    return v0
.end method
