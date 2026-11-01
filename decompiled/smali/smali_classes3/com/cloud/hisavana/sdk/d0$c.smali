.class public final Lcom/cloud/hisavana/sdk/d0$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/d0;->f(Ljava/lang/String;Lcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/cloud/hisavana/sdk/o4;

.field final synthetic f:Lkotlin/jvm/functions/Function0;

.field final synthetic g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;Lcom/cloud/hisavana/sdk/o4;Lkotlin/jvm/functions/Function0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d0$c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/d0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/d0$c;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/d0$c;->e:Lcom/cloud/hisavana/sdk/o4;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/d0$c;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/d0$c;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request error\uff0cURL---\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d0$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultMaterialManager"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    sget-object p1, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d0$c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d0$c;->e:Lcom/cloud/hisavana/sdk/o4;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/o4;->c()Lcom/cloud/hisavana/sdk/o4;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/d0$c;->f:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/d0;->f(Ljava/lang/String;Lcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 8

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d0$c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d0$c;->g:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d0$c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d0$c;->e:Lcom/cloud/hisavana/sdk/o4;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/d0$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/d0$c;->f:Lkotlin/jvm/functions/Function0;

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request success\uff0cmain url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", filepath ----\u300b"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "DefaultMaterialManager"

    invoke-virtual {v5, v6, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/e0;->a:Lcom/cloud/hisavana/sdk/e0;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getAdCreativeId(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    const-string v6, "getCodeSeatId(...)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    const-string v6, "getFilePath(...)"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v0, p2}, Lcom/cloud/hisavana/sdk/e0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/o4;->c()Lcom/cloud/hisavana/sdk/o4;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v3, v4}, Lcom/cloud/hisavana/sdk/d0;->f(Ljava/lang/String;Lcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
