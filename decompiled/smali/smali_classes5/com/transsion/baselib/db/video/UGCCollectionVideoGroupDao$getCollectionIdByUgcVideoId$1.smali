.class final Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$DefaultImpls;->b(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.baselib.db.video.UGCCollectionVideoGroupDao$DefaultImpls"
    f = "UGCCollectionVideoGroupDao.kt"
    l = {
        0x3f
    }
    m = "getCollectionIdByUgcVideoId"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

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
            "Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$getCollectionIdByUgcVideoId$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$DefaultImpls;->b(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
