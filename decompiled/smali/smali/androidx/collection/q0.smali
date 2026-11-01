.class public abstract Landroidx/collection/q0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/k0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/k0;-><init>(I)V

    sput-object v0, Landroidx/collection/q0;->a:Landroidx/collection/k0;

    return-void
.end method

.method public static final a()Landroidx/collection/p0;
    .locals 2

    sget-object v0, Landroidx/collection/q0;->a:Landroidx/collection/k0;

    const-string v1, "null cannot be cast to non-null type androidx.collection.ObjectIntMap<K of androidx.collection.ObjectIntMapKt.emptyObjectIntMap>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b()Landroidx/collection/k0;
    .locals 4

    new-instance v0, Landroidx/collection/k0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/k0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
