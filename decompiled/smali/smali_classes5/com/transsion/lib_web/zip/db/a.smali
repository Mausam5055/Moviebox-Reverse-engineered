.class public final Lcom/transsion/lib_web/zip/db/a;
.super Ljava/lang/Object;

# interfaces
.implements Lpm/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/lib_web/zip/db/a$d;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/lib_web/zip/db/a$d;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/lib_web/zip/db/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/lib_web/zip/db/a$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/lib_web/zip/db/a;->e:Lcom/transsion/lib_web/zip/db/a$d;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/a;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Lcom/transsion/lib_web/zip/db/a$a;

    invoke-direct {p1}, Lcom/transsion/lib_web/zip/db/a$a;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/a;->b:Landroidx/room/g;

    new-instance p1, Lcom/transsion/lib_web/zip/db/a$b;

    invoke-direct {p1}, Lcom/transsion/lib_web/zip/db/a$b;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/a;->c:Landroidx/room/e;

    new-instance p1, Lcom/transsion/lib_web/zip/db/a$c;

    invoke-direct {p1}, Lcom/transsion/lib_web/zip/db/a$c;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/zip/db/a;->d:Landroidx/room/e;

    return-void
.end method
