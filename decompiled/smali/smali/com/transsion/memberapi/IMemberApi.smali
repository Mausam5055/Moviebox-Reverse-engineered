.class public interface abstract Lcom/transsion/memberapi/IMemberApi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/therouter/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/memberapi/IMemberApi$a;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008g\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J%\u0010\u0008\u001a\u00020\u00022\u0014\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\u000eH&\u00a2\u0006\u0004\u0008\u000f\u0010\u0010JA\u0010\u0019\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017H&\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\n2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000eH&\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH&\u00a2\u0006\u0004\u0008\u001f\u0010 J3\u0010#\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0008\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010\u0007\u001a\u00020\u0015H&\u00a2\u0006\u0004\u0008#\u0010$J3\u0010(\u001a\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00172\u0008\u0010\u0007\u001a\u0004\u0018\u00010\'H&\u00a2\u0006\u0004\u0008(\u0010)J\u000f\u0010*\u001a\u00020\nH&\u00a2\u0006\u0004\u0008*\u0010\u000cJ\u000f\u0010+\u001a\u00020\nH&\u00a2\u0006\u0004\u0008+\u0010\u000cJ#\u0010-\u001a\u00020\u00022\u0012\u0008\u0002\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010,H&\u00a2\u0006\u0004\u0008-\u0010.J@\u00103\u001a\u00020\u00022\u0008\u00100\u001a\u0004\u0018\u00010/2\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u001e2\u0018\u0008\u0002\u00102\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010!\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005H\u00a6@\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0002H&\u00a2\u0006\u0004\u00085\u0010\u0004J\u0019\u00108\u001a\u00020\u00022\u0008\u0008\u0002\u00107\u001a\u000206H&\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010:\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008:\u0010\u0004J\u0015\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\n0;H&\u00a2\u0006\u0004\u0008<\u0010=Ja\u0010E\u001a\u00020\u00022>\u0008\u0002\u0010C\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008?\u0012\u0008\u0008@\u0012\u0004\u0008\u0008(A\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008?\u0012\u0008\u0008@\u0012\u0004\u0008\u0008(B\u0012\u0004\u0012\u00020\u0002\u0018\u00010>2\u0010\u0008\u0002\u0010D\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010,H&\u00a2\u0006\u0004\u0008E\u0010FJ\u0080\u0001\u0010L\u001a\u00020\u00022\u0006\u0010H\u001a\u00020G2>\u0008\u0002\u0010I\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008?\u0012\u0008\u0008@\u0012\u0004\u0008\u0008(A\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008?\u0012\u0008\u0008@\u0012\u0004\u0008\u0008(B\u0012\u0004\u0012\u00020\u0002\u0018\u00010>2\'\u0008\u0002\u0010D\u001a!\u0012\u0015\u0012\u0013\u0018\u00010J\u00a2\u0006\u000c\u0008?\u0012\u0008\u0008@\u0012\u0004\u0008\u0008(K\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005H&\u00a2\u0006\u0004\u0008L\u0010MJ-\u0010P\u001a\u00020\u00022\u0006\u00100\u001a\u00020/2\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u001e2\u0008\u0010O\u001a\u0004\u0018\u00010NH&\u00a2\u0006\u0004\u0008P\u0010QJ%\u0010R\u001a\u00020\u00022\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u001e2\u0008\u0010O\u001a\u0004\u0018\u00010NH&\u00a2\u0006\u0004\u0008R\u0010SJ\u0011\u0010U\u001a\u0004\u0018\u00010TH&\u00a2\u0006\u0004\u0008U\u0010VJ\u0019\u0010X\u001a\u00020\u00022\u0008\u0010W\u001a\u0004\u0018\u00010TH&\u00a2\u0006\u0004\u0008X\u0010YJ1\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020Z2\u0018\u0008\u0002\u00102\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005H&\u00a2\u0006\u0004\u0008\\\u0010]J\u0017\u0010_\u001a\u00020\u00022\u0006\u0010O\u001a\u00020^H&\u00a2\u0006\u0004\u0008_\u0010`J\u0017\u0010a\u001a\u00020\u00022\u0006\u0010O\u001a\u00020^H&\u00a2\u0006\u0004\u0008a\u0010`J\u0019\u0010c\u001a\u00020\u00022\u0008\u0010O\u001a\u0004\u0018\u00010bH&\u00a2\u0006\u0004\u0008c\u0010dJ\u0019\u0010e\u001a\u00020\u00022\u0008\u0010O\u001a\u0004\u0018\u00010bH&\u00a2\u0006\u0004\u0008e\u0010dJ\u000f\u0010f\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008f\u0010\u0004J\u000f\u0010g\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008g\u0010\u0004J\u000f\u0010h\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008h\u0010\u0004J\u0019\u0010j\u001a\u00020\n2\u0008\u0010i\u001a\u0004\u0018\u00010\u0006H&\u00a2\u0006\u0004\u0008j\u0010k\u00a8\u0006l"
    }
    d2 = {
        "Lcom/transsion/memberapi/IMemberApi;",
        "",
        "",
        "p",
        "()V",
        "Lkotlin/Function1;",
        "Lcom/transsion/memberapi/MemberRemindData;",
        "callback",
        "m",
        "(Lkotlin/jvm/functions/Function1;)V",
        "",
        "B",
        "()Z",
        "f",
        "Landroidx/fragment/app/Fragment;",
        "r",
        "()Landroidx/fragment/app/Fragment;",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/transsion/memberapi/MemberSource;",
        "source",
        "Lzm/b;",
        "scrollToTask",
        "",
        "sceneId",
        "a",
        "(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V",
        "fragment",
        "j",
        "(Landroidx/fragment/app/Fragment;)Z",
        "",
        "D",
        "()I",
        "Lcom/transsion/memberapi/MemberCheckResult;",
        "memberCheckResult",
        "w",
        "(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lcom/transsion/memberapi/MemberCheckResult;Lzm/b;)V",
        "title",
        "buttonTitle",
        "Lzm/k;",
        "y",
        "(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzm/k;)V",
        "c",
        "g",
        "Lkotlin/Function0;",
        "C",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lcom/transsion/memberapi/MemberSceneType;",
        "sceneType",
        "resolution",
        "completion",
        "e",
        "(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "h",
        "",
        "bottomMargin",
        "x",
        "(F)V",
        "G",
        "Lkotlinx/coroutines/flow/i1;",
        "d",
        "()Lkotlinx/coroutines/flow/i1;",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "code",
        "message",
        "onFailed",
        "onSuccess",
        "A",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V",
        "Lcom/transsion/memberapi/MemberTaskItem;",
        "item",
        "onFailure",
        "Lcom/transsion/memberapi/TaskRewards;",
        "data",
        "l",
        "(Lcom/transsion/memberapi/MemberTaskItem;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V",
        "Lzm/a;",
        "listener",
        "z",
        "(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lzm/a;)V",
        "o",
        "(Ljava/lang/Integer;Lzm/a;)V",
        "Lcom/transsion/memberapi/MemberDetail;",
        "b",
        "()Lcom/transsion/memberapi/MemberDetail;",
        "memberDetail",
        "k",
        "(Lcom/transsion/memberapi/MemberDetail;)V",
        "Lcom/transsion/memberapi/OpType;",
        "opType",
        "n",
        "(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V",
        "Lzm/e;",
        "E",
        "(Lzm/e;)V",
        "t",
        "Lzm/c;",
        "s",
        "(Lzm/c;)V",
        "u",
        "i",
        "q",
        "v",
        "memberRemindData",
        "F",
        "(Lcom/transsion/memberapi/MemberRemindData;)Z",
        "MemberApi_psRelease"
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
.method public abstract A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract B()Z
.end method

.method public abstract C(Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract D()I
.end method

.method public abstract E(Lzm/e;)V
.end method

.method public abstract F(Lcom/transsion/memberapi/MemberRemindData;)Z
.end method

.method public abstract G()V
.end method

.method public abstract a(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V
.end method

.method public abstract b()Lcom/transsion/memberapi/MemberDetail;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Lkotlinx/coroutines/flow/i1;
.end method

.method public abstract e(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()V
.end method

.method public abstract i()V
.end method

.method public abstract j(Landroidx/fragment/app/Fragment;)Z
.end method

.method public abstract k(Lcom/transsion/memberapi/MemberDetail;)V
.end method

.method public abstract l(Lcom/transsion/memberapi/MemberTaskItem;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract m(Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract n(Lcom/transsion/memberapi/OpType;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract o(Ljava/lang/Integer;Lzm/a;)V
.end method

.method public abstract p()V
.end method

.method public abstract q()V
.end method

.method public abstract r()Landroidx/fragment/app/Fragment;
.end method

.method public abstract s(Lzm/c;)V
.end method

.method public abstract t(Lzm/e;)V
.end method

.method public abstract u(Lzm/c;)V
.end method

.method public abstract v()V
.end method

.method public abstract w(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lcom/transsion/memberapi/MemberCheckResult;Lzm/b;)V
.end method

.method public abstract x(F)V
.end method

.method public abstract y(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lzm/k;)V
.end method

.method public abstract z(Lcom/transsion/memberapi/MemberSceneType;Ljava/lang/Integer;Lzm/a;)V
.end method
