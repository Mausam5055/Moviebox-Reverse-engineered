.class public final Lcom/transsion/usercenter/me/adapter/b0;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Lcom/transsion/usercenter/me/adapter/o;

.field private f:Lcom/transsnet/loginapi/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/usercenter/me/adapter/b0;-><init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/usercenter/me/adapter/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/b0;->e:Lcom/transsion/usercenter/me/adapter/o;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/me/adapter/b0;-><init>(Lcom/transsion/usercenter/me/adapter/o;)V

    return-void
.end method

.method public static synthetic A(Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/me/adapter/b0;->I(Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final C()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/b0;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/transsion/baselib/kids/KidsAccountManager;->a:Lcom/transsion/baselib/kids/KidsAccountManager;

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsAccountManager;->f()Lcom/transsion/baselib/kids/KidsProfile;

    move-result-object v2

    sget v3, Lcom/transsion/usercenter/R$id;->nameTv:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v3, Lcom/transsion/usercenter/R$id;->safeKidsTv:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/baseui/widget/GradientBorderTagView;

    sget-object v5, Lak/o;->a:Lak/o;

    invoke-virtual {v5}, Lak/o;->j()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/usercenter/R$string;->user_switch_profile:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getString(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/transsion/baseui/widget/GradientBorderTagView;->setText(Ljava/lang/String;)V

    sget v3, Lcom/transsion/usercenter/R$id;->idTv:I

    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/transsion/usercenter/R$string;->user_id_show:I

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v4

    :goto_2
    new-array v8, v0, [Ljava/lang/Object;

    aput-object p2, v8, v1

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/transsion/usercenter/R$id;->genderTv:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getGender()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    if-nez v3, :cond_4

    move v3, v1

    goto :goto_5

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getGender()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_6

    sget v3, Lcom/transsion/usercenter/R$mipmap;->profile_man:I

    goto :goto_5

    :cond_6
    :goto_4
    sget v3, Lcom/transsion/usercenter/R$mipmap;->profile_female:I

    :goto_5
    invoke-virtual {p2, v3, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAge()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_6

    :cond_7
    move v3, v1

    :goto_6
    const-string v5, ""

    if-gtz v3, :cond_8

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_8
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v5, Ljn/e;->a:Ljn/e;

    invoke-virtual {v5, v3}, Ljn/e;->b(Landroid/text/SpannableStringBuilder;)V

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAge()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_7

    :cond_9
    move-object v5, v4

    :goto_7
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getGender()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_9

    :cond_a
    move-object v3, v4

    :goto_9
    if-nez v3, :cond_d

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAge()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_a

    :cond_b
    move v3, v1

    :goto_a
    if-lez v3, :cond_c

    goto :goto_b

    :cond_c
    move v3, v1

    goto :goto_c

    :cond_d
    :goto_b
    move v3, v0

    :goto_c
    if-eqz v3, :cond_e

    move v6, v1

    :cond_e
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    sget p2, Lcom/transsion/usercenter/R$id;->avatarIV:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/baselib/kids/KidsProfile;->getAvatarLocalPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    :cond_f
    move-object p2, v4

    :goto_d
    if-eqz p2, :cond_11

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_10

    goto :goto_e

    :cond_10
    move v0, v1

    :cond_11
    :goto_e
    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_12

    :cond_12
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p1, :cond_13

    sget p2, Lcom/transsion/usercenter/R$drawable;->ic_kids_avatar:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_f

    :catchall_0
    move-exception p1

    goto :goto_10

    :cond_13
    :goto_f
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_11

    :goto_10
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_11
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :goto_12
    return-void
.end method

.method private final E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 10

    const/4 v0, 0x1

    sget v1, Lcom/transsion/usercenter/R$id;->loginTv:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/usercenter/R$id;->avatarIV:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/transsion/usercenter/me/adapter/y;

    invoke-direct {v7, p2, p0}, Lcom/transsion/usercenter/me/adapter/y;-><init>(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v4 .. v9}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v1, Lak/g;->a:Lak/g;

    invoke-virtual {v1}, Lak/g;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/usercenter/R$id;->tvLoginMyChannel:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    sget-object v4, Lak/o;->a:Lak/o;

    invoke-virtual {v4}, Lak/o;->i()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/usercenter/R$id;->tvLoginMyChannel:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Lcom/transsion/usercenter/me/adapter/z;

    invoke-direct {v4, p2, p1}, Lcom/transsion/usercenter/me/adapter/z;-><init>(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v1, Lcom/transsion/usercenter/R$id;->safeKidsGroup:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-direct {v1, v0, p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/transsion/usercenter/me/adapter/b0;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/usercenter/me/adapter/o;->R1()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget v1, Lcom/transsion/usercenter/R$id;->safeKidsGroup:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-direct {v1, v0, p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/transsion/usercenter/me/adapter/b0;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/usercenter/me/adapter/o;->R1()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v1, Lak/o;->a:Lak/o;

    invoke-virtual {v1}, Lak/o;->i()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->D(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void

    :cond_5
    sget v4, Lcom/transsion/usercenter/R$id;->nameTv:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v4, Lcom/transsion/usercenter/R$id;->safeKidsTv:I

    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/transsion/baseui/widget/GradientBorderTagView;

    invoke-virtual {v1}, Lak/o;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/transsion/usercenter/R$string;->user_safe_kids:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/transsion/baseui/widget/GradientBorderTagView;->setText(Ljava/lang/String;)V

    sget v1, Lcom/transsion/usercenter/R$id;->idTv:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/usercenter/R$string;->user_id_show:I

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v6, v7, v3

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/transsion/usercenter/R$id;->genderTv:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    move-result v4

    if-ne v4, v0, :cond_8

    sget v4, Lcom/transsion/usercenter/R$mipmap;->profile_man:I

    goto :goto_2

    :cond_8
    sget v4, Lcom/transsion/usercenter/R$mipmap;->profile_female:I

    :goto_2
    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    move-result v4

    const-string v5, ""

    if-gtz v4, :cond_9

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget-object v5, Ljn/e;->a:Ljn/e;

    invoke-virtual {v5, v4}, Ljn/e;->b(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getGender()I

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAge()I

    move-result v4

    if-lez v4, :cond_a

    goto :goto_4

    :cond_a
    move v0, v3

    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/usercenter/R$id;->avatarIV:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p2

    sget v0, Lcom/tn/lib/widget/R$mipmap;->profile_default_avatar:I

    invoke-virtual {p2, v0}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    return-void
.end method

.method private static final F(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lak/o;->a:Lak/o;

    invoke-virtual {v1}, Lak/o;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/transsion/usercenter/kids/AccountSwitchDialog;->g:Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;->b(Lcom/transsion/usercenter/kids/AccountSwitchDialog$a;ZILjava/lang/Object;)Lcom/transsion/usercenter/kids/AccountSwitchDialog;

    move-result-object p0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountSwitchDialog"

    invoke-virtual {p0, v0, v1}, Lcom/tn/lib/dialog/BaseDialog;->X(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity;->b:Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/transsion/usercenter/edit/ProfileEditCenterActivity$a;->a(Landroid/content/Context;Lcom/transsnet/loginapi/bean/UserInfo;)V

    :goto_0
    iget-object p0, p1, Lcom/transsion/usercenter/me/adapter/b0;->e:Lcom/transsion/usercenter/me/adapter/o;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/usercenter/me/adapter/o;->Q1()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final G(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 1

    const-string p2, "/profile/user_profile"

    invoke-static {p2}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p2

    const-string v0, "userId"

    invoke-virtual {p0}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 8

    sget v0, Lcom/transsion/usercenter/R$id;->genderTv:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/usercenter/R$id;->avatarIV:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/usercenter/R$id;->safeKidsGroup:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/usercenter/R$id;->loginTv:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    sget v3, Lcom/transsion/usercenter/R$string;->user_login:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v5, Lcom/transsion/usercenter/me/adapter/a0;

    invoke-direct {v5, p0}, Lcom/transsion/usercenter/me/adapter/a0;-><init>(Lcom/transsion/usercenter/me/adapter/b0;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v2 .. v7}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/usercenter/R$id;->nameTv:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v4, Lcom/transsion/usercenter/R$string;->user_login_title:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/transsion/usercenter/R$id;->idTv:I

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/usercenter/R$string;->user_id_show:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v3, p2, v0

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lcom/transsion/usercenter/R$id;->tvLoginMyChannel:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static final I(Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    const-string v0, "login"

    invoke-virtual {p1, v0}, Lcom/transsion/usercenter/me/u;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class v0, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsnet/loginapi/ILoginApi;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsnet/loginapi/ILoginApi;->j(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic y(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->F(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->G(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 2

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/usercenter/profile/bean/MeItemInfo;->getData()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/transsnet/loginapi/bean/UserInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/transsnet/loginapi/bean/UserInfo;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/b0;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    sget-object v0, Lcom/transsion/usercenter/me/u;->a:Lcom/transsion/usercenter/me/u;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsion/usercenter/me/u;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/usercenter/me/adapter/b0;->C()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lak/o;->a:Lak/o;

    invoke-virtual {p2}, Lak/o;->i()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/usercenter/me/adapter/b0;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/transsion/usercenter/me/adapter/b0;->f:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->E(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/loginapi/bean/UserInfo;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/me/adapter/b0;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->mine_item_header_layout:I

    return v0
.end method
