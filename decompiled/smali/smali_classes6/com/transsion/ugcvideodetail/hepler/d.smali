.class public final synthetic Lcom/transsion/ugcvideodetail/hepler/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/ugcvideodetail/hepler/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/hepler/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/d;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    check-cast p1, Lcom/transsion/user/action/sync/event/CommentEvent;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/e;->a(Lcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
