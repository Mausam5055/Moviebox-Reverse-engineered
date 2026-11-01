.class public final Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetailapi/bean/SubtitleItem;
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

    invoke-direct {p0}, Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;Lcom/transsion/moviedetailapi/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/transsion/baselib/db/download/SubtitleBean;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const-string v0, ""

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move v5, p3

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v6, p3

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/moviedetailapi/bean/SubtitleItem$a;->a(Lcom/transsion/moviedetailapi/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;II)Lcom/transsion/baselib/db/download/SubtitleBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/transsion/moviedetailapi/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;II)Lcom/transsion/baselib/db/download/SubtitleBean;
    .locals 21

    const-string v0, "item"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postId"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    move v13, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLan()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLanName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/transsion/baselib/db/download/SubtitleBean;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLan()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getLanName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v15, v3

    goto :goto_3

    :cond_3
    move-object v15, v2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getSize()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/SubtitleItem;->getDelay()Ljava/lang/Long;

    move-result-object v11

    const v19, 0x8a00

    const/16 v20, 0x0

    const-string v6, ""

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object v2, v0

    move-object v3, v5

    move-object/from16 v4, p2

    move-object v5, v7

    move-object v7, v8

    move-object v8, v15

    move-object/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-direct/range {v2 .. v20}, Lcom/transsion/baselib/db/download/SubtitleBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
