.class public final Landroidx/work/impl/model/z1$a;
.super Landroidx/room/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/z1;-><init>(Landroidx/room/RoomDatabase;)V
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

    check-cast p2, Landroidx/work/impl/model/t1;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/z1$a;->f(Lz3/e;Landroidx/work/impl/model/t1;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method

.method protected f(Lz3/e;Landroidx/work/impl/model/t1;)V
    .locals 2

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/work/impl/model/t1;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroidx/work/impl/model/t1;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    return-void
.end method
