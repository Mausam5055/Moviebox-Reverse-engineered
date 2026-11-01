.class public final Landroidx/room/util/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/util/o$a$a;
    }
.end annotation


# static fields
.field public static final h:Landroidx/room/util/o$a$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/util/o$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/util/o$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/util/o$a;->h:Landroidx/room/util/o$a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/util/o$a;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/room/util/o$a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Landroidx/room/util/o$a;->c:Z

    iput p4, p0, Landroidx/room/util/o$a;->d:I

    iput-object p5, p0, Landroidx/room/util/o$a;->e:Ljava/lang/String;

    iput p6, p0, Landroidx/room/util/o$a;->f:I

    invoke-static {p2}, Landroidx/room/util/SchemaInfoUtilKt;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/room/util/o$a;->g:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Landroidx/room/util/o$a;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/util/TableInfoKt;->c(Landroidx/room/util/o$a;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Landroidx/room/util/TableInfoKt;->h(Landroidx/room/util/o$a;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroidx/room/util/TableInfoKt;->n(Landroidx/room/util/o$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
