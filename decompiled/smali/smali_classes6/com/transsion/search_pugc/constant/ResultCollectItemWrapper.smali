.class public final Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;
    }
.end annotation


# instance fields
.field private final a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field private final b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iput-object p2, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;->DATA:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-object v0
.end method

.method public final b()Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;

    iget-object v1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget-object v3, p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    iget-object p1, p1, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iget-object v1, p0, Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper;->b:Lcom/transsion/search_pugc/constant/ResultCollectItemWrapper$Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultCollectItemWrapper(data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
