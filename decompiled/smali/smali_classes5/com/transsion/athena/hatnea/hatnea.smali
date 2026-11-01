.class public Lcom/transsion/athena/hatnea/hatnea;
.super Lcom/transsion/athena/hatnea/enatha;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/athena/hatnea/hatnea$athena;
    }
.end annotation


# instance fields
.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Ljava/util/List;ZLandroid/util/SparseArray;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/util/SparseArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;Z",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/transsion/athena/hatnea/enatha;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/athena/hatnea/hatnea;->g:Z

    iput-object p2, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/athena/hatnea/hatnea;->e:Ljava/util/List;

    iput-boolean p4, p0, Lcom/transsion/athena/hatnea/hatnea;->c:Z

    iput-object p5, p0, Lcom/transsion/athena/hatnea/hatnea;->f:Landroid/util/SparseArray;

    return-void
.end method

.method private a(JLjava/lang/String;)Landroid/util/Pair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/16 v2, 0x7d0

    const/4 v3, 0x1

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, v1, Lcom/transsion/athena/hatnea/hatnea;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/athena/data/AppIdData;

    iget-object v9, v8, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    iget-object v10, v1, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v9

    iget v10, v8, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v9, v10}, Lcom/transsion/athena/aethna/athena;->b(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object v9

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v7

    move v7, v0

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-wide/from16 v13, p1

    invoke-virtual {v11, v13, v14}, Lcom/transsion/athena/config/data/model/TidConfigBean;->allowUpload(J)Z

    move-result v0

    if-nez v0, :cond_5

    move v11, v7

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_5
    iget-boolean v0, v1, Lcom/transsion/athena/hatnea/hatnea;->c:Z

    if-eqz v0, :cond_6

    :try_start_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v20, v7

    :try_start_1
    invoke-virtual {v11}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v6

    new-instance v12, Lcom/transsion/athena/hatnea/d;

    invoke-direct {v12}, Lcom/transsion/athena/hatnea/d;-><init>()V

    invoke-virtual {v0, v6, v7, v12}, Lcom/transsion/athena/data/anateh/aethna;->a(JLcom/transsion/athena/data/anateh/aethna$athena;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v20, v7

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v7, v12

    const-string v6, "Upload 1.x events exception : %s"

    invoke-static {v6, v7}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "checkUploadFile"

    invoke-static {v6, v0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    move/from16 v20, v7

    :goto_4
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v12

    invoke-virtual {v11}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v6

    const v0, 0xe1000

    sub-int v18, v0, v10

    move/from16 v11, v20

    rsub-int v15, v11, 0x7d0

    move-wide v13, v6

    move v6, v15

    move-wide/from16 v15, p1

    move-object/from16 v17, p3

    move/from16 v19, v6

    invoke-virtual/range {v12 .. v19}, Lcom/transsion/athena/data/anateh/aethna;->a(JJLjava/lang/String;II)Lcom/transsion/athena/data/anehat;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_7
    iget-object v7, v8, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v6, Lcom/transsion/athena/data/anehat;->f:I

    add-int/2addr v7, v11

    iget v6, v6, Lcom/transsion/athena/data/anehat;->g:I

    add-int/2addr v10, v6

    if-ge v7, v2, :cond_8

    if-lt v10, v0, :cond_3

    :cond_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v2, v5, v3

    const-string v0, "Packet size out of limit, packetSize [%d], eventCount [%d]"

    invoke-static {v0, v5}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :goto_5
    move v7, v11

    goto/16 :goto_2

    :cond_9
    move v11, v7

    const/4 v6, 0x0

    move v7, v10

    move v0, v11

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    iget v9, v8, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v9, v10, v6

    const-string v9, "Appid [%d] checkUpload tid config is null."

    invoke-static {v9, v10}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    iget-object v9, v8, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-static {v9}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v9

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_b
    const/4 v6, 0x0

    :goto_7
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    const/16 v5, 0x8

    if-ge v6, v5, :cond_c

    const/16 v5, 0x24

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const-string v7, "0123456789abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v6, v3

    goto :goto_8

    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    move-object/from16 v0, p3

    :goto_9
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static synthetic a(Landroid/util/SparseArray;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/athena/data/enatha;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget v3, v1, Lcom/transsion/athena/data/enatha;->a:I

    const-string v4, "appid"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v1, Lcom/transsion/athena/data/enatha;->b:Ljava/lang/String;

    const-string v4, "date"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v1, Lcom/transsion/athena/data/enatha;->c:I

    const-string v4, "count"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, v1, Lcom/transsion/athena/data/enatha;->d:I

    const-string v3, "packet"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lyi/a;

    const/16 v3, 0x270f

    const-string v4, "day_up_record"

    invoke-direct {v1, v4, v3}, Lyi/a;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object v1

    invoke-virtual {v1}, Lyi/a;->b()V

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lyi/a;

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lyi/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object v1

    invoke-virtual {v1}, Lyi/a;->b()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    rem-int/lit8 p3, p3, 0x1e

    const v1, 0xea60

    mul-int/2addr p3, v1

    goto :goto_1

    :cond_1
    const p3, 0x1b7740

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/transsion/athena/config/data/model/athena;->d(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long p2, p3

    add-long/2addr v1, p2

    invoke-virtual {p1, v1, v2}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/config/data/model/athena;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const-string p2, "Handle pull config exception after upload : %s"

    invoke-static {p2, p3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "handlePullConfig"

    invoke-static {p2, p1}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private a(Lcom/transsion/athena/hatnea/aatnhe;Ljava/util/List;JI)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/athena/hatnea/aatnhe;",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;JI)V"
        }
    .end annotation

    move-object v1, p0

    move-object v2, p1

    const/4 v3, 0x0

    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v8

    new-instance v13, Lcom/transsion/athena/hatnea/e;

    invoke-direct {v13}, Lcom/transsion/athena/hatnea/e;-><init>()V

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-virtual/range {v8 .. v13}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;JLjava/lang/String;Lcom/transsion/athena/data/anateh/enatha;)V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/anehat;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lk4/a;->a(Landroid/content/Context;)Lk4/a;

    move-result-object v0

    const-string v4, "first_launch"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Lk4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "requestId"

    move/from16 v6, p5

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "code"

    :try_start_1
    iget v6, v2, Lcom/transsion/athena/hatnea/aatnhe;->a:I

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "message"

    :try_start_2
    iget-object v6, v2, Lcom/transsion/athena/hatnea/aatnhe;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "app"

    :try_start_3
    iget-object v6, v2, Lcom/transsion/athena/hatnea/aatnhe;->c:Ljava/util/List;

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/athena/data/AppIdData;

    iget-object v8, v8, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/athena/data/anehat;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v11, "tid"

    :try_start_4
    iget-wide v12, v9, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v10, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v11, "event"

    :try_start_5
    iget-object v12, v9, Lcom/transsion/athena/data/anehat;->b:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v11, "count"

    :try_start_6
    iget v9, v9, Lcom/transsion/athena/data/anehat;->f:I

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    const-string v6, "events"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v4, "<-- upload success:%s"

    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v6}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v0, "exception when print upload events success: "

    invoke-static {v0, v4}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-boolean v0, v1, Lcom/transsion/athena/hatnea/hatnea;->g:Z

    if-eqz v0, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    iget v4, v4, Lcom/transsion/athena/data/AppIdData;->a:I

    iget-object v6, v1, Lcom/transsion/athena/hatnea/hatnea;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_3

    iget-object v6, v1, Lcom/transsion/athena/hatnea/hatnea;->f:Landroid/util/SparseArray;

    const-string v8, ""

    invoke-virtual {v6, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "first_page_enter_"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lk4/a;->a(Landroid/content/Context;)Lk4/a;

    move-result-object v6

    invoke-virtual {v6, v4, v8}, Lk4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    iget-object v4, v4, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/athena/data/anehat;

    iget-boolean v8, v6, Lcom/transsion/athena/data/anehat;->h:Z

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v8

    iget-wide v9, v6, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v8, v9, v10}, Lcom/transsion/athena/aethna/athena;->b(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v8

    move-wide/from16 v9, p3

    invoke-virtual {v8, v9, v10}, Lcom/transsion/athena/config/data/model/aatnhe;->c(J)V

    invoke-virtual {v6}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/transsion/athena/config/data/model/aatnhe;->a(I)V

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p3

    goto :goto_5

    :cond_6
    move-wide/from16 v9, p3

    goto :goto_4

    :cond_7
    iget-object v0, v2, Lcom/transsion/athena/hatnea/aatnhe;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/hatnea/aatnhe$athena;

    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v4

    iget v6, v0, Lcom/transsion/athena/hatnea/aatnhe$athena;->a:I

    invoke-virtual {v4, v6}, Lcom/transsion/athena/aethna/athena;->b(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/aatnhe$athena;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget v6, v0, Lcom/transsion/athena/hatnea/aatnhe$athena;->b:I

    if-ne v6, v5, :cond_9

    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/aatnhe$athena;->a()Ljava/lang/String;

    move-result-object v0

    :try_start_8
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/transsion/athena/data/anateh/aethna;->a(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v0}, Lcom/transsion/athena/config/data/model/athena;->d(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    const-wide/16 v8, -0x1

    invoke-virtual {v4, v8, v9}, Lcom/transsion/athena/config/data/model/athena;->b(J)V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/transsion/athena/data/anateh/aethna;->a(Lcom/transsion/athena/config/data/model/athena;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const-string v4, "Handle cleanup data exception : %s"

    invoke-static {v4, v6}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "handleCleanupData"

    invoke-static {v4, v0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_9
    if-ne v6, v7, :cond_a

    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/aatnhe$athena;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0, v5}, Lcom/transsion/athena/hatnea/hatnea;->a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_a
    const/4 v8, 0x3

    if-ne v6, v8, :cond_8

    invoke-virtual {v0}, Lcom/transsion/athena/hatnea/aatnhe$athena;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0, v3}, Lcom/transsion/athena/hatnea/hatnea;->a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_b
    return-void
.end method

.method private static synthetic a(Lcom/transsion/athena/hatnea/anateh;)V
    .locals 1

    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/athena/hatnea/athena;->a(Lcom/transsion/athena/hatnea/anateh;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;JJI)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/data/AppIdData;",
            ">;",
            "Ljava/lang/String;",
            "JJI)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "requestId"

    const-string v6, "opid"

    const-string v7, "app_active"

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    :goto_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aatnhe;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "network unavailable"

    aput-object v2, v0, v3

    const-string v2, "tryUploadEvents interrupted : %s"

    invoke-static {v2, v0}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_24

    :cond_0
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/anehat;->b(Landroid/content/Context;)Z

    move-result v13

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v3

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, "events"

    const/16 v18, -0x1

    const-string v2, "net"

    const-string v4, "Assemble events packet exception : %s"

    move-wide/from16 p3, v10

    const-string v10, "tid"

    const-string v11, "event"

    move-wide/from16 p5, v8

    const-string v8, ""

    if-eqz v0, :cond_1d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/transsion/athena/data/AppIdData;

    move-object/from16 v19, v5

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, v9, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    const/16 v21, 0x0

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    move/from16 p7, v12

    const-string v12, "eparam"

    if-eqz v0, :cond_15

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v6

    move-object v6, v0

    check-cast v6, Lcom/transsion/athena/data/anehat;

    iget-object v0, v6, Lcom/transsion/athena/data/anehat;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/athena/data/anehat$athena;

    move-object/from16 v24, v14

    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    :try_start_1
    iget-wide v8, v6, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v14, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v9, :cond_1

    move-object/from16 v9, v25

    :cond_1
    invoke-virtual {v8, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v9, "ts"

    move-object/from16 v27, v15

    :try_start_2
    iget-wide v14, v0, Lcom/transsion/athena/data/anehat$athena;->b:J

    invoke-virtual {v8, v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    iget v9, v0, Lcom/transsion/athena/data/anehat$athena;->d:I

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    iget-object v9, v0, Lcom/transsion/athena/data/anehat$athena;->c:Ljava/lang/String;

    if-nez v9, :cond_2

    move-object/from16 v9, v25

    :cond_2
    iget-object v14, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v14, :cond_3

    move-object/from16 v14, v25

    :cond_3
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v15, "app_heartbeat"

    move-object/from16 v28, v2

    const-string v2, "app_launch"

    move-object/from16 v29, v3

    const-string v3, "page_enter"

    if-nez v14, :cond_8

    :try_start_3
    iget-object v14, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v14, :cond_4

    move-object/from16 v14, v25

    :cond_4
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v14, :cond_5

    move-object/from16 v14, v25

    :cond_5
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v14, :cond_6

    move-object/from16 v14, v25

    :cond_6
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v8, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v31, v11

    move/from16 v30, v13

    goto/16 :goto_9

    :catch_0
    move-exception v0

    :goto_4
    move-object/from16 v31, v11

    move/from16 v30, v13

    goto/16 :goto_c

    :cond_8
    :goto_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    goto :goto_6

    :cond_9
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v9, v14

    :goto_6
    iget-object v0, v0, Lcom/transsion/athena/data/anehat$athena;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    move-object/from16 v0, v25

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v30, v13

    const v13, -0x6b598fa2

    move-object/from16 v31, v11

    const/4 v11, 0x3

    if-eq v14, v13, :cond_e

    const v13, 0x2ce78ae4

    if-eq v14, v13, :cond_d

    const v13, 0x3f912f91

    if-eq v14, v13, :cond_c

    const v2, 0x605d6528

    if-eq v14, v2, :cond_b

    goto :goto_7

    :cond_b
    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_c

    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    goto :goto_8

    :cond_d
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_8

    :cond_e
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v11

    goto :goto_8

    :cond_f
    :goto_7
    move/from16 v0, v18

    :goto_8
    if-eqz v0, :cond_13

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    if-eq v0, v11, :cond_10

    goto :goto_9

    :cond_10
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v8, v9, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_9

    :cond_11
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v8, v9, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_9

    :cond_12
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->l()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v8, v9, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_9

    :cond_13
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v8, v9, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_9
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_a
    move-object/from16 v14, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v15, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move/from16 v13, v30

    move-object/from16 v11, v31

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    :goto_b
    move-object/from16 v31, v11

    move/from16 v30, v13

    move-object/from16 v27, v15

    goto :goto_c

    :catch_4
    move-exception v0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto :goto_b

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_14
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v31, v11

    move/from16 v30, v13

    move-object/from16 v24, v14

    move-object/from16 v27, v15

    iget v0, v6, Lcom/transsion/athena/data/anehat;->f:I

    add-int v21, v21, v0

    move/from16 v12, p7

    move-object/from16 v6, v22

    goto/16 :goto_2

    :cond_15
    move-object/from16 v29, v3

    move-object/from16 v22, v6

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v31, v11

    move/from16 v30, v13

    move-object/from16 v24, v14

    move-object/from16 v27, v15

    iget-object v0, v1, Lcom/transsion/athena/hatnea/hatnea;->f:Landroid/util/SparseArray;

    move-object/from16 v2, v26

    iget v3, v2, Lcom/transsion/athena/data/AppIdData;->a:I

    move-object/from16 v6, v25

    invoke-virtual {v0, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v8, "appid"

    if-nez v3, :cond_1a

    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto/16 :goto_11

    :cond_16
    move-object v0, v6

    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_17

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_e

    :cond_17
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    :goto_e
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->l()Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v1, v3, v0, v9}, Lcom/transsion/athena/hatnea/hatnea;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x270f

    cmp-long v0, v11, v13

    if-gez v0, :cond_19

    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    iget v9, v2, Lcom/transsion/athena/data/AppIdData;->a:I

    move-object/from16 v11, v31

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Lcom/transsion/athena/aethna/athena;->a(ILjava/lang/String;)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v11

    invoke-virtual {v3, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_f
    const/4 v3, 0x1

    goto :goto_10

    :cond_18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v9, v2, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v3, "invalid or not registered:%s"

    :try_start_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v10, v9

    invoke-static {v3, v10}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_12

    :cond_19
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_f

    :goto_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const-string v0, "Insert FPE event exception : %s"

    invoke-static {v0, v9}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_12
    iput-boolean v3, v1, Lcom/transsion/athena/hatnea/hatnea;->g:Z

    :cond_1a
    move/from16 v3, v21

    :try_start_7
    iget-object v0, v2, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_13

    :catch_6
    move-exception v0

    move-object/from16 v5, v27

    move/from16 v8, v30

    goto/16 :goto_14

    :cond_1b
    new-instance v0, Lorg/json/JSONObject;

    iget-object v9, v2, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_13
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    iget v10, v2, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-virtual {v9, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const-string v9, "hostid"

    :try_start_8
    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    const-string v9, "pkg"

    :try_start_9
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/athena/taaneh/athena;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    const-string v9, "vn"

    :try_start_a
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/athena/taaneh/athena;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    const-string v9, "vc"

    :try_start_b
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/athena/taaneh/athena;->i(Landroid/content/Context;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    const-string v9, "sdkv"

    const-string v10, "3.1.1.4"

    :try_start_c
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    const-string v9, "ins"

    :try_start_d
    const-string v10, "installer"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    move-object v0, v6

    :cond_1c
    invoke-virtual {v8, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "isfl"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    move/from16 v8, v30

    :try_start_e
    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v6, "cnt"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v9, v29

    invoke-virtual {v0, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-object/from16 v5, v27

    :try_start_f
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move/from16 v13, v17

    const/4 v12, 0x0

    goto :goto_15

    :catch_7
    move-exception v0

    goto :goto_14

    :catch_8
    move-exception v0

    move-object/from16 v5, v27

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v9, v12

    invoke-static {v4, v9}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v13, v17

    :goto_15
    add-int v17, v13, v3

    iget v0, v2, Lcom/transsion/athena/data/AppIdData;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v2, v24

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, p3

    move-object v14, v2

    move-object v15, v5

    move v13, v8

    move v3, v12

    move-object/from16 v5, v19

    move-object/from16 v6, v22

    const/4 v4, 0x1

    move-wide/from16 v8, p5

    move/from16 v12, p7

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v28, v2

    move-object v9, v3

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-object v6, v8

    move/from16 p7, v12

    move-object v2, v14

    move-object v5, v15

    move/from16 v13, v17

    const/4 v12, 0x0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :try_start_10
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    const-string v8, "channel"

    :try_start_11
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->g()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1e

    move-object v12, v6

    :cond_1e
    invoke-virtual {v3, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v8
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    move-object/from16 v12, v22

    :try_start_12
    invoke-static {v8, v12}, Lcom/transsion/athena/taaneh/anehat;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1f

    move-object v8, v6

    :cond_1f
    invoke-virtual {v3, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_b

    const-string v8, "tsid"

    :try_start_13
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v14

    const-string v15, "oneid"

    invoke-static {v14, v15}, Lcom/transsion/athena/taaneh/anehat;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_20

    move-object v14, v6

    :cond_20
    invoke-virtual {v3, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    const-string v8, "vaid"

    :try_start_14
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    invoke-static {}, Lcom/transsion/athena/taaneh/ehatna;->a()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_21

    move-object v14, v6

    :cond_21
    invoke-virtual {v3, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->h()Lorg/json/JSONObject;

    move-result-object v8
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    const-string v14, "ossv"

    :try_start_15
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/transsion/athena/taaneh/hatnea;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->length()I

    move-result v14

    if-lez v14, :cond_23

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    array-length v14, v14
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    const/16 v15, 0x7d0

    move-object/from16 v25, v6

    const-string v6, "cparam"

    if-le v14, v15, :cond_22

    :try_start_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    const-string v15, "custom param is too long, limit is 2000 bytes(now is %d bytes)"

    :try_start_17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    move-object/from16 v16, v7

    move-object/from16 v22, v12

    const/4 v7, 0x1

    :try_start_18
    new-array v12, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v14, v12, v17

    invoke-static {v8, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    const-string v12, "%s"

    :try_start_19
    new-array v14, v7, [Ljava/lang/Object;

    aput-object v8, v14, v17

    invoke-static {v12, v14}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "errorMsg"

    invoke-virtual {v7, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    :catch_9
    move-exception v0

    :goto_16
    move/from16 v6, p7

    goto/16 :goto_1a

    :catch_a
    move-exception v0

    :goto_17
    move-object/from16 v16, v7

    move-object/from16 v22, v12

    goto :goto_16

    :cond_22
    move-object/from16 v16, v7

    move-object/from16 v22, v12

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    :catch_b
    move-exception v0

    move-object/from16 v25, v6

    goto :goto_17

    :cond_23
    move-object/from16 v25, v6

    move-object/from16 v16, v7

    move-object/from16 v22, v12

    :goto_18
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    const-string v7, "actype"

    :try_start_1a
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->c()S

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    const-string v7, "aver"

    :try_start_1b
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v8, :cond_24

    move-object/from16 v8, v25

    :cond_24
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "appids"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_9

    const-string v6, "brand"

    :try_start_1c
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v7, :cond_25

    move-object/from16 v7, v25

    :cond_25
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    const-string v6, "build"

    :try_start_1d
    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-nez v7, :cond_26

    move-object/from16 v7, v25

    :cond_26
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9

    const-string v6, "ekey"

    :try_start_1e
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    const-string v5, "gaid"

    :try_start_1f
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/athena/taaneh/anehat;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_27

    move-object/from16 v6, v25

    :cond_27
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9

    const-string v5, "lang"

    :try_start_20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_28

    move-object/from16 v6, v25

    :cond_28
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9

    const-string v5, "mcc"

    :try_start_21
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/athena/taaneh/athena;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_29

    move-object/from16 v6, v25

    :cond_29
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9

    const-string v5, "mnc"

    :try_start_22
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/athena/taaneh/athena;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2a

    move-object/from16 v6, v25

    :cond_2a
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9

    const-string v5, "model"

    :try_start_23
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v6, :cond_2b

    move-object/from16 v6, v25

    :cond_2b
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/transsion/athena/taaneh/aatnhe;->b(Landroid/content/Context;)I

    move-result v5

    move-object/from16 v6, v28

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9

    const-string v5, "osver"

    :try_start_24
    invoke-static {}, Lcom/transsion/athena/taaneh/hatnea;->a()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2c

    move-object/from16 v6, v25

    :cond_2c
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_9

    const-string v5, "tuid"

    :try_start_25
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->b()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2d

    move-object/from16 v6, v25

    :cond_2d
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "try"
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_9

    move/from16 v6, p7

    :try_start_26
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_c

    const-string v5, "tz"

    :try_start_27
    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->b()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2e

    move-object/from16 v7, v25

    :cond_2e
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_c

    const-string v5, "uts"

    :try_start_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->T()Z

    move-result v5
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_c

    if-eqz v5, :cond_30

    const-string v5, "iid"

    if-nez v0, :cond_2f

    move-object/from16 v0, v25

    :cond_2f
    :try_start_29
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_19

    :catch_c
    move-exception v0

    goto :goto_1a

    :cond_30
    :goto_19
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v13, v2, v6}, Lcom/transsion/athena/hatnea/hatnea$athena;->a([BILjava/util/List;I)Lcom/transsion/athena/hatnea/hatnea$athena;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_c

    const/4 v2, 0x0

    goto :goto_1b

    :catch_d
    move-exception v0

    move-object/from16 v25, v6

    move-object/from16 v16, v7

    goto/16 :goto_16

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1b
    iget-object v3, v1, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/athena/hatnea/hatnea$athena;->a:[B

    iget v5, v0, Lcom/transsion/athena/hatnea/hatnea$athena;->b:I

    iget-object v0, v0, Lcom/transsion/athena/hatnea/hatnea$athena;->c:Ljava/util/List;

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-static {}, Lcom/transsion/athena/taaneh/anehat;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_1c

    :cond_31
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    :goto_1c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_32

    invoke-static {v7}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    :cond_32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v8, v14, v2

    const/4 v2, 0x1

    aput-object v12, v14, v2

    const-string v2, "%s_%d"

    invoke-static {v7, v2, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move/from16 v28, v5

    move-object/from16 v29, v0

    move-object/from16 v30, p2

    invoke-static/range {v26 .. v31}, Lcom/transsion/athena/hatnea/ehatna;->a(Ljava/lang/String;[BILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/hatnea/ehatna;

    move-result-object v2

    :try_start_2a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_11

    const-string v3, "host"

    :try_start_2b
    iget-object v4, v1, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_11

    move-object/from16 v4, v19

    :try_start_2c
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "packetId"
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_10

    move-object/from16 v5, p2

    :try_start_2d
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_33
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/athena/data/AppIdData;

    iget-object v8, v8, Lcom/transsion/athena/data/AppIdData;->e:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_33

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/athena/data/anehat;

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    iget-wide v14, v12, Lcom/transsion/athena/data/anehat;->a:J

    invoke-virtual {v13, v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v14, v12, Lcom/transsion/athena/data/anehat;->b:Ljava/lang/String;

    invoke-virtual {v13, v11, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_e

    const-string v14, "count"

    :try_start_2e
    iget v12, v12, Lcom/transsion/athena/data/anehat;->f:I

    invoke-virtual {v13, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1d

    :catch_e
    move-exception v0

    :goto_1e
    const/4 v8, 0x2

    goto :goto_20

    :cond_34
    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_e

    const-string v3, "%s:%s"

    if-lez v6, :cond_35

    :try_start_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_e

    const-string v8, "--> retry [%d] times upload"

    :try_start_30
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v9, v11, v10

    invoke-static {v7, v8, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_e

    goto :goto_1f

    :cond_35
    const-string v7, "--> upload"

    :goto_1f
    :try_start_31
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_e

    const/4 v8, 0x2

    :try_start_32
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v0, v9, v7

    invoke-static {v3, v9}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_f

    goto :goto_21

    :catch_f
    move-exception v0

    goto :goto_20

    :catch_10
    move-exception v0

    move-object/from16 v5, p2

    goto :goto_1e

    :catch_11
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v4, v19

    goto :goto_1e

    :goto_20
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v7, v3

    const-string v0, "exception when print upload events : "

    invoke-static {v0, v7}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_21
    iget-object v9, v2, Lcom/transsion/athena/hatnea/ehatna;->a:Ljava/lang/String;

    iget-object v10, v2, Lcom/transsion/athena/hatnea/ehatna;->b:[B

    iget v11, v2, Lcom/transsion/athena/hatnea/ehatna;->c:I

    iget-object v12, v2, Lcom/transsion/athena/hatnea/ehatna;->d:Ljava/util/List;

    iget-object v13, v2, Lcom/transsion/athena/hatnea/ehatna;->e:Ljava/lang/String;

    iget-object v14, v2, Lcom/transsion/athena/hatnea/ehatna;->f:Ljava/lang/String;

    invoke-static/range {v9 .. v14}, Lcom/transsion/athena/hatnea/anehat;->a(Ljava/lang/String;[BILjava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/hatnea/ehanat;

    move-result-object v0

    iget v3, v0, Lcom/transsion/athena/hatnea/ehanat;->a:I

    if-nez v3, :cond_36

    iget-object v0, v0, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/aatnhe;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move-object/from16 p2, p0

    move-object/from16 p3, v0

    move-object/from16 p4, p1

    move/from16 p7, v2

    invoke-direct/range {p2 .. p7}, Lcom/transsion/athena/hatnea/hatnea;->a(Lcom/transsion/athena/hatnea/aatnhe;Ljava/util/List;JI)V

    iget-object v0, v1, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const/16 v2, 0x12a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, v1, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_24

    :cond_36
    :try_start_33
    iget-object v0, v0, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/athena/hatnea/aatnhe;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_12

    const-string v2, "code"

    :try_start_34
    iget v7, v0, Lcom/transsion/athena/hatnea/aatnhe;->a:I

    if-nez v7, :cond_37

    move/from16 v7, v18

    :cond_37
    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_12

    const-string v2, "message"

    :try_start_35
    iget-object v7, v0, Lcom/transsion/athena/hatnea/aatnhe;->b:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    move-object/from16 v7, v25

    goto :goto_22

    :cond_38
    iget-object v7, v0, Lcom/transsion/athena/hatnea/aatnhe;->b:Ljava/lang/String;

    :goto_22
    invoke-virtual {v3, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_12

    const-string v2, "ex"

    :try_start_36
    iget-object v0, v0, Lcom/transsion/athena/hatnea/aatnhe;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_12

    const-string v0, "<-- upload failed:%s"

    :try_start_37
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v7, v3

    invoke-static {v0, v7}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_12

    const/4 v2, 0x1

    goto :goto_23

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const-string v0, "exception when print upload events success: "

    invoke-static {v0, v3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_23
    add-int/lit8 v12, v6, 0x1

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v12}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;I)V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_24

    :cond_39
    :try_start_38
    invoke-static/range {p3 .. p4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_38} :catch_13

    const-wide/16 v6, 0x2

    move-wide/from16 v9, p3

    mul-long v10, v9, v6

    const-wide/16 v6, 0x3e8

    add-long/2addr v10, v6

    const-wide/32 v6, 0x1b7740

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v0, v6, v7, v13, v14}, Lcom/transsion/athena/ehatna/aethna;->a(JJ)J

    move-result-wide v6

    move-object v5, v4

    move-wide v8, v6

    move-object/from16 v7, v16

    move-object/from16 v6, v22

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :catch_13
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Retry upload interrupted!! : %s"

    invoke-static {v0, v2}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    :goto_24
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "_ext"

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    :try_start_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    array-length p3, p3

    const/16 v4, 0x7d0

    if-le p3, v4, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "custom param is too long,limit is 2000 bytes(now is %d bytes)"

    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p3, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "errorMsg"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    const-string p3, "eparam"

    :try_start_2
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "Insert common params exception : %s"

    invoke-static {p1, p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static synthetic d(Lcom/transsion/athena/hatnea/anateh;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/hatnea/hatnea;->a(Lcom/transsion/athena/hatnea/anateh;)V

    return-void
.end method

.method public static synthetic e(Landroid/util/SparseArray;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/athena/hatnea/hatnea;->a(Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    invoke-static {}, Lcom/transsion/athena/ehatna/aethna;->b()Lcom/transsion/athena/ehatna/aethna;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/athena/ehatna/aethna;->a(JJ)J

    move-result-wide v8

    iget-object v0, p0, Lcom/transsion/athena/hatnea/hatnea;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/athena/data/AppIdData;

    iget-object v5, v4, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, v3, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_3
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    goto :goto_2

    :cond_4
    if-le v2, v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/transsion/athena/hatnea/hatnea;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/athena/data/AppIdData;

    iget-object v4, v3, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v3, Lcom/transsion/athena/data/AppIdData;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/data/anateh/aethna;->a(Landroid/content/Context;)Lcom/transsion/athena/data/anateh/aethna;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/athena/data/anateh/aethna;->a(Ljava/util/List;)V

    :cond_7
    move-object v3, v1

    :goto_2
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->e()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long v10, v4, v6

    if-eqz v3, :cond_8

    iget-object v0, v3, Lcom/transsion/athena/data/AppIdData;->c:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/athena/hatnea/hatnea;->a(JLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget v12, v3, Lcom/transsion/athena/data/AppIdData;->d:I

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/transsion/athena/hatnea/hatnea;->a(Ljava/util/List;Ljava/lang/String;JJI)V

    goto :goto_3

    :cond_8
    invoke-direct {p0, v8, v9, v1}, Lcom/transsion/athena/hatnea/hatnea;->a(JLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v12, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/transsion/athena/hatnea/hatnea;->a(Ljava/util/List;Ljava/lang/String;JJI)V

    :cond_9
    :goto_3
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Default"

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/transsion/athena/hatnea/hatnea;->d:Ljava/lang/String;

    const-string v4, "//"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_1

    aget-object v2, v2, v1

    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "get domain exception : %s"

    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v3
.end method
