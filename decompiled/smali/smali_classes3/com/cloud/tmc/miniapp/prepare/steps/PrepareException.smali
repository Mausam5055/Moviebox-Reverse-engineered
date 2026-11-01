.class public Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;
.super Ljava/lang/Exception;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_DOWNLOAD_PACKAGE_URL_EMPTY:Ljava/lang/String; = "11"

.field public static final ERROR_FILE2VURL_FRAMEWORK_FILE_EXCEPTION:Ljava/lang/String; = "14"

.field public static final ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION:Ljava/lang/String; = "15"

.field public static final ERROR_LOCAL_DATA_FILE_SCAN:Ljava/lang/String; = "12"

.field public static final ERROR_MANIFEST_INFO:Ljava/lang/String; = "8"

.field public static final ERROR_MINI_APPID:Ljava/lang/String; = "10"

.field public static final ERROR_MINI_APP_CLOSE:Ljava/lang/String; = "9"

.field public static final ERROR_NO_APPINFO:Ljava/lang/String; = "1"

.field public static final ERROR_NO_URL:Ljava/lang/String; = "6"

.field public static final ERROR_RPC_EXCEPTION:Ljava/lang/String; = "2"

.field public static final ERROR_SIGN_ERROR:Ljava/lang/String; = "7"

.field public static final ERROR_TIMEOUT:Ljava/lang/String; = "3"

.field public static final ERROR_UNKNOWN:Ljava/lang/String; = "0"

.field public static final ERROR_UNSTABLE_EXCEPTION:Ljava/lang/String; = "4"

.field public static final ERROR_UNZIP_EXCEPTION:Ljava/lang/String; = "5"

.field public static final ERROR_WARMUP_DOWNLOAD_EXCEPTION:Ljava/lang/String; = "13"


# instance fields
.field private code:Ljava/lang/String;

.field private needShowFail:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->code:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p3, "5"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    goto :goto_0

    :pswitch_1
    const-string p3, "4"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :pswitch_2
    const-string p3, "3"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    goto :goto_0

    :pswitch_3
    const-string p3, "2"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->needShowFail:Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static codeToDes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_7
    const-string v1, "3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_8
    const-string v1, "2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_9
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_a
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9519\u8bef\u7801:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_0
    const-string p0, "\u9519\u8bef\u7684\u5c0f\u7a0b\u5e8fID"

    goto :goto_1

    :pswitch_1
    const-string p0, "\u5c0f\u7a0b\u5e8f\u5df2\u505c\u7528"

    goto :goto_1

    :pswitch_2
    const-string p0, "\u6e05\u5355\u6587\u4ef6\u8bfb\u53d6\u5f02\u5e38"

    goto :goto_1

    :pswitch_3
    const-string p0, "\u7b7e\u540d\u6821\u9a8c\u5f02\u5e38"

    goto :goto_1

    :pswitch_4
    const-string p0, "ERROR_NO_URL"

    goto :goto_1

    :pswitch_5
    const-string p0, "\u89e3\u538b\u5f02\u5e38"

    goto :goto_1

    :pswitch_6
    const-string p0, "\u5305\u4e0b\u8f7d\u5f02\u5e38\uff0c\u6216\u8005\u5305\u6587\u4ef6\u4e0d\u5b58\u5728"

    goto :goto_1

    :pswitch_7
    const-string p0, "\u65e0\u7f51\u5e76\u4e14\u5fc5\u987b\u540c\u6b65\u62c9\u53d6 APPINFO"

    goto :goto_1

    :pswitch_8
    const-string p0, "ERROR_RPC_EXCEPTION"

    goto :goto_1

    :pswitch_9
    const-string p0, "\u672a\u627e\u5230AppInfo"

    goto :goto_1

    :pswitch_a
    const-string p0, "\u672a\u77e5\u9519\u8bef"

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_a
        0x31 -> :sswitch_9
        0x32 -> :sswitch_8
        0x33 -> :sswitch_7
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0x39 -> :sswitch_1
        0x61f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedShowFail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->needShowFail:Z

    return v0
.end method

.method public setNeedShowFail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->needShowFail:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prepare/steps/PrepareException;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
