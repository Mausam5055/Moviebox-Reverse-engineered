.class public abstract Lbf/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Set;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;

.field private static final d:Ljava/util/Map;

.field private static final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-string v6, "android.permission.PICTURE_IN_PICTURE"

    const-string v7, "android.permission.BODY_SENSORS_BACKGROUND"

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string v2, "android.permission.WRITE_SETTINGS"

    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    const-string v5, "android.permission.POST_NOTIFICATIONS"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->j([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lbf/b;->a:Ljava/util/Set;

    const-string v0, "android.permission.READ_CALENDAR"

    const-string v1, "android.permission-group.CALENDAR"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v2, "android.permission.READ_CALL_LOG"

    const-string v3, "android.permission-group.CALL_LOG"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const-string v4, "android.permission.WRITE_CALL_LOG"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const-string v5, "android.permission.CAMERA"

    const-string v6, "android.permission-group.CAMERA"

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const-string v6, "android.permission.READ_CONTACTS"

    const-string v7, "android.permission-group.CONTACTS"

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const-string v8, "android.permission.WRITE_CONTACTS"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const-string v9, "android.permission.GET_ACCOUNTS"

    invoke-static {v9, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    const-string v10, "android.permission-group.LOCATION"

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const-string v12, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v12, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const-string v12, "android.permission.RECORD_AUDIO"

    const-string v13, "android.permission-group.MICROPHONE"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const-string v13, "android.permission.READ_PHONE_STATE"

    const-string v14, "android.permission-group.PHONE"

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const-string v15, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v16, v15

    const-string v15, "android.permission.CALL_PHONE"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v17, v15

    const-string v15, "android.permission.ANSWER_PHONE_CALLS"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v18, v15

    const-string v15, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v19, v15

    const-string v15, "android.permission.USE_SIP"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v20, v15

    const-string v15, "android.permission.ACCEPT_HANDOVER"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const-string v15, "android.permission.BODY_SENSORS"

    move-object/from16 v21, v14

    const-string v14, "android.permission-group.SENSORS"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v22, v14

    const-string v14, "android.permission.ACTIVITY_RECOGNITION"

    move-object/from16 v23, v15

    const-string v15, "android.permission-group.ACTIVITY_RECOGNITION"

    invoke-static {v14, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const-string v15, "android.permission.SEND_SMS"

    move-object/from16 v24, v14

    const-string v14, "android.permission-group.SMS"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v25, v15

    const-string v15, "android.permission.RECEIVE_SMS"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v26, v15

    const-string v15, "android.permission.READ_SMS"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v27, v15

    const-string v15, "android.permission.RECEIVE_WAP_PUSH"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v28, v15

    const-string v15, "android.permission.RECEIVE_MMS"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const-string v15, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v29, v14

    const-string v14, "android.permission-group.STORAGE"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v30, v15

    const-string v15, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v31, v15

    const-string v15, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v15

    move-object/from16 v32, v14

    const/16 v14, 0x1e

    new-array v14, v14, [Lkotlin/Pair;

    const/16 v33, 0x0

    aput-object v0, v14, v33

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v1, 0x2

    aput-object v2, v14, v1

    const/4 v2, 0x3

    aput-object v4, v14, v2

    const/4 v4, 0x4

    aput-object v3, v14, v4

    const/4 v3, 0x5

    aput-object v5, v14, v3

    const/4 v5, 0x6

    aput-object v6, v14, v5

    const/4 v6, 0x7

    aput-object v8, v14, v6

    const/16 v6, 0x8

    aput-object v7, v14, v6

    const/16 v6, 0x9

    aput-object v9, v14, v6

    const/16 v6, 0xa

    aput-object v11, v14, v6

    const/16 v6, 0xb

    aput-object v10, v14, v6

    const/16 v6, 0xc

    aput-object v12, v14, v6

    const/16 v6, 0xd

    aput-object v13, v14, v6

    const/16 v6, 0xe

    aput-object v16, v14, v6

    const/16 v6, 0xf

    aput-object v17, v14, v6

    const/16 v6, 0x10

    aput-object v18, v14, v6

    const/16 v6, 0x11

    aput-object v19, v14, v6

    const/16 v6, 0x12

    aput-object v20, v14, v6

    const/16 v6, 0x13

    aput-object v21, v14, v6

    const/16 v6, 0x14

    aput-object v23, v14, v6

    const/16 v6, 0x15

    aput-object v24, v14, v6

    const/16 v6, 0x16

    aput-object v25, v14, v6

    const/16 v6, 0x17

    aput-object v26, v14, v6

    const/16 v6, 0x18

    aput-object v27, v14, v6

    const/16 v6, 0x19

    aput-object v28, v14, v6

    const/16 v6, 0x1a

    aput-object v29, v14, v6

    const/16 v6, 0x1b

    aput-object v30, v14, v6

    const/16 v6, 0x1c

    aput-object v31, v14, v6

    const/16 v6, 0x1d

    aput-object v15, v14, v6

    invoke-static {v14}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lbf/b;->b:Ljava/util/Map;

    const-string v7, "android.permission.MANAGE_EXTERNAL_STORAGE"

    move-object/from16 v8, v32

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v7}, Lkotlin/collections/MapsKt;->u(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lbf/b;->c:Ljava/util/Map;

    const-string v7, "android.permission.BLUETOOTH_SCAN"

    const-string v8, "android.permission-group.NEARBY_DEVICES"

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-string v9, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const-string v10, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v10, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    new-array v11, v2, [Lkotlin/Pair;

    aput-object v7, v11, v33

    aput-object v9, v11, v0

    aput-object v10, v11, v1

    invoke-static {v11}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v7}, Lkotlin/collections/MapsKt;->u(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lbf/b;->d:Ljava/util/Map;

    const-string v7, "android.permission.READ_MEDIA_IMAGES"

    const-string v9, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-string v10, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const-string v10, "android.permission.READ_MEDIA_AUDIO"

    const-string v11, "android.permission-group.READ_MEDIA_AURAL"

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const-string v11, "android.permission.POST_NOTIFICATIONS"

    const-string v12, "android.permission-group.NOTIFICATIONS"

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const-string v12, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {v12, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const-string v12, "android.permission.BODY_SENSORS_BACKGROUND"

    move-object/from16 v13, v22

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    new-array v5, v5, [Lkotlin/Pair;

    aput-object v7, v5, v33

    aput-object v9, v5, v0

    aput-object v10, v5, v1

    aput-object v11, v5, v2

    aput-object v8, v5, v4

    aput-object v12, v5, v3

    invoke-static {v5}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Lkotlin/collections/MapsKt;->u(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lbf/b;->e:Ljava/util/Map;

    return-void
.end method

.method public static final a()Ljava/util/Set;
    .locals 1

    sget-object v0, Lbf/b;->a:Ljava/util/Set;

    return-object v0
.end method
