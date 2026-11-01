.class public final Lcom/cloud/tmc/integration/params/TmcParams;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/params/TmcParams;",
        "",
        "()V",
        "APP_ENGINE_TYPE",
        "",
        "APP_ID",
        "CAPSULE_BOTTOM",
        "CAPSULE_HEIGHT",
        "CAPSULE_LEFT",
        "CAPSULE_RIGHT",
        "CAPSULE_TOP",
        "CAPSULE_TRANSLATION_X",
        "CAPSULE_TRANSLATION_Y",
        "CAPSULE_WIDTH",
        "LONG_PUSHWINDOW_WITH_TRANS_ANIM",
        "ONLINE_HOST",
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
.field public static final APP_ENGINE_TYPE:Ljava/lang/String; = "appEngineType"

.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final CAPSULE_BOTTOM:Ljava/lang/String; = "capsuleBottom"

.field public static final CAPSULE_HEIGHT:Ljava/lang/String; = "capsuleHeight"

.field public static final CAPSULE_LEFT:Ljava/lang/String; = "capsuleLeft"

.field public static final CAPSULE_RIGHT:Ljava/lang/String; = "capsuleRight"

.field public static final CAPSULE_TOP:Ljava/lang/String; = "capsuleTop"

.field public static final CAPSULE_TRANSLATION_X:Ljava/lang/String; = "capsuleTranslationX"

.field public static final CAPSULE_TRANSLATION_Y:Ljava/lang/String; = "capsuleTranslationY"

.field public static final CAPSULE_WIDTH:Ljava/lang/String; = "capsuleWidth"

.field public static final INSTANCE:Lcom/cloud/tmc/integration/params/TmcParams;

.field public static final LONG_PUSHWINDOW_WITH_TRANS_ANIM:Ljava/lang/String; = "pushWindowWithTransAnim"

.field public static final ONLINE_HOST:Ljava/lang/String; = "onlineHost"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/params/TmcParams;

    invoke-direct {v0}, Lcom/cloud/tmc/integration/params/TmcParams;-><init>()V

    sput-object v0, Lcom/cloud/tmc/integration/params/TmcParams;->INSTANCE:Lcom/cloud/tmc/integration/params/TmcParams;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
