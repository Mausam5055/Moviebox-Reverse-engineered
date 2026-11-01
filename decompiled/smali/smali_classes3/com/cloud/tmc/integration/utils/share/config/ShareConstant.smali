.class public final Lcom/cloud/tmc/integration/utils/share/config/ShareConstant;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/utils/share/config/ShareConstant;",
        "",
        "()V",
        "SHARE_CHANNEL_SYSTEM",
        "",
        "SHARE_STATUS_COMPLETE",
        "SHARE_STATUS_FAILED",
        "SHARE_TYPE_IMAGE",
        "",
        "SHARE_TYPE_PDF",
        "SHARE_TYPE_TEXT",
        "SHARE_TYPE_VIDEO",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/integration/utils/share/config/ShareConstant;

.field public static final SHARE_CHANNEL_SYSTEM:I = 0x1

.field public static final SHARE_STATUS_COMPLETE:I = 0x1

.field public static final SHARE_STATUS_FAILED:I = 0x2

.field public static final SHARE_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final SHARE_TYPE_PDF:Ljava/lang/String; = "application/pdf"

.field public static final SHARE_TYPE_TEXT:Ljava/lang/String; = "text/plain"

.field public static final SHARE_TYPE_VIDEO:Ljava/lang/String; = "video/*"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/utils/share/config/ShareConstant;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/utils/share/config/ShareConstant;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/utils/share/config/ShareConstant;->INSTANCE:Lcom/cloud/tmc/integration/utils/share/config/ShareConstant;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
