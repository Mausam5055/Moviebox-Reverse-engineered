.class public Lcom/mbridge/msdk/splash/manager/d;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x1

.field public static b:Lcom/mbridge/msdk/foundation/db/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    return-void
.end method

.method private static a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 4

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v0

    const-string v3, "<MBTPLMARK>"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setHasMBTplMark(Z)V

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setHasMBTplMark(Z)V

    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    :goto_1
    return-object p0
.end method

.method public static a(Lcom/mbridge/msdk/splash/view/MBSplashView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 18

    sget-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->Z()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->a0()J

    move-result-wide v5

    mul-long/2addr v5, v3

    move-object/from16 v0, p2

    invoke-static {v5, v6, v0}, Lcom/mbridge/msdk/splash/manager/d;->a(JLjava/lang/String;)V

    sget-object v7, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    sget v11, Lcom/mbridge/msdk/splash/manager/d;->a:I

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v12, v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p2

    invoke-virtual/range {v7 .. v12}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object v7

    const/4 v14, 0x0

    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v14

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v1

    const-wide/16 v11, 0x0

    if-nez p6, :cond_5

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-lez v1, :cond_3

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v1

    mul-long/2addr v1, v3

    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getTimestamp()J

    move-result-wide v3

    add-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-gez v1, :cond_4

    :cond_3
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v1

    cmp-long v1, v1, v11

    if-gtz v1, :cond_9

    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getTimestamp()J

    move-result-wide v1

    cmp-long v1, v1, v9

    if-ltz v1, :cond_9

    :cond_4
    move-object/from16 v7, p0

    move-object v8, v15

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-static/range {v7 .. v13}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v15}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v14

    goto :goto_0

    :cond_5
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v16

    cmp-long v13, v16, v11

    if-lez v13, :cond_6

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v16

    mul-long v16, v16, v3

    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getTimestamp()J

    move-result-wide v3

    add-long v16, v16, v3

    cmp-long v3, v16, v7

    if-gez v3, :cond_7

    :cond_6
    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v3

    cmp-long v3, v3, v11

    if-gtz v3, :cond_8

    invoke-virtual {v15}, Lcom/mbridge/msdk/out/Campaign;->getTimestamp()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-ltz v3, :cond_8

    :cond_7
    move-object/from16 v7, p0

    move-object v8, v15

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-static/range {v7 .. v13}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v15}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v14

    goto :goto_0

    :cond_8
    move-object/from16 v7, p0

    move-object v8, v15

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p7

    invoke-static/range {v7 .. v13}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v15, v1, v2, v5, v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isSpareOffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v15}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v14

    :cond_9
    :goto_0
    return-object v14
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static a(JLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mbridge/msdk/foundation/db/e;->a(JLjava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    :cond_0
    sget-object p0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/splash/view/nativeview/a;)V
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/splash/manager/d$b;

    invoke-direct {v2, p2, p0}, Lcom/mbridge/msdk/splash/manager/d$b;-><init>(Lcom/mbridge/msdk/splash/view/nativeview/a;Lcom/mbridge/msdk/splash/view/MBSplashView;)V

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/mbridge/msdk/splash/manager/d$c;

    invoke-direct {p2}, Lcom/mbridge/msdk/splash/manager/d$c;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    .locals 6

    new-instance v5, Lcom/mbridge/msdk/splash/manager/d$a;

    invoke-direct {v5, p0}, Lcom/mbridge/msdk/splash/manager/d$a;-><init>(Lcom/mbridge/msdk/splash/view/MBSplashView;)V

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const/16 v4, 0x129

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/videocommon/download/b;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/mbridge/msdk/videocommon/listener/a;)Lcom/mbridge/msdk/videocommon/download/l;

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p1

    const/16 v1, 0x129

    invoke-virtual {v0, v1, p2, p1}, Lcom/mbridge/msdk/videocommon/download/b;->b(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/videocommon/download/b;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setVideoReady(Z)V

    :goto_0
    return-void
.end method

.method private static a(Lcom/mbridge/msdk/splash/view/MBSplashView;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/splash/manager/g$d;

    invoke-direct {v0}, Lcom/mbridge/msdk/splash/manager/g$d;-><init>()V

    invoke-virtual {v0, p4}, Lcom/mbridge/msdk/splash/manager/g$d;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/mbridge/msdk/splash/manager/g$d;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/splash/manager/g$d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/manager/g$d;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/mbridge/msdk/splash/manager/g$d;->a(Z)V

    invoke-virtual {v0, p6}, Lcom/mbridge/msdk/splash/manager/g$d;->a(I)V

    invoke-static {}, Lcom/mbridge/msdk/splash/manager/g;->a()Lcom/mbridge/msdk/splash/manager/g;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lcom/mbridge/msdk/splash/manager/g;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/manager/g$d;Lcom/mbridge/msdk/splash/manager/g$c;)V

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isVideoReady()Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isH5Ready()Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isH5Ready()Z

    move-result v1

    :cond_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v0

    :cond_4
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isImageReady()Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    return v0
.end method

.method public static a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    const/4 v10, 0x0

    if-eqz v8, :cond_a

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->clearResState()V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isVideoReady()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/videocommon/download/b;->getInstance()Lcom/mbridge/msdk/videocommon/download/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    const/16 v2, 0x129

    invoke-virtual {v0, v2, v9, v1}, Lcom/mbridge/msdk/videocommon/download/b;->b(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v11

    :goto_1
    if-nez v0, :cond_2

    invoke-static {p0, p1, v9}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v11}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setVideoReady(Z)V

    :goto_2
    move v12, v0

    goto :goto_3

    :cond_3
    move v12, v11

    :goto_3
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isH5Ready()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p6, :cond_5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_4

    :cond_4
    move v12, v10

    :cond_5
    :goto_4
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isH5Ready()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p6, :cond_7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_5

    :cond_6
    move v12, v10

    :cond_7
    :goto_5
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->isImageReady()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mbridge/msdk/splash/manager/d;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/splash/view/nativeview/a;)V

    goto :goto_6

    :cond_8
    invoke-virtual {p0, v11}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setImageReady(Z)V

    move v10, v11

    goto :goto_7

    :cond_9
    :goto_6
    move v10, v12

    :cond_a
    :goto_7
    return v10
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    :cond_0
    sget-object v0, Lcom/mbridge/msdk/splash/manager/d;->b:Lcom/mbridge/msdk/foundation/db/e;

    sget v1, Lcom/mbridge/msdk/splash/manager/d;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/mbridge/msdk/foundation/db/e;->a(Ljava/lang/String;II)V

    return-void
.end method
