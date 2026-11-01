.class public final Lcom/cloud/tmc/kernel/debug/DebugConfig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/debug/DebugConfig;",
        "",
        "()V",
        "DEBUG_REFRESH",
        "",
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
.field public static DEBUG_REFRESH:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/cloud/tmc/kernel/debug/DebugConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/debug/DebugConfig;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/debug/DebugConfig;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/debug/DebugConfig;->INSTANCE:Lcom/cloud/tmc/kernel/debug/DebugConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
