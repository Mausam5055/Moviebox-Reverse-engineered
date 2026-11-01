.class public final Landroidx/work/v;
.super Landroidx/work/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/v$a;,
        Landroidx/work/v$b;
    }
.end annotation


# static fields
.field public static final e:Landroidx/work/v$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/v$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/v;->e:Landroidx/work/v$b;

    return-void
.end method

.method public constructor <init>(Landroidx/work/v$a;)V
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

.method public static final e(Ljava/lang/Class;)Landroidx/work/v;
    .locals 1

    sget-object v0, Landroidx/work/v;->e:Landroidx/work/v$b;

    invoke-virtual {v0, p0}, Landroidx/work/v$b;->a(Ljava/lang/Class;)Landroidx/work/v;

    move-result-object p0

    return-object p0
.end method
