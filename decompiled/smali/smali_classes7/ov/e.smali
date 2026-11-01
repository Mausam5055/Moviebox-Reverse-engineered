.class public abstract Lov/e;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getVideoNum()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getDescImage()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;

    move-result-object v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
