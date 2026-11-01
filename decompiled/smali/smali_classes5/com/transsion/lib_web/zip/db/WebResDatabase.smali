.class public abstract Lcom/transsion/lib_web/zip/db/WebResDatabase;
.super Landroidx/room/RoomDatabase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/lib_web/zip/db/WebResDatabase$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/transsion/lib_web/zip/db/WebResDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "p",
        "b",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final p:Lcom/transsion/lib_web/zip/db/WebResDatabase$b;

.field private static final q:Lcom/transsion/lib_web/zip/db/WebResDatabase$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/lib_web/zip/db/WebResDatabase$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/lib_web/zip/db/WebResDatabase$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/lib_web/zip/db/WebResDatabase;->p:Lcom/transsion/lib_web/zip/db/WebResDatabase$b;

    new-instance v0, Lcom/transsion/lib_web/zip/db/WebResDatabase$a;

    invoke-direct {v0}, Lcom/transsion/lib_web/zip/db/WebResDatabase$a;-><init>()V

    sput-object v0, Lcom/transsion/lib_web/zip/db/WebResDatabase;->q:Lcom/transsion/lib_web/zip/db/WebResDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method
