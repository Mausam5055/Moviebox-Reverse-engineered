.class public interface abstract Lcom/transsion/commercializationapi/ITaskCenterApi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/therouter/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercializationapi/ITaskCenterApi$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J@\u0010\u000b\u001a\u00020\t2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022%\u0008\u0002\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J3\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0015H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J*\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0005H\u00a6@\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u00a6@\u00a2\u0006\u0004\u0008\u001f\u0010 J+\u0010#\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH&\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/commercializationapi/ITaskCenterApi;",
        "",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isOnRewarded",
        "",
        "callback",
        "b",
        "(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V",
        "Lok/b;",
        "listener",
        "c",
        "(Lok/b;)V",
        "",
        "resolution",
        "",
        "genre",
        "Lcom/transsion/memberapi/MemberSceneType;",
        "sceneType",
        "f",
        "(Ljava/lang/Integer;Ljava/lang/String;Lok/b;Lcom/transsion/memberapi/MemberSceneType;)V",
        "activityId",
        "orderId",
        "showErrorToast",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/transsion/bean/lottery/LotteryUserInfoEntity;",
        "e",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lcom/transsion/memberapi/MemberCheckResult;",
        "memberCheckResult",
        "d",
        "(Ljava/lang/String;Lcom/transsion/memberapi/MemberCheckResult;Lok/b;)V",
        "CommercializationApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract b(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract c(Lok/b;)V
.end method

.method public abstract d(Ljava/lang/String;Lcom/transsion/memberapi/MemberCheckResult;Lok/b;)V
.end method

.method public abstract e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract f(Ljava/lang/Integer;Ljava/lang/String;Lok/b;Lcom/transsion/memberapi/MemberSceneType;)V
.end method
