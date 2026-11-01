.class Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/vS$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sj"
.end annotation


# instance fields
.field Sj:F

.field TKC:Z

.field sP:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/vS$Sj;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/vS$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/vS$Sj;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/vS$Sj;->Sj:F

    const-string v1, "height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/vS$Sj;->sP:F

    const-string v1, "isLandscape"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/vS$Sj;->TKC:Z

    :cond_0
    return-object v0
.end method
