.class public final Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;
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

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;-><init>()V

    return-void
.end method

.method private final c()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->access$getMmkv$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x5

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "context"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;->b()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;->getLabelList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget v8, Lcom/transsion/usercenter/R$string;->feedback_viewing_experience:I

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "getString(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v10, Lcom/transsion/usercenter/R$string;->feedback_subtitls:I

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v11, Lcom/transsion/usercenter/R$string;->feedback_download:I

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v12, Lcom/transsion/usercenter/R$string;->feedback_file_management:I

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v13, Lcom/transsion/usercenter/R$string;->feedback_copyright:I

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v14, Lcom/transsion/usercenter/R$string;->feedback_pornographic_content:I

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v15, Lcom/transsion/usercenter/R$string;->other:I

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    invoke-direct {v9, v7, v8}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    invoke-direct {v8, v6, v10}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    new-instance v10, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    invoke-direct {v10, v5, v11}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    new-instance v11, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    invoke-direct {v11, v4, v12}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    new-instance v12, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    invoke-direct {v12, v3, v13}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    new-instance v13, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    invoke-direct {v13, v2, v14}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    new-instance v14, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    invoke-direct {v14, v1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;-><init>(ILjava/lang/String;)V

    new-array v0, v2, [Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;

    const/4 v2, 0x0

    aput-object v9, v0, v2

    aput-object v8, v0, v7

    aput-object v10, v0, v6

    aput-object v11, v0, v5

    aput-object v12, v0, v4

    aput-object v13, v0, v1

    aput-object v14, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;
    .locals 2

    invoke-direct {p0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "LAST_SERVER_OPTION"

    invoke-virtual {v0, v1}, Lcom/tencent/mmkv/MMKV;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    :try_start_0
    const-class v1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;->Companion:Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "LAST_SERVER_OPTION"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->v(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
