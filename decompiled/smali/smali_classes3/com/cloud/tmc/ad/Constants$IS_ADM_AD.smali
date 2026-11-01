.class public interface abstract Lcom/cloud/tmc/ad/Constants$IS_ADM_AD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/ad/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IS_ADM_AD"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/Constants$IS_ADM_AD$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/Constants$IS_ADM_AD;",
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
.field public static final ADM_AD:I = 0x2

.field public static final Companion:Lcom/cloud/tmc/ad/Constants$IS_ADM_AD$Companion;

.field public static final NO_ADM_AD:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/ad/Constants$IS_ADM_AD$Companion;->$$INSTANCE:Lcom/cloud/tmc/ad/Constants$IS_ADM_AD$Companion;

    sput-object v0, Lcom/cloud/tmc/ad/Constants$IS_ADM_AD;->Companion:Lcom/cloud/tmc/ad/Constants$IS_ADM_AD$Companion;

    return-void
.end method
