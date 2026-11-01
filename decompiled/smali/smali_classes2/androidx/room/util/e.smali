.class final Landroidx/room/util/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "from"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/util/e;->a:I

    iput p2, p0, Landroidx/room/util/e;->b:I

    iput-object p3, p0, Landroidx/room/util/e;->c:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/util/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroidx/room/util/e;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/room/util/e;->a:I

    iget v1, p1, Landroidx/room/util/e;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/room/util/e;->b:I

    iget p1, p1, Landroidx/room/util/e;->b:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/util/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/room/util/e;

    invoke-virtual {p0, p1}, Landroidx/room/util/e;->a(Landroidx/room/util/e;)I

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroidx/room/util/e;->a:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/util/e;->d:Ljava/lang/String;

    return-object v0
.end method
