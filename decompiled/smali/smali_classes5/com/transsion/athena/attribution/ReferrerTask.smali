.class public Lcom/transsion/athena/attribution/ReferrerTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAppId:I

.field private final mContext:Landroid/content/Context;

.field private referrerClient:Lg5/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/athena/attribution/ReferrerTask;)Lg5/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->referrerClient:Lg5/a;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/athena/attribution/ReferrerTask;Lg5/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/athena/attribution/ReferrerTask;->trackGpReferrer(Lg5/d;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/athena/attribution/ReferrerTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->markAppIdGpRefTracked()V

    return-void
.end method

.method private checkGpReferrer()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->isAppIdGpRefTracked()Z

    move-result v0

    const-string v1, "appId : "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " referrer has tracked !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->getCachedGpRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has cached GP referrer !"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/athena/attribution/ReferrerTask;->trackGpReferrer(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->markAppIdGpRefTracked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->referrerClient:Lg5/a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lg5/a;->c(Landroid/content/Context;)Lg5/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a$b;->a()Lg5/a;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->referrerClient:Lg5/a;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " referrerClient startConnection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->referrerClient:Lg5/a;

    new-instance v1, Lcom/transsion/athena/attribution/ReferrerTask$1;

    invoke-direct {v1, p0}, Lcom/transsion/athena/attribution/ReferrerTask$1;-><init>(Lcom/transsion/athena/attribution/ReferrerTask;)V

    invoke-virtual {v0, v1}, Lg5/a;->d(Lg5/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method private checkPsReferrer()V
    .locals 7

    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->isAppIdPsRefTracked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->getCachedPsRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/transsion/athena/attribution/ReferrerTask;->trackPsReferrer(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->markAppIdPsRefTracked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "content://com.transsion.appmarket.data/info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_3

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/transsion/athena/attribution/ReferrerTask;->trackPsReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->markAppIdPsRefTracked()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Referrer not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :goto_4
    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_4
    :goto_5
    return-void
.end method

.method private getCachedGpRef()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object v0

    const-string v1, "key_referrer_google_play"

    invoke-virtual {v0, v1}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedPsRef()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object v0

    const-string v1, "key_referrer_palm_store"

    invoke-virtual {v0, v1}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAppIdGpRefTracked()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_appid_gp_track_flag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isAppIdPsRefTracked()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_appid_ps_track_flag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/attribution/SpUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isGpReferrerValid(Lg5/d;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg5/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lg5/d;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lg5/d;->b()J

    move-result-wide v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-lez p1, :cond_0

    cmp-long p1, v4, v2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private markAppIdGpRefTracked()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_appid_gp_track_flag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/attribution/SpUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private markAppIdPsRefTracked()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_appid_ps_track_flag_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/attribution/SpUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private trackGpReferrer(Lg5/d;)V
    .locals 23

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lg5/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lg5/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lg5/d;->f()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lg5/d;->g()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lg5/d;->b()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lg5/d;->c()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lg5/d;->a()Z

    move-result v11

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const-string v13, "insref"

    invoke-virtual {v12, v13, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "insver"

    invoke-virtual {v12, v14, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "refcltmp"

    invoke-virtual {v12, v15, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-wide/from16 v16, v3

    const-string v3, "refclsvr"

    invoke-virtual {v12, v3, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "insbgtmp"

    invoke-virtual {v12, v4, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 p1, v4

    const-string v4, "insbgsvr"

    invoke-virtual {v12, v4, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v18, v4

    const-string v4, "gpinsprm"

    invoke-virtual {v12, v4, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v19, v4

    new-instance v4, Lyi/a;

    move/from16 v20, v11

    const-string v11, "gp_referrer"

    move-wide/from16 v21, v9

    iget v9, v1, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-direct {v4, v11, v9}, Lyi/a;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x0

    invoke-virtual {v4, v12, v9}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object v4

    invoke-virtual {v4}, Lyi/a;->b()V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-wide/from16 v9, v16

    invoke-virtual {v4, v15, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v4, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-wide/from16 v2, v21

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v2, v19

    move/from16 v0, v20

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object v0

    const-string v2, "key_referrer_google_play"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/transsion/athena/attribution/SpUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private trackGpReferrer(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "insref"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "insver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "refcltmp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "refclsvr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "insbgtmp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "insbgsvr"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "gpinsprm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lyi/a;

    const-string v1, "gp_referrer"

    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-direct {v0, v1, v2}, Lyi/a;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object p1

    invoke-virtual {p1}, Lyi/a;->b()V

    return-void
.end method

.method private trackPsReferrer(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "insref"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "strclts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "strdwts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "insfnsts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lyi/a;

    const-string v1, "ps_referrer"

    iget v2, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-direct {v0, v1, v2}, Lyi/a;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object p1

    invoke-virtual {p1}, Lyi/a;->b()V

    return-void
.end method

.method private trackPsReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "insref"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "strclts"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "strdwts"

    invoke-virtual {v0, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "insfnsts"

    invoke-virtual {v0, v4, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lyi/a;

    const-string v6, "ps_referrer"

    iget v7, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mAppId:I

    invoke-direct {v5, v6, v7}, Lyi/a;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object v0

    invoke-virtual {v0}, Lyi/a;->b()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/transsion/athena/attribution/ReferrerTask;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/attribution/SpUtils;->getInstance(Landroid/content/Context;)Lcom/transsion/athena/attribution/SpUtils;

    move-result-object p1

    const-string p2, "key_referrer_palm_store"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/transsion/athena/attribution/SpUtils;->saveString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "====================\\ ReferrerTask start \\================"

    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->checkGpReferrer()V

    invoke-direct {p0}, Lcom/transsion/athena/attribution/ReferrerTask;->checkPsReferrer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    const-string v0, "====================\\ ReferrerTask end \\================"

    invoke-static {v0}, Lcom/transsion/athena/attribution/AttrLog;->d(Ljava/lang/String;)V

    return-void
.end method
