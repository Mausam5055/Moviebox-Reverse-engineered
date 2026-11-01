.class public final Lcom/transsion/home/bean/UGCFilterVideoItem$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/bean/UGCFilterVideoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/bean/UGCFilterVideoItem$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/util/Map;)Lcom/transsion/home/bean/UGCFilterVideoItem;
    .locals 34

    move-object/from16 v0, p1

    const-string v1, "adManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-object v2, v1

    const v32, 0x1fff0420

    const/16 v33, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v2 .. v33}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;IZLcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    const-string v3, "UGC_VIDEO"

    move-object v2, v8

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;Lcom/transsion/ugcvideodetail/api/bean/UGCVerticalRank;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoHashTag;)V

    new-instance v1, Lcom/transsion/home/bean/UGCFilterVideoItem;

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v1, v8, v2, v3, v0}, Lcom/transsion/home/bean/UGCFilterVideoItem;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-object v1
.end method

.method public final b(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;)Lcom/transsion/home/bean/UGCFilterVideoItem;
    .locals 2

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/home/bean/UGCFilterVideoItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/transsion/home/bean/UGCFilterVideoItem;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCContent;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    return-object v0
.end method
