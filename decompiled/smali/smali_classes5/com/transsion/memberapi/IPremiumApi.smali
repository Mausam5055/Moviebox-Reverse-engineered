.class public interface abstract Lcom/transsion/memberapi/IPremiumApi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/therouter/inject/Singleton;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/memberapi/IPremiumApi$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008g\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\tJ\u000f\u0010\u000c\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\u000f\u0010\r\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\r\u0010\tJ\u0019\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0013H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J?\u0010\u001b\u001a\u00020\u00102\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016H&\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJA\u0010#\u001a\u00020\u00102\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u000f\u001a\u0004\u0018\u00010!2\u0008\u0008\u0002\u0010\"\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0016H&\u00a2\u0006\u0004\u0008#\u0010$J2\u0010*\u001a\u00020\u00102\u0006\u0010&\u001a\u00020%2\u0018\u0008\u0002\u0010)\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010(\u0012\u0004\u0012\u00020\u0010\u0018\u00010\'H\u00a6@\u00a2\u0006\u0004\u0008*\u0010+J\u009f\u0001\u00106\u001a\u0004\u0018\u0001052\u0006\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020\u00072\u0010\u0008\u0002\u00100\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0010\u0008\u0002\u00101\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f2\u001c\u0008\u0002\u00104\u001a\u0016\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u0001022\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016H&\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u0016H&\u00a2\u0006\u0004\u00089\u0010:J\u0017\u0010<\u001a\u00020\u00102\u0006\u0010&\u001a\u00020;H&\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010>\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008>\u0010?Jm\u0010E\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0019\u001a\u00020\u00162\u0010\u0008\u0002\u0010@\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0010\u0008\u0002\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0010\u0008\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0016\u0008\u0002\u0010D\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u0010\u0018\u00010\'H&\u00a2\u0006\u0004\u0008E\u0010FJG\u0010H\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\u0016\u0008\u0002\u0010A\u001a\u0010\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\u0010\u0018\u00010\'2\u0016\u0008\u0002\u0010D\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u0010\u0018\u00010\'H&\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010J\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008J\u0010?JW\u0010K\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\u0014\u0010A\u001a\u0010\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020\u0010\u0018\u00010\'2\u0010\u0008\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\u0016\u0008\u0002\u0010D\u001a\u0010\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020\u0010\u0018\u00010\'H&\u00a2\u0006\u0004\u0008K\u0010LJ\u0011\u0010M\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0004\u0008M\u0010NJe\u0010Q\u001a\u00020\u00102\u0006\u0010-\u001a\u00020,2\n\u0008\u0002\u0010P\u001a\u0004\u0018\u00010O2\u0010\u0008\u0002\u0010B\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010/2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0016H&\u00a2\u0006\u0004\u0008Q\u0010RJ\u000f\u0010S\u001a\u00020\u0016H&\u00a2\u0006\u0004\u0008S\u0010T\u00a8\u0006U"
    }
    d2 = {
        "Lcom/transsion/memberapi/IPremiumApi;",
        "",
        "",
        "c",
        "()Z",
        "u",
        "k",
        "",
        "t",
        "()I",
        "f",
        "w",
        "x",
        "i",
        "Lzm/j;",
        "callback",
        "",
        "g",
        "(Lzm/j;)V",
        "Lcom/transsion/memberapi/MemberDetail;",
        "b",
        "()Lcom/transsion/memberapi/MemberDetail;",
        "",
        "pageName",
        "traceId",
        "sceneId",
        "subjectId",
        "j",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/app/Activity;",
        "activity",
        "Lcom/transsion/memberapi/MemberSource;",
        "source",
        "Lzm/b;",
        "scrollToTask",
        "a",
        "(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V",
        "Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;",
        "requestBean",
        "Lkotlin/Function1;",
        "Lcom/transsion/memberapi/PremiumV2CheckAccessDto;",
        "completion",
        "q",
        "(Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroid/content/Context;",
        "context",
        "screenState",
        "Lkotlin/Function0;",
        "onClose",
        "onPurchaseSucceed",
        "Lkotlin/Function2;",
        "Landroidx/fragment/app/DialogFragment;",
        "showDialog",
        "Landroid/view/View;",
        "r",
        "(Landroid/content/Context;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;",
        "oldUid",
        "p",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/memberapi/PremiumConsumeRequestBean;",
        "s",
        "(Lcom/transsion/memberapi/PremiumConsumeRequestBean;)V",
        "v",
        "()V",
        "onRenew",
        "onShow",
        "onDismiss",
        "",
        "onLoadFailed",
        "d",
        "(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "Lcom/transsion/memberapi/SkuPromotionItem;",
        "e",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "n",
        "l",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "o",
        "()Ljava/lang/Integer;",
        "Lzm/f;",
        "onPurchaseListener",
        "h",
        "(Landroid/content/Context;Lzm/f;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "m",
        "()Ljava/lang/String;",
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
.method public abstract a(Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lzm/b;ZLjava/lang/String;)V
.end method

.method public abstract b()Lcom/transsion/memberapi/MemberDetail;
.end method

.method public abstract c()Z
.end method

.method public abstract d(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract e(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract f()I
.end method

.method public abstract g(Lzm/j;)V
.end method

.method public abstract h(Landroid/content/Context;Lzm/f;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract i()I
.end method

.method public abstract j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract k()Z
.end method

.method public abstract l(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()V
.end method

.method public abstract o()Ljava/lang/Integer;
.end method

.method public abstract p(Ljava/lang/String;)V
.end method

.method public abstract q(Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public abstract r(Landroid/content/Context;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/transsion/memberapi/MemberSource;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method public abstract s(Lcom/transsion/memberapi/PremiumConsumeRequestBean;)V
.end method

.method public abstract t()I
.end method

.method public abstract u()Z
.end method

.method public abstract v()V
.end method

.method public abstract w()I
.end method

.method public abstract x()I
.end method
