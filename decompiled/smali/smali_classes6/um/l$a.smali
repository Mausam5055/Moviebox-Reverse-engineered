.class public final Lum/l$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/member/view/InviteUserView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lum/l;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lum/l;

.field final synthetic b:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method constructor <init>(Lum/l;Lcom/transsion/member/view/InviteUserView;)V
    .locals 0

    iput-object p1, p0, Lum/l$a;->a:Lum/l;

    iput-object p2, p0, Lum/l$a;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lum/l$a;->a:Lum/l;

    invoke-virtual {v0}, Lum/l;->S()Lcom/transsion/member/MemberViewModel;

    move-result-object v0

    iget-object v1, p0, Lum/l$a;->a:Lum/l;

    invoke-static {v1}, Lum/l;->H(Lum/l;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/transsion/member/MemberViewModel;->U(II)V

    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {p0, p1, p2}, Lum/l$a;->e(ILcom/transsion/memberapi/MemberTaskItemInvite;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Lcom/transsion/member/view/InviteUserView$e;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/transsion/memberapi/MemberTaskItemInvite;

    invoke-virtual {p0, p1, p2, p3}, Lum/l$a;->d(Lcom/transsion/member/view/InviteUserView$e;ILcom/transsion/memberapi/MemberTaskItemInvite;)V

    return-void
.end method

.method public d(Lcom/transsion/member/view/InviteUserView$e;ILcom/transsion/memberapi/MemberTaskItemInvite;)V
    .locals 8

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/member/R$id;->tag_iv:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/member/R$id;->member_reward:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lum/l$a;->a:Lum/l;

    iget-object v2, p0, Lum/l$a;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardAmount()I

    move-result v3

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "days"

    goto :goto_0

    :cond_0
    const-string v4, "points"

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-static {v1}, Lum/l;->G(Lum/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/member/R$id;->member_invite_user_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/member/R$id;->member_invite_user_pb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/member/R$id;->member_invite_user_tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/member/R$id;->member_invite_user_pb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    :goto_1
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    move-result v0

    if-nez v0, :cond_5

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/member/R$id;->member_invite_user_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/member/R$string;->member_reward_friend_tips:I

    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getFriendSeq()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p3}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getRewardType()I

    move-result p1

    if-ne p1, v5, :cond_6

    sget p1, Lcom/transsion/member/R$mipmap;->ic_member_small:I

    goto :goto_2

    :cond_6
    sget p1, Lcom/transsion/member/R$mipmap;->ic_member_points:I

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public e(ILcom/transsion/memberapi/MemberTaskItemInvite;)I
    .locals 0

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/memberapi/MemberTaskItemInvite;->getStatus()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    :goto_0
    return p2
.end method
