.class public Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;
.super Ljava/lang/Object;


# static fields
.field private static final Sj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "close-fill"

    const-string v2, "webview-close"

    const-string v3, "dislike"

    const-string v4, "close"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj:Ljava/util/Set;

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 2

    const-string v0, "union"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    goto :goto_0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    :goto_0
    return-object p0

    :cond_2
    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object p0

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object p0

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p9

    const-string v5, "tt_reward_full_skip"

    const-string v7, "fontSize"

    const-string v8, "open_ad"

    const-string v9, "source"

    const-string v10, "text"

    invoke-virtual/range {p13 .. p13}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p13 .. p13}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Jcg()I

    move-result v14

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v15

    const-string v6, "score-count-type-2"

    const-string v11, "score-count"

    const-string v12, "text_star"

    move-object/from16 v16, v5

    const/4 v5, 0x4

    move/from16 v17, v14

    const/4 v14, 0x0

    if-eqz v15, :cond_1

    if-eq v4, v5, :cond_1

    invoke-static {v1, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "score-count-type-1"

    invoke-static {v1, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {v0, v14, v14}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>(FF)V

    return-object v0

    :cond_1
    new-instance v15, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {v15}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>()V

    const-string v5, "<svg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v10, v15

    goto/16 :goto_c

    :cond_3
    const-string v5, "logo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v14, ""

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "adx:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP:Ljava/lang/String;

    invoke-static {v15, v0, v2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v15, v0, v2, v14}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v3, "union"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/high16 v4, 0x41600000    # 14.0f

    goto :goto_0

    :cond_8
    const/high16 v4, 0x41a00000    # 20.0f

    :goto_0
    iput v4, v15, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    const/high16 v4, 0x41200000    # 10.0f

    iput v4, v15, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p13 .. p13}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->wE()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    iput v3, v15, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v1, v3

    const-string v3, "logoad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p13 .. p13}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->ley()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    iput v3, v15, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    goto :goto_1

    :cond_a
    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_b
    :goto_1
    iput v1, v15, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    :cond_c
    return-object v15

    :cond_d
    const-string v5, "development-name"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v18, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_text_privacy_development"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_e
    move-object/from16 v18, v14

    :goto_2
    const-string v3, "app-version"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v19, v15

    const-string v15, "tt_text_privacy_app_version"

    invoke-static {v14, v15}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    move-object/from16 v19, v15

    :goto_3
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, ")"

    const-string v14, "("

    if-eqz v4, :cond_11

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v0, 0x0

    :goto_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v1

    if-eqz v1, :cond_10

    if-gez v0, :cond_10

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>(FF)V

    return-object v0

    :cond_10
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v1

    const-string v3, "tt_comment_num"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    const/4 v0, 0x0

    :goto_5
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v1

    if-eqz v1, :cond_12

    if-gez v0, :cond_12

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>(FF)V

    return-object v0

    :cond_12
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v4, "feedback-dislike"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object v0

    :cond_14
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_reward_feedback"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_15
    const-string v4, "skip-with-time-countdown"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "00"

    if-nez v4, :cond_33

    const-string v4, "skip-with-countdowns-video-countdown"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto/16 :goto_b

    :cond_16
    const-string v4, "skip-with-countdowns-skip-btn"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v11, "tt_reward_screen_skip_tx"

    const-string v14, "| "

    if-eqz v4, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_17
    const-string v4, "skip-with-countdowns-skip-countdown"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_reward_full_skip_count_down"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v4, "skip-with-time-skip-btn"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "lineHeight"

    const-wide v16, 0x3ff3333333333333L    # 1.2

    if-eqz v4, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v1

    if-eqz v1, :cond_19

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget v3, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    float-to-double v3, v3

    mul-double/2addr v3, v1

    div-double v3, v3, v16

    double-to-float v1, v3

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    :cond_19
    return-object v0

    :cond_1a
    const-string v4, "skip"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_1b
    const-string v4, "timedown"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v11, "0.0"

    if-eqz v4, :cond_1c

    invoke-static {v11, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    const-wide/16 v20, 0x0

    if-eqz v4, :cond_1f

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_1e

    cmpg-double v0, p10, v20

    if-ltz v0, :cond_1d

    cmpl-double v0, p10, v14

    if-lez v0, :cond_1e

    :cond_1d
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>(FF)V

    return-object v0

    :cond_1e
    invoke-static {v11, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_1f
    const-string v4, "privacy-detail"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v0, "Permission list | Privacy policy"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_20
    const-string v4, "arrowButton"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    const-string v0, "Download"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v11

    if-eqz v11, :cond_23

    invoke-virtual {v11}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Uc()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Uc()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->TKC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    :cond_22
    move-object/from16 v0, v18

    :cond_23
    const-string v11, "fillButton"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_32

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "button"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "downloadWithIcon"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "downloadButton"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "laceButton"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "cardButton"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    const-string v10, "colourMixtureButton"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_32

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_24
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto/16 :goto_a

    :cond_25
    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v5, v10

    const-string v7, "letterSpacing"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v7, v10

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v6, v10

    const-string v10, "maxWidth"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v3, v10

    int-to-float v4, v4

    add-float v10, v5, v7

    mul-float/2addr v4, v10

    sub-float/2addr v4, v7

    const-string v7, "muted"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v7, :cond_26

    move-object/from16 v10, v19

    :try_start_4
    iput v5, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v5, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object v10

    :cond_26
    move-object/from16 v10, v19

    const-string v7, "star"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_28

    cmpg-double v0, p10, v20

    if-ltz v0, :cond_27

    cmpl-double v0, p10, v14

    if-gtz v0, :cond_27

    move/from16 v0, p9

    const/4 v1, 0x4

    if-eq v0, v1, :cond_28

    :cond_27
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>(FF)V

    return-object v0

    :cond_28
    const-string v0, "str"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v5, v1

    iput v5, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    return-object v0

    :cond_29
    const-string v7, "icon"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    iput v5, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v5, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object v10

    :cond_2a
    if-eqz p3, :cond_2c

    div-float v7, v4, v3

    float-to-int v7, v7

    const/4 v11, 0x1

    add-int/2addr v7, v11

    move/from16 v11, p5

    if-eqz p4, :cond_2b

    if-lt v7, v11, :cond_2b

    move v7, v11

    :cond_2b
    mul-float/2addr v6, v5

    int-to-float v5, v7

    mul-float/2addr v6, v5

    float-to-double v5, v6

    mul-double v5, v5, v16

    double-to-float v5, v5

    :goto_6
    move v6, v3

    goto :goto_7

    :cond_2c
    move/from16 v11, p5

    mul-float/2addr v6, v5

    float-to-double v5, v6

    mul-double v5, v5, v16

    double-to-float v5, v5

    cmpl-float v6, v4, v3

    if-lez v6, :cond_2d

    goto :goto_6

    :cond_2d
    move v6, v4

    :goto_7
    const-string v7, "title"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v1, :cond_31

    :cond_2e
    const/16 v1, 0x20

    const/16 v7, 0xa

    :try_start_5
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    if-eqz p3, :cond_30

    div-float/2addr v4, v3

    float-to-int v1, v4

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-eqz p4, :cond_2f

    if-lt v1, v11, :cond_2f

    goto :goto_8

    :cond_2f
    move v11, v1

    :goto_8
    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    int-to-float v2, v11

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_30
    return-object v0

    :catch_2
    :cond_31
    :try_start_6
    iput v6, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v5, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_9

    :catch_3
    move-object/from16 v10, v19

    :catch_4
    :goto_9
    return-object v10

    :cond_32
    :goto_a
    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_33
    :goto_b
    invoke-virtual/range {p13 .. p13}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {v13}, Lcom/bytedance/sdk/component/adexpress/EjP/vS;->sP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v0, p7, v0

    double-to-int v0, v0

    sub-int v0, v0, v17

    const/16 v1, 0xa

    if-ge v0, v1, :cond_35

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "0s"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_34
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "0"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_35
    move-object/from16 v1, v16

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "00s"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_36
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_37
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p7, v0

    if-gez v0, :cond_38

    const-string v0, "0S"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :cond_38
    const-string v0, "00S"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    return-object v0

    :goto_c
    :try_start_7
    const-string v0, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "close-fill"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_d

    :catch_5
    :cond_39
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_e

    :cond_3a
    :goto_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v0, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    return-object v10

    :goto_e
    iput v0, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v0, v10, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object v10
.end method

.method public static Sj(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;FZ)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p1, p0, p1

    int-to-float p1, p1

    iput p1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    const/4 p1, 0x1

    aget p0, p0, p1

    int-to-float p0, p0

    iput p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    const-string p0, "lineHeight"

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, p0, p1, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmpl-double p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    iput p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static Sj()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public static Sj(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "adx:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static Sj(Ljava/lang/String;FZ)[I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP(Ljava/lang/String;FZ)[I

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    aget p2, p0, p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->sP(Landroid/content/Context;F)I

    move-result p1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    invoke-static {p2, p0}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->sP(Landroid/content/Context;F)I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public static sP(Ljava/lang/String;)D
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "fontSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static sP()Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static sP(Ljava/lang/String;FZ)[I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    :cond_0
    const/4 p0, -0x2

    invoke-virtual {v1, p0, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    filled-new-array {p0, p1}, [I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    filled-new-array {v0, v0}, [I

    move-result-object p0

    return-object p0
.end method
