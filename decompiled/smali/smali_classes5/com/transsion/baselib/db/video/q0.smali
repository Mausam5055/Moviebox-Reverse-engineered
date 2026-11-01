.class public final synthetic Lcom/transsion/baselib/db/video/q0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/d1;

.field public final synthetic b:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/d1;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/q0;->a:Lcom/transsion/baselib/db/video/d1;

    iput-object p2, p0, Lcom/transsion/baselib/db/video/q0;->b:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/q0;->a:Lcom/transsion/baselib/db/video/d1;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/q0;->b:Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/db/video/d1;->B(Lcom/transsion/baselib/db/video/d1;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
