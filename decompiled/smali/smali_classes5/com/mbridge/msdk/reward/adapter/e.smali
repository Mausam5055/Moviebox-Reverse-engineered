.class public Lcom/mbridge/msdk/reward/adapter/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/mbridge/msdk/videocommon/setting/c;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/mbridge/msdk/videocommon/setting/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/net/wrapper/e;
    .locals 12

    move-object v0, p0

    move/from16 v1, p9

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    :goto_0
    iget-object v5, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/mbridge/msdk/videocommon/setting/c;->e()I

    move-result v5

    iget-object v6, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v6}, Lcom/mbridge/msdk/videocommon/setting/c;->b()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    move v6, v5

    :goto_1
    iget-object v7, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    const-string v8, "reward"

    invoke-static {v7, v8}, Lcom/mbridge/msdk/foundation/same/buffer/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    if-eqz v8, :cond_2

    const/16 v8, 0x11f

    goto :goto_2

    :cond_2
    const/16 v8, 0x5e

    :goto_2
    new-instance v9, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;

    invoke-direct {v9}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;-><init>()V

    const-string v10, "app_id"

    invoke-static {v9, v10, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    const-string v10, "unit_id"

    invoke-static {v9, v10, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v10, v0, Lcom/mbridge/msdk/reward/adapter/e;->a:Ljava/lang/String;

    invoke-static {v9, v2, v10}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result v2

    const-string v10, ""

    if-eqz v2, :cond_6

    if-nez p6, :cond_4

    move-object v2, v10

    goto :goto_3

    :cond_4
    move-object/from16 v2, p6

    :goto_3
    const-string v11, "ttc_ids"

    invoke-static {v9, v11, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_5

    move-object v2, v10

    goto :goto_4

    :cond_5
    move-object/from16 v2, p5

    :goto_4
    const-string v11, "install_ids"

    invoke-static {v9, v11, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "sign"

    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "req_type"

    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_num"

    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    move v6, v3

    :cond_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "tnum"

    invoke-static {v9, v4, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "only_impression"

    const-string v4, "1"

    invoke-static {v9, v2, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ping_mode"

    invoke-static {v9, v2, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->g:Ljava/lang/String;

    invoke-static {v9, v2, v7}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->h:Ljava/lang/String;

    if-nez p2, :cond_8

    move-object v5, v10

    goto :goto_5

    :cond_8
    move-object v5, p2

    :goto_5
    invoke-static {v9, v2, v5}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_source_id"

    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->i:Ljava/lang/String;

    if-nez p4, :cond_9

    move-object v3, v10

    goto :goto_6

    :cond_9
    move-object/from16 v3, p4

    :goto_6
    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_type"

    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "offset"

    invoke-static {v9, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "token"

    move-object/from16 v3, p7

    invoke-static {v9, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-boolean v2, v0, Lcom/mbridge/msdk/reward/adapter/e;->c:Z

    const-string v3, "0"

    if-eqz v2, :cond_d

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->I:I

    const-string v5, "ivrwd"

    if-eq v1, v2, :cond_c

    sget v2, Lcom/mbridge/msdk/foundation/same/a;->H:I

    if-ne v1, v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v9, v5, v3}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    :goto_7
    invoke-static {v9, v5, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_8
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->d:Lcom/mbridge/msdk/videocommon/setting/c;

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "u_stid"

    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-static {}, Lcom/mbridge/msdk/videocommon/setting/b;->b()Lcom/mbridge/msdk/videocommon/setting/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/b;->c()Lcom/mbridge/msdk/videocommon/setting/a;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lcom/mbridge/msdk/videocommon/setting/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r_stid"

    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz p8, :cond_10

    goto :goto_9

    :cond_10
    move-object v4, v3

    :goto_9
    const-string v1, "rw_plus"

    invoke-static {v9, v1, v4}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "j"

    invoke-static {v9, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v1, v0, Lcom/mbridge/msdk/reward/adapter/e;->e:Ljava/lang/String;

    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    move-object v10, v1

    :goto_a
    const-string v1, "local_rid"

    invoke-static {v9, v1, v10}, Lcom/mbridge/msdk/foundation/same/net/utils/b;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method
