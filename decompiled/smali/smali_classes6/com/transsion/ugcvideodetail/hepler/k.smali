.class public final synthetic Lcom/transsion/ugcvideodetail/hepler/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lgo/a;

.field public final synthetic b:Lpx/a;

.field public final synthetic c:Lgo/a;


# direct methods
.method public synthetic constructor <init>(Lgo/a;Lpx/a;Lgo/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/k;->a:Lgo/a;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/k;->b:Lpx/a;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/k;->c:Lgo/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/k;->a:Lgo/a;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/k;->b:Lpx/a;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/k;->c:Lgo/a;

    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/ugcvideodetail/hepler/UGCVideoFloatManager;->d(Lgo/a;Lpx/a;Lgo/a;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
