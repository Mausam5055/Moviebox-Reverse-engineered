.class public final Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a$a;

.field public static final e:I

.field private static final f:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;


# instance fields
.field private a:I

.field private b:[Ljava/lang/Object;

.field private c:Lw/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;->d:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;->e:I

    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;-><init>(I[Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;->f:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;-><init>(I[Ljava/lang/Object;Lw/e;)V

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/Object;Lw/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;->a:I

    iput-object p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;->b:[Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;->c:Lw/e;

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;->f:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableSet/a;

    return-object v0
.end method
