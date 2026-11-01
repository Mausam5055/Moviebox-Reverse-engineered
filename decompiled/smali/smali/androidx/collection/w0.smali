.class public abstract Landroidx/collection/w0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/MutableScatterSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterSet;-><init>(I)V

    sput-object v0, Landroidx/collection/w0;->a:Landroidx/collection/MutableScatterSet;

    return-void
.end method

.method public static final a()Landroidx/collection/MutableScatterSet;
    .locals 4

    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableScatterSet;
    .locals 2

    new-instance v0, Landroidx/collection/MutableScatterSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableScatterSet;->w(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->w(Ljava/lang/Object;)V

    return-object v0
.end method
