.class public final Lcom/cloud/tmc/kernel/constants/LauncherLifecycleType;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/constants/LauncherLifecycleType;",
        "",
        "()V",
        "LAUNCHER_FULL_SEARCH_ENTER",
        "",
        "LAUNCHER_FULL_SEARCH_EXIT",
        "LAUNCHER_HEADLINE_UPDATE",
        "LAUNCHER_MINIAPP_START",
        "LAUNCHER_NEWS_CARD_UPDATE",
        "LAUNCHER_ZERO_SCREEN_ENTER",
        "LAUNCHER_ZERO_SCREEN_EXIT",
        "LAUNCHER_ZREO_SCREEN_HEAD_UPDATE",
        "LAUNCHER_ZREO_SCREEN_NEWS_UPDATE",
        "com.cloud.tmc.kernel"
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
.field public static final INSTANCE:Lcom/cloud/tmc/kernel/constants/LauncherLifecycleType;

.field public static final LAUNCHER_FULL_SEARCH_ENTER:I = 0x3

.field public static final LAUNCHER_FULL_SEARCH_EXIT:I = 0x4

.field public static final LAUNCHER_HEADLINE_UPDATE:I = 0x5

.field public static final LAUNCHER_MINIAPP_START:I = 0x11

.field public static final LAUNCHER_NEWS_CARD_UPDATE:I = 0x6

.field public static final LAUNCHER_ZERO_SCREEN_ENTER:I = 0x1

.field public static final LAUNCHER_ZERO_SCREEN_EXIT:I = 0x2

.field public static final LAUNCHER_ZREO_SCREEN_HEAD_UPDATE:I = 0x8

.field public static final LAUNCHER_ZREO_SCREEN_NEWS_UPDATE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/constants/LauncherLifecycleType;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/constants/LauncherLifecycleType;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/constants/LauncherLifecycleType;->INSTANCE:Lcom/cloud/tmc/kernel/constants/LauncherLifecycleType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
