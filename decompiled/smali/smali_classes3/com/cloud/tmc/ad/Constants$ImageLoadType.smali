.class public interface abstract Lcom/cloud/tmc/ad/Constants$ImageLoadType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLoadType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/Constants$ImageLoadType$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/Constants$ImageLoadType;",
        "",
        "Companion",
        "com.cloud.tmc.miniad"
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
.field public static final Companion:Lcom/cloud/tmc/ad/Constants$ImageLoadType$Companion;

.field public static final IMAGE_DISK_INCLUDED:I = 0x3

.field public static final IMAGE_RAM_INCLUDED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/Constants$ImageLoadType$Companion;->$$INSTANCE:Lcom/cloud/tmc/ad/Constants$ImageLoadType$Companion;

    sput-object v0, Lcom/cloud/tmc/ad/Constants$ImageLoadType;->Companion:Lcom/cloud/tmc/ad/Constants$ImageLoadType$Companion;

    return-void
.end method
