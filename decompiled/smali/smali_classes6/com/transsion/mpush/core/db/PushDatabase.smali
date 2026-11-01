.class public abstract Lcom/transsion/mpush/core/db/PushDatabase;
.super Landroidx/room/RoomDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mpush/core/db/PushDatabase$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/mpush/core/db/PushDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "Lmn/a;",
        "j0",
        "()Lmn/a;",
        "Lmn/j;",
        "k0",
        "()Lmn/j;",
        "p",
        "b",
        "MBPush_psRelease"
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
.field public static final p:Lcom/transsion/mpush/core/db/PushDatabase$b;

.field private static final q:Lcom/transsion/mpush/core/db/PushDatabase$a;

.field private static volatile r:Lcom/transsion/mpush/core/db/PushDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mpush/core/db/PushDatabase$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mpush/core/db/PushDatabase$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    new-instance v0, Lcom/transsion/mpush/core/db/PushDatabase$a;

    invoke-direct {v0}, Lcom/transsion/mpush/core/db/PushDatabase$a;-><init>()V

    sput-object v0, Lcom/transsion/mpush/core/db/PushDatabase;->q:Lcom/transsion/mpush/core/db/PushDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic g0()Lcom/transsion/mpush/core/db/PushDatabase;
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/db/PushDatabase;->r:Lcom/transsion/mpush/core/db/PushDatabase;

    return-object v0
.end method

.method public static final synthetic h0()Lcom/transsion/mpush/core/db/PushDatabase$a;
    .locals 1

    sget-object v0, Lcom/transsion/mpush/core/db/PushDatabase;->q:Lcom/transsion/mpush/core/db/PushDatabase$a;

    return-object v0
.end method

.method public static final synthetic i0(Lcom/transsion/mpush/core/db/PushDatabase;)V
    .locals 0

    sput-object p0, Lcom/transsion/mpush/core/db/PushDatabase;->r:Lcom/transsion/mpush/core/db/PushDatabase;

    return-void
.end method


# virtual methods
.method public abstract j0()Lmn/a;
.end method

.method public abstract k0()Lmn/j;
.end method
