.class public final synthetic Lcom/transsion/videodetail/util/c;
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

    iput-object p1, p0, Lcom/transsion/videodetail/util/c;->a:Lgo/a;

    iput-object p2, p0, Lcom/transsion/videodetail/util/c;->b:Lpx/a;

    iput-object p3, p0, Lcom/transsion/videodetail/util/c;->c:Lgo/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/videodetail/util/c;->a:Lgo/a;

    iget-object v1, p0, Lcom/transsion/videodetail/util/c;->b:Lpx/a;

    iget-object v2, p0, Lcom/transsion/videodetail/util/c;->c:Lgo/a;

    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/videodetail/util/StreamFloatManager;->d(Lgo/a;Lpx/a;Lgo/a;Lcom/transsion/videodetail/bean/VideoDetailStreamList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
