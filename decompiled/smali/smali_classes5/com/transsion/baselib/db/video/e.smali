.class public final synthetic Lcom/transsion/baselib/db/video/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/h;

.field public final synthetic b:Lcom/transsion/baselib/db/video/PlaybackRecordTable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/h;Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/e;->a:Lcom/transsion/baselib/db/video/h;

    iput-object p2, p0, Lcom/transsion/baselib/db/video/e;->b:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/e;->a:Lcom/transsion/baselib/db/video/h;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/e;->b:Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/db/video/h;->f(Lcom/transsion/baselib/db/video/h;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
