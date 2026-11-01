.class public final Lcom/cloud/tmc/integration/structure/AppConstants;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/structure/AppConstants;",
        "",
        "()V",
        "APP_INFO_MODEL",
        "",
        "APP_LAST_UPDATE_TIME",
        "APP_TYPE_H5",
        "APP_TYPE_TINY_INNER",
        "APP_TYPE_TINY_THIRDPARTY",
        "TAG",
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
.field public static final APP_INFO_MODEL:Ljava/lang/String; = "APP_INFO_MODEL"

.field public static final APP_LAST_UPDATE_TIME:Ljava/lang/String; = "APP_LAST_UPDATE_TIME"

.field public static final APP_TYPE_H5:Ljava/lang/String; = "H5"

.field public static final APP_TYPE_TINY_INNER:Ljava/lang/String; = "TINY_INNER"

.field public static final APP_TYPE_TINY_THIRDPARTY:Ljava/lang/String; = "TINY_TP"

.field public static final INSTANCE:Lcom/cloud/tmc/integration/structure/AppConstants;

.field public static final TAG:Ljava/lang/String; = "Tmcintegration"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/structure/AppConstants;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/AppConstants;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/structure/AppConstants;->INSTANCE:Lcom/cloud/tmc/integration/structure/AppConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
