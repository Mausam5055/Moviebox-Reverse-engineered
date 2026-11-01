.class public final Lcom/transsion/room/sub/adapter/subscription/s$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/adapter/subscription/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final e:Lsj/b;

.field private final f:Z

.field private g:Lcom/transsion/room/sub/adapter/subscription/b;


# direct methods
.method public constructor <init>(Lsj/b;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->e:Lsj/b;

    iput-boolean p2, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->f:Z

    return-void
.end method

.method private static final B(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V
    .locals 0

    sget-object p2, Lnh/m;->a:Lnh/m;

    invoke-virtual {p2}, Lnh/m;->e()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->g:Lcom/transsion/room/sub/adapter/subscription/b;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getUserInfo()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/room/sub/adapter/subscription/b;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final C(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V
    .locals 0

    sget-object p2, Lnh/m;->a:Lnh/m;

    invoke-virtual {p2}, Lnh/m;->e()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->g:Lcom/transsion/room/sub/adapter/subscription/b;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getUserInfo()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/room/sub/adapter/subscription/b;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic y(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/s$b;->B(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/s$b;->C(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/room/R$id;->iv_avatar:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getUserInfo()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;->getAvatar()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    new-instance v2, Lcom/transsion/room/sub/adapter/subscription/t;

    invoke-direct {v2, p0, p2}, Lcom/transsion/room/sub/adapter/subscription/t;-><init>(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tv_name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "FollowingsFeedAdapter"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget v0, Lcom/transsion/room/R$id;->container:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/transsion/room/sub/adapter/subscription/u;

    invoke-direct {v2, p0, p2}, Lcom/transsion/room/sub/adapter/subscription/u;-><init>(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    sget v0, Lcom/transsion/room/R$id;->tv_name:I

    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getUserInfo()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;->getNickname()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/room/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    sget v0, Lcom/transsion/room/R$id;->tv_new_video:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/baseui/widget/GradientTextView;

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getHasUnread()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final D(Lcom/transsion/room/sub/adapter/subscription/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->g:Lcom/transsion/room/sub/adapter/subscription/b;

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/s$b;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V

    return-void
.end method

.method public l()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/room/R$layout;->item_subscription_list:I

    return v0
.end method
