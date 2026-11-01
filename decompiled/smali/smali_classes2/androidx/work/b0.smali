.class public final Landroidx/work/b0;
.super Landroidx/work/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/b0$a;,
        Landroidx/work/b0$b;
    }
.end annotation


# static fields
.field public static final e:Landroidx/work/b0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/b0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/b0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/b0;->e:Landroidx/work/b0$b;

    return-void
.end method

.method public constructor <init>(Landroidx/work/b0$a;)V
    .locals 2

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/work/i0$a;->e()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/i0$a;->h()Landroidx/work/impl/model/j0;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/work/i0$a;->f()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/work/i0;-><init>(Ljava/util/UUID;Landroidx/work/impl/model/j0;Ljava/util/Set;)V

    return-void
.end method
