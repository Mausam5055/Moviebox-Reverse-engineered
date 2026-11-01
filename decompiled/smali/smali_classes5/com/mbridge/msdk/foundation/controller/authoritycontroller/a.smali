.class public Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:I

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:I

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:I

    return-void
.end method

.method public authDeviceIdStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:I

    return-void
.end method

.method public authGenDataStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:I

    return-void
.end method

.method public authOtherDataStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    return-void
.end method

.method public authSerialIdStatus(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:I

    return-void
.end method

.method public getAuthDeviceIdStatus()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:I

    return v0
.end method

.method public getAuthGenDataStatus()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:I

    return v0
.end method

.method public getAuthSerialIdStatus()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:I

    return v0
.end method

.method public getOtherDataStatus()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    return v0
.end method

.method public getStatusByKey(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "authority_other"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "authority_general_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "authority_device_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :sswitch_3
    const-string v2, "authority_serial_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    return p1

    :pswitch_1
    iget p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:I

    return p1

    :pswitch_2
    iget p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:I

    return p1

    :pswitch_3
    iget p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:I

    return p1

    :cond_4
    :goto_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4b3bb6b6 -> :sswitch_3
        -0x278c4a58 -> :sswitch_2
        0x3d34781d -> :sswitch_1
        0x5d432b14 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
