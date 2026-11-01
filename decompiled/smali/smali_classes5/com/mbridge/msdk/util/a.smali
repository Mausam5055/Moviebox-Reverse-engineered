.class public Lcom/mbridge/msdk/util/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/lang/String;)I
    .locals 17

    move/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const-string v2, "errorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0xf

    const/16 v4, 0x10

    const/16 v5, 0xb

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_1
    const-string v2, "do not have sorceList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    add-int/lit16 v0, v1, 0x258

    :goto_0
    move v3, v6

    goto/16 :goto_f

    :cond_2
    const-string v2, "Network error,UnknownHostException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x2

    if-eqz v2, :cond_3

    add-int/lit16 v0, v1, 0x258

    :goto_1
    move v3, v7

    goto/16 :goto_f

    :cond_3
    const-string v2, "v3 is timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x3

    if-eqz v2, :cond_4

    add-int/lit16 v0, v1, 0x258

    :goto_2
    move v3, v8

    goto/16 :goto_f

    :cond_4
    const-string v2, "Current unit is loading!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x4

    if-nez v2, :cond_2a

    const-string v2, "current unit is loading"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_e

    :cond_5
    const-string v2, "Network error,I/O exception response null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x5

    if-eqz v2, :cond_6

    add-int/lit16 v0, v1, 0x258

    :goto_3
    move v3, v10

    goto/16 :goto_f

    :cond_6
    const-string v2, "Network error,ConnectException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x6

    if-eqz v2, :cond_7

    add-int/lit16 v0, v1, 0x258

    :goto_4
    move v3, v11

    goto/16 :goto_f

    :cond_7
    const-string v2, "Network error,socket timeout exception"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x7

    if-eqz v2, :cond_8

    add-int/lit16 v0, v1, 0x258

    :goto_5
    move v3, v12

    goto/16 :goto_f

    :cond_8
    const-string v2, "Network error,disconnected network exception"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v13, 0x8

    if-eqz v2, :cond_9

    add-int/lit16 v0, v1, 0x258

    :goto_6
    move v3, v13

    goto/16 :goto_f

    :cond_9
    const-string v2, "Network error,timeout exception"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v14, 0x9

    if-eqz v2, :cond_a

    add-int/lit16 v0, v1, 0x258

    :goto_7
    move v3, v14

    goto/16 :goto_f

    :cond_a
    const-string v2, "Network error,please check state code"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v15, 0xa

    if-eqz v2, :cond_b

    add-int/lit16 v0, v1, 0x258

    :goto_8
    move v3, v15

    goto/16 :goto_f

    :cond_b
    const-string v2, "Network error,I/O exception contents null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit16 v0, v1, 0x258

    :goto_9
    move v3, v5

    goto/16 :goto_f

    :cond_c
    const-string v2, "Network unknown error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0xc

    if-eqz v2, :cond_d

    add-int/lit16 v0, v1, 0x258

    :goto_a
    move/from16 v3, v16

    goto/16 :goto_f

    :cond_d
    const-string v2, "Network error,I/O exception"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit16 v0, v1, 0x258

    const/16 v3, 0xd

    goto/16 :goto_f

    :cond_e
    const-string v2, "web env is not support"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit16 v0, v1, 0x258

    const/16 v3, 0xe

    goto/16 :goto_f

    :cond_f
    const-string v2, "Network error,unknown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit16 v0, v1, 0x258

    goto/16 :goto_f

    :cond_10
    const-string v2, "Network error\uff0csslp exception"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    add-int/lit16 v0, v1, 0x258

    move v3, v4

    goto/16 :goto_f

    :cond_11
    const-string v2, "Cast exception, return data"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit16 v0, v1, 0x258

    const/16 v3, 0x11

    goto/16 :goto_f

    :cond_12
    const-string v2, "REQUEST_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_0

    :cond_13
    const-string v2, "The server returns an exception"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_1

    :cond_14
    const-string v2, "APP ALREADY INSTALLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "Need show campaign list is NULL!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_d

    :cond_15
    const-string v2, "load no ad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    add-int/lit16 v0, v1, 0x2bc

    :goto_b
    move v3, v9

    goto/16 :goto_f

    :cond_16
    const-string v2, "EXCEPTION_UNIT_NOT_FOUND_IN_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_3

    :cond_17
    const-string v2, "EXCEPTION_UNIT_BIDDING_TYPE_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_4

    :cond_18
    const-string v2, "No video campaign"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_5

    :cond_19
    const-string v2, "EXCEPTION_RETURN_EMPTY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_6

    :cond_1a
    const-string v2, "EXCEPTION_APP_PLATFORM_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_7

    :cond_1b
    const-string v2, "EXCEPTION_SERVICE_REQUEST_OS_VERSION_REQUIRED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_8

    :cond_1c
    const-string v2, "banner res load failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_0

    :cond_1d
    const-string v2, "resource load timeout is tpl: false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_1

    :cond_1e
    const-string v2, "resource download failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_2

    :cond_1f
    const-string v2, "temp preload success but isReady false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    add-int/lit16 v0, v1, 0x320

    goto :goto_b

    :cond_20
    const-string v2, "temp resource download failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_3

    :cond_21
    const-string v2, "tpl temp resource download failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_4

    :cond_22
    const-string v2, "resource load timeout is tpl: true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_5

    :cond_23
    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_c

    :cond_24
    const-string v2, "mraid resource write fail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_7

    :cond_25
    const-string v2, "data save failed:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_8

    :cond_26
    const-string v2, "resource load timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_9

    :cond_27
    const-string v2, "tpl temp preload failed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2b

    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_a

    :cond_28
    :goto_c
    add-int/lit16 v0, v1, 0x320

    goto/16 :goto_6

    :cond_29
    :goto_d
    add-int/lit16 v0, v1, 0x2bc

    goto/16 :goto_2

    :cond_2a
    :goto_e
    add-int/lit16 v0, v1, 0x258

    goto/16 :goto_b

    :goto_f
    add-int/2addr v0, v3

    goto :goto_11

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2b
    move v0, v1

    :goto_11
    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    add-int/lit16 p0, p0, 0x384

    return p0
.end method
