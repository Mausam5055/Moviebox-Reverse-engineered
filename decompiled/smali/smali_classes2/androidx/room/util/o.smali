.class public final Landroidx/room/util/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/util/o$a;,
        Landroidx/room/util/o$b;,
        Landroidx/room/util/o$c;,
        Landroidx/room/util/o$d;
    }
.end annotation


# static fields
.field public static final e:Landroidx/room/util/o$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/util/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/util/o$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/util/o;->e:Landroidx/room/util/o$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columns"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foreignKeys"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/util/o;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/util/o;->b:Ljava/util/Map;

    iput-object p3, p0, Landroidx/room/util/o;->c:Ljava/util/Set;

    iput-object p4, p0, Landroidx/room/util/o;->d:Ljava/util/Set;

    return-void
.end method

.method public static final a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;
    .locals 1

    sget-object v0, Landroidx/room/util/o;->e:Landroidx/room/util/o$b;

    invoke-virtual {v0, p0, p1}, Landroidx/room/util/o$b;->a(La4/d;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lz3/b;Ljava/lang/String;)Landroidx/room/util/o;
    .locals 1

    sget-object v0, Landroidx/room/util/o;->e:Landroidx/room/util/o$b;

    invoke-virtual {v0, p0, p1}, Landroidx/room/util/o$b;->b(Lz3/b;Ljava/lang/String;)Landroidx/room/util/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/util/TableInfoKt;->f(Landroidx/room/util/o;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Landroidx/room/util/TableInfoKt;->k(Landroidx/room/util/o;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroidx/room/util/TableInfoKt;->q(Landroidx/room/util/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
