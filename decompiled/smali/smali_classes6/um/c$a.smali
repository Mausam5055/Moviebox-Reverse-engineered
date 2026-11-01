.class public final Lum/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/member/view/CheckInView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lum/c;->B(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/MemberTaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/memberapi/MemberTaskItem;

.field final synthetic b:Lum/c;

.field final synthetic c:Lcom/transsion/member/view/CheckInView;


# direct methods
.method constructor <init>(Lcom/transsion/memberapi/MemberTaskItem;Lum/c;Lcom/transsion/member/view/CheckInView;)V
    .locals 0

    iput-object p1, p0, Lum/c$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    iput-object p2, p0, Lum/c$a;->b:Lum/c;

    iput-object p3, p0, Lum/c$a;->c:Lcom/transsion/member/view/CheckInView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/member/view/CheckInView$b;I)V
    .locals 8

    const/4 v0, 0x1

    const-string v1, "holder"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lum/c$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/member/R$id;->tag_iv:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v4, Lcom/transsion/member/R$id;->member_point:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardAmount()I

    move-result v4

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardType()I

    move-result v5

    if-ne v5, v0, :cond_1

    const-string v5, "days"

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    move-result v3

    if-ne v3, v4, :cond_7

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lum/c$a;->b:Lum/c;

    invoke-static {v3}, Lum/c;->A(Lum/c;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v6, Lcom/transsion/member/R$id;->member_check_in_tv:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v6, Lcom/transsion/member/R$id;->member_check_in_pb:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v6, Lcom/transsion/member/R$id;->member_check_in_tv:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Ljg/c;->k(Landroid/view/View;)V

    :cond_6
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v6, Lcom/transsion/member/R$id;->member_check_in_pb:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Ljg/c;->g(Landroid/view/View;)V

    :cond_7
    :goto_1
    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getRewardType()I

    move-result v1

    if-ne v1, v0, :cond_8

    sget v1, Lcom/transsion/member/R$mipmap;->ic_member_small:I

    goto :goto_2

    :cond_8
    sget v1, Lcom/transsion/member/R$mipmap;->ic_member_points:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_9
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    sget v2, Lcom/transsion/member/R$id;->member_check_in:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    move-result v2

    if-eq v2, v4, :cond_b

    invoke-virtual {p1}, Lcom/transsion/member/view/CheckInView$b;->f()I

    move-result p1

    if-ne p1, v5, :cond_a

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lum/c$a;->c:Lcom/transsion/member/view/CheckInView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/transsion/member/R$string;->member_task_day_tip:I

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_b
    :goto_3
    iget-object p1, p0, Lum/c$a;->c:Lcom/transsion/member/view/CheckInView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsion/member/R$string;->member_claim:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public b(I)I
    .locals 4

    iget-object v0, p0, Lum/c$a;->a:Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x2

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->getHasCheckIn()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_6

    const/4 v2, 0x5

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/4 v2, 0x6

    goto :goto_1

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    const/4 v2, 0x4

    goto :goto_1

    :cond_5
    move v2, v3

    :cond_6
    :goto_1
    return v2
.end method
