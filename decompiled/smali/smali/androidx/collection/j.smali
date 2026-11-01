.class public abstract Landroidx/collection/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/a0;

.field private static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/a0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/a0;-><init>(I)V

    sput-object v0, Landroidx/collection/j;->a:Landroidx/collection/a0;

    new-array v0, v1, [F

    sput-object v0, Landroidx/collection/j;->b:[F

    return-void
.end method

.method public static final a()[F
    .locals 1

    sget-object v0, Landroidx/collection/j;->b:[F

    return-object v0
.end method
