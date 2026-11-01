.class public final Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/member/view/CheckInView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

.field final synthetic b:Lcom/transsion/member/view/CheckInView;


# direct methods
.method constructor <init>(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;Lcom/transsion/member/view/CheckInView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    iput-object p2, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->b:Lcom/transsion/member/view/CheckInView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/member/view/CheckInView$b;I)V
    .locals 7

    const/4 v0, 0x1

    const-string v1, "holder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/member/R$id;->tag_iv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/member/R$id;->member_point:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    invoke-static {v3}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->s0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->getCheckInList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardAmount()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    :cond_2
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    invoke-static {v2}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->t0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/member/R$id;->member_check_in_tv:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_3
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/member/R$id;->member_check_in_pb:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/member/R$id;->member_check_in_tv:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    :cond_5
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/member/R$id;->member_check_in_pb:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_6
    :goto_0
    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardType()I

    move-result v2

    if-ne v2, v0, :cond_7

    sget v2, Lcom/transsion/member/R$mipmap;->ic_member_small:I

    goto :goto_1

    :cond_7
    sget v2, Lcom/transsion/member/R$mipmap;->ic_member_points:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/member/R$id;->member_check_in:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->b:Lcom/transsion/member/view/CheckInView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/member/R$string;->member_task_day_tip:I

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public b(I)I
    .locals 5

    iget-object v0, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    invoke-static {v0}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->s0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->getCheckInList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/member/dialog/MemberTaskCheckInDialog$b;->a:Lcom/transsion/member/dialog/MemberTaskCheckInDialog;

    invoke-static {v2}, Lcom/transsion/member/dialog/MemberTaskCheckInDialog;->s0(Lcom/transsion/member/dialog/MemberTaskCheckInDialog;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->getCheckInList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-ne p1, v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    const/4 v1, 0x6

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    move v1, v4

    :cond_8
    :goto_1
    return v1
.end method
