.class public final Landroidx/work/impl/model/v$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/v;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/g;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/work/impl/model/o;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/v$a;->f(Lz3/e;Landroidx/work/impl/model/o;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Landroidx/work/impl/model/o;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Landroidx/work/impl/model/o;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-virtual {p2}, Landroidx/work/impl/model/o;->a()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    iget p2, p2, Landroidx/work/impl/model/o;->c:I

    int-to-long v0, p2

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1}, Lz3/e;->c(IJ)V

    return-void
.end method
