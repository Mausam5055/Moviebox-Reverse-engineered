.class public abstract Landroidx/collection/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/f0;

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/f0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/f0;-><init>(I)V

    sput-object v0, Landroidx/collection/r;->a:Landroidx/collection/f0;

    new-array v0, v1, [I

    sput-object v0, Landroidx/collection/r;->b:[I

    return-void
.end method

.method public static final a()[I
    .locals 1

    sget-object v0, Landroidx/collection/r;->b:[I

    return-object v0
.end method

.method public static final b()Landroidx/collection/f0;
    .locals 4

    new-instance v0, Landroidx/collection/f0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
