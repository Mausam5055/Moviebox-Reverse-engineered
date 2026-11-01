.class Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "sP"
.end annotation


# instance fields
.field EjP:D

.field HiB:F

.field Sj:F

.field TKC:I

.field sP:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "fontSize"

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->Sj:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "letterSpacing"

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->sP:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lineHeight"

    iget-wide v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->EjP:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "maxWidth"

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->HiB:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "fontWeight"

    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->TKC:I

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
