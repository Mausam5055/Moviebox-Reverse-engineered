.class final Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/VectorConvertersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly/m;",
        "Landroidx/compose/animation/core/l;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Ly/m;",
        "it",
        "Landroidx/compose/animation/core/l;",
        "invoke-uvyYCjk",
        "(J)Landroidx/compose/animation/core/l;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ly/m;

    invoke-virtual {p1}, Ly/m;->m()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt$SizeToVector$1;->invoke-uvyYCjk(J)Landroidx/compose/animation/core/l;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-uvyYCjk(J)Landroidx/compose/animation/core/l;
    .locals 2

    new-instance v0, Landroidx/compose/animation/core/l;

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result v1

    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroidx/compose/animation/core/l;-><init>(FF)V

    return-object v0
.end method
