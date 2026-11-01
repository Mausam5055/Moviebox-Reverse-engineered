.class final Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.usercenter.devicemanagement.viewmodel.DeviceManagementViewModel$loadData$1"
    f = "DeviceManagementViewModel.kt"
    l = {
        0x3f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;

    iget-object v0, p0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    invoke-direct {p1, v0, p2}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;-><init>(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsnet/loginapi/bean/UserInfo;

    iget-object v2, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    invoke-static {v2}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->d(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;)Landroidx/lifecycle/b0;

    move-result-object v2

    sget-object v6, Ljw/c$b;->a:Ljw/c$b;

    invoke-virtual {v2, v6}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    const-class v2, Lcom/transsnet/loginapi/ILoginApi;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsnet/loginapi/ILoginApi;

    const-class v6, Lcom/transsion/memberapi/IPremiumApi;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    new-instance v7, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1$rightsAndDevices$1;

    iget-object v8, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    invoke-direct {v7, v8, v2, v6, v5}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1$rightsAndDevices$1;-><init>(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/memberapi/IPremiumApi;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->label:I

    invoke-static {v7, v0}, Lkotlinx/coroutines/o0;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v2

    move-object v2, v6

    :goto_1
    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;

    if-nez v6, :cond_4

    iget-object v1, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    invoke-static {v1}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->d(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    sget-object v2, Ljw/c$a;->a:Ljw/c$a;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1

    :cond_4
    iget-object v8, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    invoke-static {v8}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->d(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;)Landroidx/lifecycle/b0;

    move-result-object v8

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-static {v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v5

    :goto_2
    if-eqz v9, :cond_7

    :cond_6
    :goto_3
    move-object v11, v9

    goto :goto_6

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUsername()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-static {v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_4

    :cond_8
    move-object v9, v5

    :goto_4
    if-nez v9, :cond_6

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getShortId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_5

    :cond_9
    move-object v9, v5

    :goto_5
    if-nez v9, :cond_6

    const-string v9, ""

    goto :goto_3

    :goto_6
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_7

    :cond_a
    move-object v12, v5

    :goto_7
    iget-object v1, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/transsion/memberapi/IPremiumApi;->b()Lcom/transsion/memberapi/MemberDetail;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/transsion/memberapi/MemberInfo;->getExpiryDate()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-static {v1, v5}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->b(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v2, :cond_c

    invoke-interface {v2}, Lcom/transsion/memberapi/IPremiumApi;->u()Z

    move-result v1

    if-ne v1, v4, :cond_c

    move v14, v4

    goto :goto_8

    :cond_c
    move v14, v3

    :goto_8
    iget-object v1, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    invoke-virtual {v6}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;->getBasicLinkedDevice()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->e(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Ljava/lang/Integer;)I

    move-result v15

    iget-object v1, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    invoke-virtual {v6}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;->getProLinkedDevice()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->e(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Ljava/lang/Integer;)I

    move-result v16

    invoke-virtual {v6}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;->getRights()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    :cond_d
    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;

    invoke-static {v2, v5}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->g(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightDto;)Ljw/e;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    invoke-virtual {v6}, Lcom/transsion/usercenter/devicemanagement/model/UpgradeRightsDto;->getDescription()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel$loadData$1;->this$0:Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;

    invoke-static {v2, v4}, Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;->f(Lcom/transsion/usercenter/devicemanagement/viewmodel/DeviceManagementViewModel;Lcom/transsion/usercenter/devicemanagement/model/LinkedDeviceDto;)Ljw/d;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    new-instance v1, Ljw/b;

    move-object v10, v1

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    invoke-direct/range {v10 .. v19}, Ljw/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/util/List;Ljava/lang/String;Ljava/util/List;)V

    new-instance v2, Ljw/c$c;

    invoke-direct {v2, v1}, Ljw/c$c;-><init>(Ljw/b;)V

    invoke-virtual {v8, v2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v1
.end method
