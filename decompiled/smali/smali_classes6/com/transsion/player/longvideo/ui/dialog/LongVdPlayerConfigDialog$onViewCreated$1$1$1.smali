.class final Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    c = "com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog$onViewCreated$1$1$1"
    f = "LongVdPlayerConfigDialog.kt"
    l = {
        0x8e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $config:Lgo/b;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;


# direct methods
.method constructor <init>(Lgo/b;Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgo/b;",
            "Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->$config:Lgo/b;

    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

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

    new-instance p1, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->$config:Lgo/b;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;-><init>(Lgo/b;Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-class p1, Lcom/transsion/memberapi/IMemberApi;

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/memberapi/IMemberApi;->c()Z

    move-result v1

    :cond_2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "module_name"

    const-string v4, "clarity"

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->$config:Lgo/b;

    invoke-virtual {v3}, Lgo/b;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    invoke-static {v3}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->r0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;)Lgo/a;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lgo/a;->o()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const-string v4, "subject_id"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "is_member"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    iget-object v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    invoke-static {v3}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->t0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, "vip_resolution"

    :cond_4
    invoke-virtual {v1, v3, p1}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->$config:Lgo/b;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->r0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;)Lgo/a;

    move-result-object v3

    iput v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->label:I

    invoke-static {p1, v1, v3, p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->v0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lgo/b;Lgo/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->$config:Lgo/b;

    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->w0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lgo/b;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    invoke-static {p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->s0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;)Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->$config:Lgo/b;

    const-string v1, "LongVdPlayerConfigDialogResolution"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->showResolutionIntercept(Lgo/b;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;->this$0:Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
