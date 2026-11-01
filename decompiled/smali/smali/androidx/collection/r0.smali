.class public abstract Landroidx/collection/r0;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/Object;

.field private static final b:Landroidx/collection/ObjectList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Landroidx/collection/r0;->a:[Ljava/lang/Object;

    new-instance v1, Landroidx/collection/l0;

    invoke-direct {v1, v0}, Landroidx/collection/l0;-><init>(I)V

    sput-object v1, Landroidx/collection/r0;->b:Landroidx/collection/ObjectList;

    return-void
.end method

.method public static final synthetic a()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/collection/r0;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Landroidx/collection/l0;
    .locals 2

    new-instance v0, Landroidx/collection/l0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/l0;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/l0;->e(Ljava/lang/Object;)Z

    return-object v0
.end method
