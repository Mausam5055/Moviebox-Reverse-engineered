.class public final synthetic Lcom/transsion/baselib/db/video/a1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/d1;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/a1;->a:Lcom/transsion/baselib/db/video/d1;

    iput-object p2, p0, Lcom/transsion/baselib/db/video/a1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/a1;->a:Lcom/transsion/baselib/db/video/d1;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/a1;->b:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/db/video/d1;->y(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;Lz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p1

    return-object p1
.end method
