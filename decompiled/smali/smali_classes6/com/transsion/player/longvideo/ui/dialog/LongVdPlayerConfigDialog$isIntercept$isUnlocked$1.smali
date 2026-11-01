.class final Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->A0(Lgo/b;Lgo/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Z"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog$isIntercept$isUnlocked$1"
    f = "LongVdPlayerConfigDialog.kt"
    l = {
        0xc3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $longVdPlayerBean:Lgo/a;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lgo/a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;",
            "Lgo/a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->$longVdPlayerBean:Lgo/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->$longVdPlayerBean:Lgo/a;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lgo/a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->u0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;)Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->$longVdPlayerBean:Lgo/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, ""

    :cond_3
    iget-object v4, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->$longVdPlayerBean:Lgo/a;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lgo/a;->l()I

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->$longVdPlayerBean:Lgo/a;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lgo/a;->e()I

    move-result v5

    goto :goto_1

    :cond_5
    move v5, v2

    :goto_1
    iput v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$isUnlocked$1;->label:I

    invoke-interface {p1, v1, v4, v5, p0}, Lcom/transsion/baselib/db/video/PlaybackRecordDao;->a(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    check-cast p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getRewardUnlock()Z

    move-result p1

    if-ne p1, v3, :cond_7

    move v2, v3

    :cond_7
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
