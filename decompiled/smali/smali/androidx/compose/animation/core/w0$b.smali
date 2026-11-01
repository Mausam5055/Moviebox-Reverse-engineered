.class public final Landroidx/compose/animation/core/w0$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/animation/core/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/w0;->b(Landroidx/compose/animation/core/o;FF)Landroidx/compose/animation/core/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Landroidx/compose/animation/core/f0;


# direct methods
.method constructor <init>(FF)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/compose/animation/core/f0;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/f0;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Landroidx/compose/animation/core/w0$b;->a:Landroidx/compose/animation/core/f0;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/compose/animation/core/f0;
    .locals 0

    iget-object p1, p0, Landroidx/compose/animation/core/w0$b;->a:Landroidx/compose/animation/core/f0;

    return-object p1
.end method

.method public bridge synthetic get(I)Landroidx/compose/animation/core/d0;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/w0$b;->a(I)Landroidx/compose/animation/core/f0;

    move-result-object p1

    return-object p1
.end method
