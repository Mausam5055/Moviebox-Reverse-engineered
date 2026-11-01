.class public final Lmn/i;
.super Ljava/lang/Object;

# interfaces
.implements Lmn/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmn/i;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lmn/i$a;

    invoke-direct {p1, p0}, Lmn/i$a;-><init>(Lmn/i;)V

    iput-object p1, p0, Lmn/i;->b:Landroidx/room/g;

    new-instance p1, Lmn/i$b;

    invoke-direct {p1, p0}, Lmn/i$b;-><init>(Lmn/i;)V

    iput-object p1, p0, Lmn/i;->c:Landroidx/room/e;

    return-void
.end method

.method public static synthetic h(Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lmn/i;->p(Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lmn/i;->s(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Lz3/b;)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 0

    invoke-static {p0, p1}, Lmn/i;->r(Ljava/lang/String;Lz3/b;)Lcom/transsion/mpush/api/LocalPushMessage;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lmn/i;->q(Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lmn/i;Lcom/transsion/mpush/api/LocalPushMessage;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmn/i;->u(Lcom/transsion/mpush/api/LocalPushMessage;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lmn/i;Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lmn/i;->t(Ljava/util/List;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(ILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lmn/i;->v(ILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static o()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic p(Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "DELETE FROM msg_standard"

    invoke-interface {p0, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic q(Lz3/b;)Ljava/util/List;
    .locals 46

    const-string v0, "SELECT * FROM msg_standard ORDER BY receive_time DESC"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "message_id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "desc"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "deep_link"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "image_list"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "push_time"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "source"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "style"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "type"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "receive_time"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "msg_status"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "show_time"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "force_show"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "has_screen_on"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "extra_map"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "built_in"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "permanent_msg_status"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v19

    if-eqz v19, :cond_d

    move/from16 v19, v14

    move-object/from16 v20, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v15

    const/16 v21, 0x0

    if-eqz v15, :cond_0

    move-object/from16 v23, v21

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v15

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v24, v21

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v15

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v25, v21

    goto :goto_3

    :cond_2
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v15

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v26, v21

    goto :goto_4

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v15

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v27, v21

    goto :goto_5

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v15

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v28, v21

    goto :goto_6

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v15

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v29, v21

    goto :goto_7

    :cond_6
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v29, v15

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v30, v21

    goto :goto_8

    :cond_7
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v15

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v31, v21

    goto :goto_9

    :cond_8
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v31, v15

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v32

    move v15, v2

    move/from16 v42, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v35

    move/from16 v43, v5

    move/from16 v3, v19

    move/from16 v19, v4

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    const/16 v22, 0x1

    if-eqz v4, :cond_9

    move/from16 v4, p0

    move/from16 p0, v6

    move/from16 v37, v22

    goto :goto_a

    :cond_9
    const/16 v37, 0x0

    move/from16 v4, p0

    move/from16 p0, v6

    :goto_a
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_a

    move/from16 v5, v16

    move/from16 v38, v22

    goto :goto_b

    :cond_a
    move/from16 v5, v16

    const/16 v38, 0x0

    :goto_b
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    move/from16 v16, v3

    move/from16 v6, v17

    move-object/from16 v39, v21

    :goto_c
    move/from16 v17, v4

    goto :goto_d

    :cond_b
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v16, v3

    move-object/from16 v39, v6

    move/from16 v6, v17

    goto :goto_c

    :goto_d
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_c

    move/from16 v3, v18

    move/from16 v40, v22

    :goto_e
    move/from16 v18, v5

    goto :goto_f

    :cond_c
    move/from16 v3, v18

    const/16 v40, 0x0

    goto :goto_e

    :goto_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    new-instance v5, Lcom/transsion/mpush/api/LocalPushMessage;

    move-object/from16 v21, v5

    move/from16 v22, v14

    move/from16 v34, v2

    move/from16 v41, v4

    invoke-direct/range {v21 .. v41}, Lcom/transsion/mpush/api/LocalPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)V

    move-object/from16 v2, v20

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v14, v16

    move/from16 v16, v18

    move/from16 v4, v19

    move/from16 v5, v43

    move/from16 v18, v3

    move/from16 v3, v42

    move/from16 v44, v6

    move/from16 v6, p0

    move/from16 p0, v17

    move/from16 v17, v44

    move/from16 v45, v15

    move-object v15, v2

    move/from16 v2, v45

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_10

    :cond_d
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_10
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic r(Ljava/lang/String;Lz3/b;)Lcom/transsion/mpush/api/LocalPushMessage;
    .locals 42

    move-object/from16 v0, p0

    const-string v1, "SELECT * FROM msg_standard WHERE message_id = ? LIMIT 1"

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v1, v2}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    invoke-interface {v1, v2, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v3, "message_id"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "title"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "desc"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "deep_link"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "image_list"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "push_time"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "source"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "style"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "type"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "receive_time"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "msg_status"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "show_time"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "force_show"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    const-string v2, "has_screen_on"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 p0, v2

    const-string v2, "extra_map"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v16, v2

    const-string v2, "built_in"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "permanent_msg_status"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v18

    const/16 v19, 0x0

    if-eqz v18, :cond_e

    move/from16 v18, v14

    move/from16 v20, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v0, v14

    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v23, v19

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    :goto_1
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v24, v19

    goto :goto_2

    :cond_2
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_2
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v25, v19

    goto :goto_3

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_3
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v26, v19

    goto :goto_4

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    :goto_4
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v27, v19

    goto :goto_5

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_5
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v28, v19

    goto :goto_6

    :cond_6
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_6
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v29, v19

    goto :goto_7

    :cond_7
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v29, v3

    :goto_7
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v30, v19

    goto :goto_8

    :cond_8
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    :goto_8
    invoke-interface {v1, v11}, Lz3/e;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v31, v19

    goto :goto_9

    :cond_9
    invoke-interface {v1, v11}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v31, v3

    :goto_9
    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v32

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move/from16 v4, v18

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v35

    move/from16 v4, v20

    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    const/16 v37, 0x1

    move/from16 v4, p0

    goto :goto_a

    :cond_a
    move/from16 v4, p0

    move/from16 v37, v5

    :goto_a
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v4, v6

    if-eqz v4, :cond_b

    move/from16 v4, v16

    const/16 v38, 0x1

    goto :goto_b

    :cond_b
    move/from16 v38, v5

    move/from16 v4, v16

    :goto_b
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_c

    :goto_c
    move/from16 v4, v17

    move-object/from16 v39, v19

    goto :goto_d

    :cond_c
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_c

    :goto_d
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v6

    long-to-int v4, v6

    if-eqz v4, :cond_d

    const/16 v40, 0x1

    goto :goto_e

    :cond_d
    move/from16 v40, v5

    :goto_e
    invoke-interface {v1, v2}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v2, v4

    new-instance v19, Lcom/transsion/mpush/api/LocalPushMessage;

    move-object/from16 v21, v19

    move/from16 v22, v0

    move/from16 v34, v3

    move/from16 v41, v2

    invoke-direct/range {v21 .. v41}, Lcom/transsion/mpush/api/LocalPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    invoke-interface {v1}, Lz3/e;->close()V

    return-object v19

    :goto_f
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private static synthetic s(Lz3/b;)Ljava/util/List;
    .locals 46

    const-string v0, "SELECT * FROM msg_standard WHERE msg_status = 0 ORDER BY receive_time DESC"

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v0

    const-string v2, "message_id"

    invoke-static {v1, v2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v2

    const-string v3, "title"

    invoke-static {v1, v3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v3

    const-string v4, "desc"

    invoke-static {v1, v4}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v4

    const-string v5, "deep_link"

    invoke-static {v1, v5}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v5

    const-string v6, "image_list"

    invoke-static {v1, v6}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v6

    const-string v7, "push_time"

    invoke-static {v1, v7}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v7

    const-string v8, "source"

    invoke-static {v1, v8}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v8

    const-string v9, "style"

    invoke-static {v1, v9}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v9

    const-string v10, "type"

    invoke-static {v1, v10}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v10

    const-string v11, "receive_time"

    invoke-static {v1, v11}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v11

    const-string v12, "msg_status"

    invoke-static {v1, v12}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v12

    const-string v13, "show_time"

    invoke-static {v1, v13}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v13

    const-string v14, "force_show"

    invoke-static {v1, v14}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v14

    const-string v15, "has_screen_on"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 p0, v15

    const-string v15, "extra_map"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v15

    const-string v15, "built_in"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v17, v15

    const-string v15, "permanent_msg_status"

    invoke-static {v1, v15}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result v15

    move/from16 v18, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Lz3/e;->A0()Z

    move-result v19

    if-eqz v19, :cond_d

    move/from16 v19, v14

    move-object/from16 v20, v15

    invoke-interface {v1, v0}, Lz3/e;->getLong(I)J

    move-result-wide v14

    long-to-int v14, v14

    invoke-interface {v1, v2}, Lz3/e;->isNull(I)Z

    move-result v15

    const/16 v21, 0x0

    if-eqz v15, :cond_0

    move-object/from16 v23, v21

    goto :goto_1

    :cond_0
    invoke-interface {v1, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v15

    :goto_1
    invoke-interface {v1, v3}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v24, v21

    goto :goto_2

    :cond_1
    invoke-interface {v1, v3}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v15

    :goto_2
    invoke-interface {v1, v4}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v25, v21

    goto :goto_3

    :cond_2
    invoke-interface {v1, v4}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v15

    :goto_3
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v26, v21

    goto :goto_4

    :cond_3
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v15

    :goto_4
    invoke-interface {v1, v6}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v27, v21

    goto :goto_5

    :cond_4
    invoke-interface {v1, v6}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v15

    :goto_5
    invoke-interface {v1, v7}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v28, v21

    goto :goto_6

    :cond_5
    invoke-interface {v1, v7}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v15

    :goto_6
    invoke-interface {v1, v8}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v29, v21

    goto :goto_7

    :cond_6
    invoke-interface {v1, v8}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v29, v15

    :goto_7
    invoke-interface {v1, v9}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move-object/from16 v30, v21

    goto :goto_8

    :cond_7
    invoke-interface {v1, v9}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v15

    :goto_8
    invoke-interface {v1, v10}, Lz3/e;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v31, v21

    goto :goto_9

    :cond_8
    invoke-interface {v1, v10}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v31, v15

    :goto_9
    invoke-interface {v1, v11}, Lz3/e;->getLong(I)J

    move-result-wide v32

    move v15, v2

    move/from16 v42, v3

    invoke-interface {v1, v12}, Lz3/e;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v13}, Lz3/e;->getLong(I)J

    move-result-wide v35

    move/from16 v43, v5

    move/from16 v3, v19

    move/from16 v19, v4

    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    const/16 v22, 0x1

    if-eqz v4, :cond_9

    move/from16 v4, p0

    move/from16 p0, v6

    move/from16 v37, v22

    goto :goto_a

    :cond_9
    const/16 v37, 0x0

    move/from16 v4, p0

    move/from16 p0, v6

    :goto_a
    invoke-interface {v1, v4}, Lz3/e;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_a

    move/from16 v5, v16

    move/from16 v38, v22

    goto :goto_b

    :cond_a
    move/from16 v5, v16

    const/16 v38, 0x0

    :goto_b
    invoke-interface {v1, v5}, Lz3/e;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    move/from16 v16, v3

    move/from16 v6, v17

    move-object/from16 v39, v21

    :goto_c
    move/from16 v17, v4

    goto :goto_d

    :cond_b
    invoke-interface {v1, v5}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v16, v3

    move-object/from16 v39, v6

    move/from16 v6, v17

    goto :goto_c

    :goto_d
    invoke-interface {v1, v6}, Lz3/e;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_c

    move/from16 v3, v18

    move/from16 v40, v22

    :goto_e
    move/from16 v18, v5

    goto :goto_f

    :cond_c
    move/from16 v3, v18

    const/16 v40, 0x0

    goto :goto_e

    :goto_f
    invoke-interface {v1, v3}, Lz3/e;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    new-instance v5, Lcom/transsion/mpush/api/LocalPushMessage;

    move-object/from16 v21, v5

    move/from16 v22, v14

    move/from16 v34, v2

    move/from16 v41, v4

    invoke-direct/range {v21 .. v41}, Lcom/transsion/mpush/api/LocalPushMessage;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJZZLjava/lang/String;ZI)V

    move-object/from16 v2, v20

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v14, v16

    move/from16 v16, v18

    move/from16 v4, v19

    move/from16 v5, v43

    move/from16 v18, v3

    move/from16 v3, v42

    move/from16 v44, v6

    move/from16 v6, p0

    move/from16 p0, v17

    move/from16 v17, v44

    move/from16 v45, v15

    move-object v15, v2

    move/from16 v2, v45

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_10

    :cond_d
    move-object v2, v15

    invoke-interface {v1}, Lz3/e;->close()V

    return-object v2

    :goto_10
    invoke-interface {v1}, Lz3/e;->close()V

    throw v0
.end method

.method private synthetic t(Ljava/util/List;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lmn/i;->b:Landroidx/room/g;

    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->c(Lz3/b;Ljava/lang/Iterable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private synthetic u(Lcom/transsion/mpush/api/LocalPushMessage;Lz3/b;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lmn/i;->c:Landroidx/room/e;

    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Lz3/b;Ljava/lang/Object;)I

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static synthetic v(ILjava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 3

    const-string v0, "UPDATE msg_standard SET msg_status = ? WHERE message_id = ?"

    invoke-interface {p2, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p2

    const/4 v0, 0x1

    int-to-long v1, p0

    :try_start_0
    invoke-interface {p2, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/4 p0, 0x2

    if-nez p1, :cond_0

    invoke-interface {p2, p0}, Lz3/e;->g(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p0, p1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-interface {p2}, Lz3/e;->A0()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lz3/e;->close()V

    return-object p0

    :goto_1
    invoke-interface {p2}, Lz3/e;->close()V

    throw p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmn/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/e;

    invoke-direct {v1}, Lmn/e;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmn/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/f;

    invoke-direct {v1, p0, p1}, Lmn/f;-><init>(Lmn/i;Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmn/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/c;

    invoke-direct {v1, p2, p1}, Lmn/c;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, v1, p3}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmn/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/d;

    invoke-direct {v1}, Lmn/d;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmn/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/b;

    invoke-direct {v1}, Lmn/b;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lmn/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/g;

    invoke-direct {v1, p0, p1}, Lmn/g;-><init>(Lmn/i;Lcom/transsion/mpush/api/LocalPushMessage;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lmn/i;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lmn/h;

    invoke-direct {v1, p1}, Lmn/h;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
