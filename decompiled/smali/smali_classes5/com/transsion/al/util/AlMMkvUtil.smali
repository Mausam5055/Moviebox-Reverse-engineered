.class public final Lcom/transsion/al/util/AlMMkvUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/al/util/AlMMkvUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/transsion/al/util/AlMMkvUtil;",
        "",
        "<init>",
        "()V",
        "Companion",
        "Keepalive_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/al/util/AlMMkvUtil$Companion;

.field private static final table_name:Ljava/lang/String; = "kv_alive_table"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/al/util/AlMMkvUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/al/util/AlMMkvUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/al/util/AlMMkvUtil;->Companion:Lcom/transsion/al/util/AlMMkvUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
