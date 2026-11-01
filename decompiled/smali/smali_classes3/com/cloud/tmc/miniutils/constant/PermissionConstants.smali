.class public final Lcom/cloud/tmc/miniutils/constant/PermissionConstants;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/constant/PermissionConstants$PermissionGroup;
    }
.end annotation


# static fields
.field public static final ACTIVITY_RECOGNITION:Ljava/lang/String; = "ACTIVITY_RECOGNITION"

.field public static final CALENDAR:Ljava/lang/String; = "CALENDAR"

.field public static final CAMERA:Ljava/lang/String; = "CAMERA"

.field public static final CONTACTS:Ljava/lang/String; = "CONTACTS"

.field private static final GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

.field private static final GROUP_CALENDAR:[Ljava/lang/String;

.field private static final GROUP_CAMERA:[Ljava/lang/String;

.field private static final GROUP_CONTACTS:[Ljava/lang/String;

.field private static final GROUP_LOCATION:[Ljava/lang/String;

.field private static final GROUP_MEDIA:[Ljava/lang/String;

.field private static final GROUP_MEDIA_AUDIO:[Ljava/lang/String;

.field private static final GROUP_MEDIA_IMAGES:[Ljava/lang/String;

.field private static final GROUP_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

.field private static final GROUP_MEDIA_VIDEO:[Ljava/lang/String;

.field private static final GROUP_MICROPHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE:[Ljava/lang/String;

.field private static final GROUP_PHONE_BELOW_O:[Ljava/lang/String;

.field private static final GROUP_SELECT_MEDIA:[Ljava/lang/String;

.field private static final GROUP_SELECT_MEDIA_IMAGES:[Ljava/lang/String;

.field private static final GROUP_SELECT_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

.field private static final GROUP_SELECT_MEDIA_VIDEO:[Ljava/lang/String;

.field private static final GROUP_SENSORS:[Ljava/lang/String;

.field private static final GROUP_SMS:[Ljava/lang/String;

.field private static final GROUP_STORAGE:[Ljava/lang/String;

.field private static final GROUP_STORAGE_READ:[Ljava/lang/String;

.field private static final GROUP_STORAGE_WRITE:[Ljava/lang/String;

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final MEDIA:Ljava/lang/String; = "MEDIA"

.field public static final MEDIA_AUDIO:Ljava/lang/String; = "MEDIA_AUDIO"

.field public static final MEDIA_IMAGES:Ljava/lang/String; = "MEDIA_IMAGES"

.field public static final MEDIA_IMAGES_VIDEO:Ljava/lang/String; = "MEDIA_IMAGES_VIDEO"

.field public static final MEDIA_VIDEO:Ljava/lang/String; = "MEDIA_VIDEO"

.field public static final MICROPHONE:Ljava/lang/String; = "MICROPHONE"

.field public static final PHONE:Ljava/lang/String; = "PHONE"

.field public static final SENSORS:Ljava/lang/String; = "SENSORS"

.field public static final SMS:Ljava/lang/String; = "SMS"

.field public static final STORAGE:Ljava/lang/String; = "STORAGE"

.field public static final STORAGE_READ:Ljava/lang/String; = "STORAGE_READ"

.field public static final STORAGE_WRITE:Ljava/lang/String; = "STORAGE_WRITE"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "android.permission.READ_CALENDAR"

    const-string v1, "android.permission.WRITE_CALENDAR"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    const-string v0, "android.permission.WRITE_CONTACTS"

    const-string v1, "android.permission.GET_ACCOUNTS"

    const-string v2, "android.permission.READ_CONTACTS"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    const-string v8, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v9, "android.permission.ANSWER_PHONE_CALLS"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    const-string v3, "android.permission.CALL_PHONE"

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission.WRITE_CALL_LOG"

    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v7, "android.permission.USE_SIP"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    const-string v7, "android.permission.USE_SIP"

    const-string v8, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    const-string v3, "android.permission.CALL_PHONE"

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission.WRITE_CALL_LOG"

    const-string v6, "com.android.voicemail.permission.ADD_VOICEMAIL"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    const-string v0, "android.permission.BODY_SENSORS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    const-string v1, "android.permission.RECEIVE_MMS"

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "android.permission.READ_SMS"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE_READ:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE_WRITE:[Ljava/lang/String;

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    const-string v2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA:[Ljava/lang/String;

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_IMAGES:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_IMAGES:[Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_VIDEO:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_VIDEO:[Ljava/lang/String;

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_AUDIO:[Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const/16 v1, 0x22

    const/16 v2, 0x21

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v0, v3

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "CAMERA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "MICROPHONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "STORAGE_WRITE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "MEDIA_IMAGES_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "CALENDAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "MEDIA_IMAGES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "ACTIVITY_RECOGNITION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "PHONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "MEDIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_a
    const-string v0, "SMS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_b
    const-string v0, "STORAGE_READ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_c
    const-string v0, "STORAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "MEDIA_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_e
    const-string v0, "MEDIA_AUDIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_f
    const-string v0, "SENSORS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_10
    const-string v4, "LOCATION"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_0

    :cond_11
    :goto_1
    packed-switch v0, :pswitch_data_0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    return-object p0

    :pswitch_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_12

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA:[Ljava/lang/String;

    return-object p0

    :cond_12
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE_WRITE:[Ljava/lang/String;

    return-object p0

    :pswitch_3
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_13

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

    return-object p0

    :cond_13
    if-lt p0, v2, :cond_14

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_IMAGES_VIDEO:[Ljava/lang/String;

    return-object p0

    :cond_14
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    return-object p0

    :pswitch_5
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_15

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_IMAGES:[Ljava/lang/String;

    return-object p0

    :cond_15
    if-lt p0, v2, :cond_16

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_IMAGES:[Ljava/lang/String;

    return-object p0

    :cond_16
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    return-object p0

    :pswitch_8
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_17

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_PHONE_BELOW_O:[Ljava/lang/String;

    return-object p0

    :cond_17
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    return-object p0

    :pswitch_a
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_18

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA:[Ljava/lang/String;

    return-object p0

    :cond_18
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE_READ:[Ljava/lang/String;

    return-object p0

    :pswitch_b
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_19

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA:[Ljava/lang/String;

    return-object p0

    :cond_19
    if-lt p0, v2, :cond_1a

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA:[Ljava/lang/String;

    return-object p0

    :cond_1a
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    return-object p0

    :pswitch_c
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_1b

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SELECT_MEDIA_VIDEO:[Ljava/lang/String;

    return-object p0

    :cond_1b
    if-lt p0, v2, :cond_1c

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_VIDEO:[Ljava/lang/String;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    return-object p0

    :pswitch_d
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v2, :cond_1d

    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_MEDIA_AUDIO:[Ljava/lang/String;

    return-object p0

    :cond_1d
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/cloud/tmc/miniutils/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x600a704b -> :sswitch_10
        -0x5f2a5027 -> :sswitch_f
        -0x49ba6485 -> :sswitch_e
        -0x4897ebe0 -> :sswitch_d
        -0x458431a5 -> :sswitch_c
        -0x3ea10306 -> :sswitch_b
        0x14139 -> :sswitch_a
        0x45d77c4 -> :sswitch_9
        0x489454e -> :sswitch_8
        0x8623667 -> :sswitch_7
        0xcd35053 -> :sswitch_6
        0x1fa27753 -> :sswitch_5
        0x2404eb3e -> :sswitch_4
        0x314cec6f -> :sswitch_3
        0x6acd20db -> :sswitch_2
        0x6ea0852a -> :sswitch_1
        0x760cb725 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
