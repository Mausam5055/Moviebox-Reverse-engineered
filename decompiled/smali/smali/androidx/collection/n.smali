.class public abstract Landroidx/collection/n;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/d0;-><init>(I)V

    sput-object v0, Landroidx/collection/n;->a:Landroidx/collection/m;

    return-void
.end method

.method public static final varargs a([I)Landroidx/collection/m;
    .locals 2

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/collection/d0;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/d0;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/d0;->h([I)V

    return-object v0
.end method
