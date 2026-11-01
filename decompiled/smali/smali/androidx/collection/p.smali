.class public abstract Landroidx/collection/p;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/collection/e0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/e0;-><init>(I)V

    sput-object v0, Landroidx/collection/p;->a:Landroidx/collection/e0;

    return-void
.end method

.method public static final a()Landroidx/collection/o;
    .locals 2

    sget-object v0, Landroidx/collection/p;->a:Landroidx/collection/e0;

    const-string v1, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.intObjectMapOf>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b()Landroidx/collection/e0;
    .locals 4

    new-instance v0, Landroidx/collection/e0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final c(ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)Landroidx/collection/e0;
    .locals 4

    new-instance v0, Landroidx/collection/e0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, p0, p1}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    invoke-virtual {v0, p2, p3}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    invoke-virtual {v0, p4, p5}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    return-object v0
.end method
