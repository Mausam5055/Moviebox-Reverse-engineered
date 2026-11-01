.class public final Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public abiFilter:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abiFilter"
    .end annotation
.end field

.field public bundleMd5:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bundleMd5"
    .end annotation
.end field

.field public bundleUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bundleUrl"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public patchSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "patchSize"
    .end annotation
.end field

.field public targetVersionCode:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "targetVersionCode"
    .end annotation
.end field

.field public tinkerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tinkerId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
