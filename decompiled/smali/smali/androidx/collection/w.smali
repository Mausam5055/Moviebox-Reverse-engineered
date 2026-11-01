.class public abstract Landroidx/collection/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/i0;

.field private static final b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/i0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/i0;-><init>(I)V

    sput-object v0, Landroidx/collection/w;->a:Landroidx/collection/i0;

    new-array v0, v1, [J

    sput-object v0, Landroidx/collection/w;->b:[J

    return-void
.end method

.method public static final a()[J
    .locals 1

    sget-object v0, Landroidx/collection/w;->b:[J

    return-object v0
.end method
