.class public final Landroidx/work/impl/model/g$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/g;-><init>(Landroidx/room/RoomDatabase;)V
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

    check-cast p2, Landroidx/work/impl/model/a;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/g$a;->f(Lz3/e;Landroidx/work/impl/model/a;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Landroidx/work/impl/model/a;)V
    .locals 2

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/work/impl/model/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroidx/work/impl/model/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    return-void
.end method
