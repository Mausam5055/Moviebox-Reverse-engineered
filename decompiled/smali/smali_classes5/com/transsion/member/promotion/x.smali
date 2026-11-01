.class public final Lcom/transsion/member/promotion/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/member/promotion/x;

.field private static b:Z

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/promotion/x;

    invoke-direct {v0}, Lcom/transsion/member/promotion/x;-><init>()V

    sput-object v0, Lcom/transsion/member/promotion/x;->a:Lcom/transsion/member/promotion/x;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/promotion/x;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/memberapi/SkuPromotionDto;
    .locals 32

    new-instance v0, Lcom/transsion/memberapi/SkuPromotionDto;

    new-instance v10, Lcom/transsion/memberapi/SkuPromotionItem;

    new-instance v4, Lcom/transsion/memberapi/SkuPromotionContent;

    new-instance v1, Lcom/transsion/memberapi/SkuPromotionHighlight;

    const-string v2, "Premium\nContents"

    const-string v3, ""

    const-string v5, "https://cbiexpress.com/site/cbiexpress.com/image/catalog/home/location.png"

    invoke-direct {v1, v5, v2, v3}, Lcom/transsion/memberapi/SkuPromotionHighlight;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/memberapi/SkuPromotionHighlight;

    const-string v3, "High\nQuality"

    const-string v6, "x2"

    invoke-direct {v2, v5, v3, v6}, Lcom/transsion/memberapi/SkuPromotionHighlight;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/transsion/memberapi/SkuPromotionHighlight;

    const-string v6, "No\nAds"

    const-string v7, "x3"

    invoke-direct {v3, v5, v6, v7}, Lcom/transsion/memberapi/SkuPromotionHighlight;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v6, v5, [Lcom/transsion/memberapi/SkuPromotionHighlight;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "Limited Time Premium Offer"

    const-string v9, "Get Premium now and enjoy!"

    invoke-direct {v4, v8, v9, v3, v6}, Lcom/transsion/memberapi/SkuPromotionContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    new-instance v3, Lcom/transsion/memberapi/SkuPromotionPlacementScene;

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "300"

    const-string v9, "MARKETING_PLACEMENT_SCENE_TYPE_OFFER_POPUP"

    const-string v11, "MARKETING_PLACEMENT_FREQUENCY_MODE_UNSPECIFIED"

    invoke-direct {v3, v9, v11, v6, v8}, Lcom/transsion/memberapi/SkuPromotionPlacementScene;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    new-instance v8, Lcom/transsion/memberapi/SkuPromotionPlacementScene;

    const-string v9, "MARKETING_PLACEMENT_SCENE_TYPE_IN_APP_PUSH"

    const-string v12, "60"

    invoke-direct {v8, v9, v11, v6, v12}, Lcom/transsion/memberapi/SkuPromotionPlacementScene;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    new-instance v9, Lcom/transsion/memberapi/SkuPromotionPlacementScene;

    const-string v13, "MARKETING_PLACEMENT_SCENE_TYPE_RETENTION_POPUP"

    invoke-direct {v9, v13, v11, v6, v12}, Lcom/transsion/memberapi/SkuPromotionPlacementScene;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    new-array v5, v5, [Lcom/transsion/memberapi/SkuPromotionPlacementScene;

    aput-object v3, v5, v7

    aput-object v8, v5, v1

    aput-object v9, v5, v2

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/transsion/memberapi/SkuPromotionSku;

    move-object v11, v6

    const-wide v7, 0x4007eb851eb851ecL    # 2.99

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    const-wide v7, 0x3fefae147ae147aeL    # 0.99

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v29

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const-string v12, "4114127219650447624"

    const-string v13, "string"

    const-string v14, "\u20b9"

    const-string v16, "string"

    const-string v17, "string"

    const-string v18, "string"

    const-string v19, "string"

    const-string v20, "$2.99/week"

    const-string v21, "string"

    const-string v22, "month"

    const-string v23, "2"

    const-string v24, "\u20b9"

    const-string v26, "string"

    const-string v27, "string"

    const-string v28, "string"

    invoke-direct/range {v11 .. v31}, Lcom/transsion/memberapi/SkuPromotionSku;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v7, Lcom/transsion/memberapi/SkuPromotionCrossScenePolicy;

    const-string v1, "string"

    invoke-direct {v7, v1}, Lcom/transsion/memberapi/SkuPromotionCrossScenePolicy;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v3, "\u8425\u9500\u6d3b\u52a8\u9879ID"

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/transsion/memberapi/SkuPromotionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionContent;Ljava/util/List;Lcom/transsion/memberapi/SkuPromotionSku;Lcom/transsion/memberapi/SkuPromotionCrossScenePolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "\u8425\u9500\u6d3b\u52a8ID"

    const-string v3, "\u6d3b\u52a8\u5f00\u59cb\u65f6\u95f4\uff0cUnix\u65f6\u95f4\u6233\uff0c\u5355\u4f4d\u79d2"

    const-string v4, "\u6d3b\u52a8\u7ed3\u675f\u65f6\u95f4\uff0cUnix\u65f6\u95f4\u6233\uff0c\u5355\u4f4d\u79d2\uff1b-1\u8868\u793a\u957f\u671f\u6709\u6548"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/transsion/memberapi/SkuPromotionDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final b()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/member/promotion/x;->b:Z

    return v0
.end method
