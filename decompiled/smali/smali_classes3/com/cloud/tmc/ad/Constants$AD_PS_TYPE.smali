.class public interface abstract Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AD_PS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE;",
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
.field public static final Companion:Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE$Companion;

.field public static final NO_PS_AD:I = 0x1

.field public static final PS_MATERIAL_DOWNLOAD_FAIL:I = 0x5

.field public static final PS_MATERIAL_DOWNLOAD_SUCCESS:I = 0x6

.field public static final PS_MATERIAL_NOT_RETURN:I = 0x7

.field public static final PS_NOT_GPLINK:I = 0x3

.field public static final PS_NOT_INSTALL:I = 0x2

.field public static final PS_RECOMMEND_ITEM_IIST_LESS:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE$Companion;->$$INSTANCE:Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE$Companion;

    sput-object v0, Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE;->Companion:Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE$Companion;

    return-void
.end method
