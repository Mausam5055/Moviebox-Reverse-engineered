.class public Lcom/mbridge/msdk/mbbanner/common/manager/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/mbbanner/common/manager/b$e;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "b"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/mbridge/msdk/mbbanner/common/data/b;

.field private d:Lcom/mbridge/msdk/mbbanner/common/util/a;

.field private e:Lcom/mbridge/msdk/mbbanner/common/listener/b;

.field private f:Lcom/mbridge/msdk/mbbanner/common/listener/d;

.field private volatile g:Z

.field private h:Ljava/util/Timer;

.field private volatile i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/mbbanner/common/data/b;Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/mbbanner/common/util/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->b:I

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->g:Z

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->h:Ljava/util/Timer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->i:Ljava/util/List;

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->k:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->c:Lcom/mbridge/msdk/mbbanner/common/data/b;

    iput-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    iput-object p4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->d:Lcom/mbridge/msdk/mbbanner/common/util/a;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->c:Lcom/mbridge/msdk/mbbanner/common/data/b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/common/data/b;->c()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->c:Lcom/mbridge/msdk/mbbanner/common/data/b;

    invoke-virtual {v1}, Lcom/mbridge/msdk/mbbanner/common/data/b;->b()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;
    .locals 13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_5

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/foundation/same/directory/c;->g:Lcom/mbridge/msdk/foundation/same/directory/c;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/directory/e;->b(Lcom/mbridge/msdk/foundation/same/directory/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/z0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_1
    move-object v1, v0

    goto :goto_8

    :goto_2
    move-object v2, v3

    :goto_3
    :try_start_3
    sget-object v3, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    :goto_4
    sget-object v2, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_6

    :cond_2
    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_a

    :cond_3
    :goto_6
    const/4 v9, 0x2

    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    move-object v10, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_a

    :goto_7
    move-object v1, v0

    move-object v3, v2

    :goto_8
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v2, v0

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_9
    throw v1

    :cond_5
    :goto_a
    return-object v1
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_6

    :try_start_0
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object p2

    sget-object v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNeedShowList \u603b\u5171\u8fd4\u56de\u7684campaign\u6709\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/w;->a(Ljava/util/List;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v2

    const/16 v3, 0x63

    if-eq v2, v3, :cond_4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_1
    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/mbridge/msdk/out/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    :goto_2
    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setRtinsType(I)V

    :cond_2
    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/same/c;->b(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->x:I

    invoke-static {p1, v4, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    const-string v2, "APP ALREADY INSTALLED"

    iput-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->m:Ljava/lang/String;

    :goto_3
    iget-object v5, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNeedShowList \u8fd4\u56de\u6709\u4ee5\u4e0b\u5e26\u6709\u89c6\u9891\u7d20\u6750\u7684campaign\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    sget-object p2, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    return-object v0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/mbridge/msdk/mbbanner/common/manager/b$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/mbbanner/common/manager/b$c;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/b;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    invoke-static {p1, p2, p3, v6}, Lcom/mbridge/msdk/foundation/same/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/b;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->l:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string v1, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->g:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->l:Z

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->d:Lcom/mbridge/msdk/mbbanner/common/util/a;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    invoke-virtual {v0, v1, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->f:Lcom/mbridge/msdk/mbbanner/common/listener/d;

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/mbbanner/common/listener/d;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/mbridge/msdk/mbbanner/common/manager/b$a;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/b;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->h:Ljava/util/Timer;

    int-to-long p2, p2

    invoke-virtual {p1, v0, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string v1, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "downloadResource--> Fail"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->g:Z

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6d9b

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    new-instance v1, Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-direct {v1}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/out/MBridgeIds;->setUnitId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->c:Lcom/mbridge/msdk/mbbanner/common/data/b;

    invoke-virtual {v1}, Lcom/mbridge/msdk/mbbanner/common/data/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->d:Lcom/mbridge/msdk/mbbanner/common/util/a;

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    invoke-virtual {p2, v1, v0}, Lcom/mbridge/msdk/mbbanner/common/util/a;->b(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->f:Lcom/mbridge/msdk/mbbanner/common/listener/d;

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/mbbanner/common/listener/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 4

    const v0, 0xd6d83

    if-nez p3, :cond_0

    new-instance p3, Lcom/mbridge/msdk/foundation/error/b;

    invoke-direct {p3, v0}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-direct {v0}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/out/MBridgeIds;->setUnitId(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    invoke-virtual {p3, p2}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->d:Lcom/mbridge/msdk/mbbanner/common/util/a;

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    invoke-virtual {p2, v0, p3}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->f:Lcom/mbridge/msdk/mbbanner/common/listener/d;

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/mbbanner/common/listener/d;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    sget-object p2, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string v0, "\u5728\u5b50\u7ebf\u7a0b\u5904\u7406\u4e1a\u52a1\u903b\u8f91 \u5f00\u59cb"

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const v0, 0xea60

    invoke-direct {p0, p1, v0, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/b;->getSessionId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p3, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p3, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setHasMBTplMark(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p3, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v3, "<MBTPLMARK>"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setHasMBTplMark(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->k:Z

    iput-boolean v3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->j:Z

    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void

    :cond_5
    :goto_2
    sget-object v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string v3, "tryDownloadOnLoadSuccess \u8fd4\u56de\u7684campaign \u6ca1\u6709\u7b26\u5408\u4e0b\u8f7d\u89c4\u5219\u7684"

    invoke-static {v1, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->m:Ljava/lang/String;

    const-string v3, "INSTALLED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6d95

    const-string v3, "APP ALREADY INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/mbridge/msdk/foundation/error/b;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v1, Lcom/mbridge/msdk/foundation/error/b;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    move-object v0, v1

    :goto_3
    new-instance v1, Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-direct {v1}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>()V

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/out/MBridgeIds;->setUnitId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/error/b;->b(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz p2, :cond_7

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_7
    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->d:Lcom/mbridge/msdk/mbbanner/common/util/a;

    iget-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    invoke-virtual {p2, p3, v0}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->f:Lcom/mbridge/msdk/mbbanner/common/listener/d;

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/mbbanner/common/listener/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->b:I

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr v0, p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->c:Lcom/mbridge/msdk/mbbanner/common/data/b;

    invoke-virtual {p2}, Lcom/mbridge/msdk/mbbanner/common/data/b;->b()I

    move-result p2

    if-le v0, p2, :cond_1

    sget-object p2, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string v0, "saveNextOffset \u91cd\u7f6eoffset\u4e3a0"

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    sget-object p2, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNextOffset \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/y0;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->c:Lcom/mbridge/msdk/mbbanner/common/data/b;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/mbbanner/common/data/b;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->g:Z

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/manager/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbbanner/common/manager/b;)Lcom/mbridge/msdk/mbbanner/common/listener/b;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->c:Lcom/mbridge/msdk/mbbanner/common/data/b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbbanner/common/data/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->c:Lcom/mbridge/msdk/mbbanner/common/data/b;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbbanner/common/data/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x3

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->i:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;

    invoke-direct {v1, p0, p1, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/b$e;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/b;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->e(I)V

    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "resource_type"

    invoke-virtual {v2, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "m_download_start"

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/mbbanner/common/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/mbbanner/common/manager/b;)Lcom/mbridge/msdk/mbbanner/common/util/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->d:Lcom/mbridge/msdk/mbbanner/common/util/a;

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/mbbanner/common/manager/b;)Lcom/mbridge/msdk/mbbanner/common/listener/d;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->f:Lcom/mbridge/msdk/mbbanner/common/listener/d;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/mbbanner/common/manager/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    if-nez p4, :cond_1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " unitId ="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> time out!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->h:Ljava/util/Timer;

    invoke-virtual {p2}, Ljava/util/Timer;->cancel()V

    invoke-direct {p0, p1, p5}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void

    :cond_1
    const/4 p4, 0x1

    if-ne p2, p4, :cond_3

    sget-object p4, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string p5, "downloadResource--> Success Image"

    invoke-static {p4, p5}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object p4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->i:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->i:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    sget-object p3, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string p5, "downloadResource--> Success banner_html"

    invoke-static {p3, p5}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->k:Z

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_5

    sget-object p3, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string p5, "downloadResource--> Success banner_url"

    invoke-static {p3, p5}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->j:Z

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/mbbanner/common/data/a;Lcom/mbridge/msdk/mbbanner/common/listener/d;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    const-string v3, "requestCampaign--> started"

    invoke-static {v0, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->f:Lcom/mbridge/msdk/mbbanner/common/listener/d;

    new-instance v13, Lcom/mbridge/msdk/mbbanner/common/manager/b$b;

    move-object/from16 v0, p3

    invoke-direct {v13, v1, v0}, Lcom/mbridge/msdk/mbbanner/common/manager/b$b;-><init>(Lcom/mbridge/msdk/mbbanner/common/manager/b;Lcom/mbridge/msdk/mbbanner/common/data/a;)V

    invoke-virtual {v13, v9}, Lcom/mbridge/msdk/foundation/same/net/c;->setUnitId(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Lcom/mbridge/msdk/foundation/same/net/c;->setPlacementId(Ljava/lang/String;)V

    const/16 v3, 0x128

    invoke-virtual {v13, v3}, Lcom/mbridge/msdk/foundation/same/net/c;->setAdType(I)V

    new-instance v10, Lcom/mbridge/msdk/mbbanner/common/request/a;

    iget-object v3, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a:Landroid/content/Context;

    invoke-direct {v10, v3}, Lcom/mbridge/msdk/mbbanner/common/request/a;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v9}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->b:I

    iget-object v4, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->b()Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->b:I

    const/4 v3, 0x0

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lcom/mbridge/msdk/mbbanner/common/data/c;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/mbridge/msdk/mbbanner/common/data/a;)Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "j"

    invoke-virtual {v12, v4, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/mbridge/msdk/mbbanner/common/data/a;->a()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v13, v14}, Lcom/mbridge/msdk/mbbanner/common/response/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v3, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->d:Lcom/mbridge/msdk/mbbanner/common/util/a;

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Z)V

    const/4 v11, 0x1

    const-wide/16 v15, 0x7530

    invoke-virtual/range {v10 .. v16}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->choiceV3OrV5BySetting(ILcom/mbridge/msdk/foundation/same/net/wrapper/e;Lcom/mbridge/msdk/foundation/same/net/b;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-object v3, Lcom/mbridge/msdk/mbbanner/common/manager/b;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v3, 0xd6d82

    invoke-direct {v0, v3}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    new-instance v3, Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-direct {v3, v2, v9}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/error/b;->a(Lcom/mbridge/msdk/out/MBridgeIds;)V

    iget-object v2, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->d:Lcom/mbridge/msdk/mbbanner/common/util/a;

    iget-object v3, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e:Lcom/mbridge/msdk/mbbanner/common/listener/b;

    invoke-virtual {v2, v3, v0}, Lcom/mbridge/msdk/mbbanner/common/util/a;->a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object v0, v1, Lcom/mbridge/msdk/mbbanner/common/manager/b;->f:Lcom/mbridge/msdk/mbbanner/common/listener/d;

    invoke-interface {v0, v9}, Lcom/mbridge/msdk/mbbanner/common/listener/d;->a(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
