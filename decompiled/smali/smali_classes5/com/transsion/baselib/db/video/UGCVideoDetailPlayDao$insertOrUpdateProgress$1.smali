.class final Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->e(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.baselib.db.video.UGCVideoDetailPlayDao$DefaultImpls"
    f = "UGCVideoDetailPlayDao.kt"
    l = {
        0xe5,
        0xe7,
        0xef,
        0xf2
    }
    m = "insertOrUpdateProgress"
.end annotation


# instance fields
.field J$0:J

.field J$1:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;->e(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
