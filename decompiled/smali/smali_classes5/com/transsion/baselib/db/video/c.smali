.class public final synthetic Lcom/transsion/baselib/db/video/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/d;

.field public final synthetic b:Lcom/transsion/baselib/db/video/ShortTvFavoriteState;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/d;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/c;->a:Lcom/transsion/baselib/db/video/d;

    iput-object p2, p0, Lcom/transsion/baselib/db/video/c;->b:Lcom/transsion/baselib/db/video/ShortTvFavoriteState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/c;->a:Lcom/transsion/baselib/db/video/d;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/c;->b:Lcom/transsion/baselib/db/video/ShortTvFavoriteState;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/db/video/d;->e(Lcom/transsion/baselib/db/video/d;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
