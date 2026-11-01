.class public final Lcom/transsion/member/MemberViewModel$i;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberViewModel;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/MemberViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberViewModel$i;->a:Lcom/transsion/member/MemberViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberAdTaskInfo;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lzm/c$a;->a(Lzm/c;Lcom/transsion/memberapi/MemberAdTaskInfo;Z)V

    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberTaskInfo;Z)V
    .locals 32

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/MemberTaskInfo;->getList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/memberapi/MemberTaskGroup;

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskGroup;->getTaskItems()Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskItem;->getInviteList()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v7

    if-ne v5, v7, :cond_3

    move v5, v7

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    invoke-virtual {v4}, Lcom/transsion/memberapi/MemberTaskItem;->getCheckInList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v7

    if-ne v4, v7, :cond_4

    move v6, v7

    :cond_4
    if-nez v5, :cond_5

    if-eqz v6, :cond_2

    :cond_5
    sget-object v4, Lcom/transsion/member/constants/TaskType;->TITLE:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v4}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v4

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskGroup;->getGroupUrl()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskGroup;->getGroupInfo()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskGroup;->getGroupName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v2}, Lcom/transsion/memberapi/MemberTaskGroup;->getGroupName()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Lcom/transsion/memberapi/MemberTaskItem;

    move-object v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v30, 0x1fffdb

    const/16 v31, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v5 .. v31}, Lcom/transsion/memberapi/MemberTaskItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/transsion/memberapi/MemberTaskRewardInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/memberapi/MemberTaskItem;

    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/transsion/member/constants/TaskType;->DOWNLOAD_APP:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v5}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v5

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_8

    :goto_2
    invoke-virtual {v3}, Lcom/transsion/memberapi/MemberTaskItem;->getTaskSubType()Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/transsion/member/constants/TaskType;->OPEN_APP:Lcom/transsion/member/constants/TaskType;

    invoke-virtual {v5}, Lcom/transsion/member/constants/TaskType;->getValue()I

    move-result v5

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_9

    :cond_8
    sget-object v4, Lqi/b;->a:Lqi/b;

    invoke-virtual {v4}, Lqi/b;->n()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    :goto_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/transsion/member/MemberViewModel$i;->a:Lcom/transsion/member/MemberViewModel;

    invoke-static {v1}, Lcom/transsion/member/MemberViewModel;->p(Lcom/transsion/member/MemberViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
