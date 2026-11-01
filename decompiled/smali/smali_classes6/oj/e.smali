.class public final synthetic Loj/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Loj/h;

.field public final synthetic b:Lcom/transsion/baselib/db/music/MusicLikedDbBean;


# direct methods
.method public synthetic constructor <init>(Loj/h;Lcom/transsion/baselib/db/music/MusicLikedDbBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj/e;->a:Loj/h;

    iput-object p2, p0, Loj/e;->b:Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Loj/e;->a:Loj/h;

    iget-object v1, p0, Loj/e;->b:Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Loj/h;->k(Loj/h;Lcom/transsion/baselib/db/music/MusicLikedDbBean;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
