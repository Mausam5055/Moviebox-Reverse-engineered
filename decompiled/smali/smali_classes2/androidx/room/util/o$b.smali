.class public final Landroidx/room/util/o$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/util/o$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/room/driver/a;

    invoke-direct {v0, p1}, Landroidx/room/driver/a;-><init>(La4/d;)V

    invoke-virtual {p0, v0, p2}, Landroidx/room/util/o$b;->b(Lz3/b;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lz3/b;Ljava/lang/String;)Landroidx/room/util/o;
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/room/util/SchemaInfoUtilKt;->g(Lz3/b;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object p1

    return-object p1
.end method
