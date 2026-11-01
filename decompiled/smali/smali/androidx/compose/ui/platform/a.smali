.class public abstract Landroidx/compose/ui/platform/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/platform/f;


# instance fields
.field protected a:Ljava/lang/String;

.field private final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/ui/platform/a;->b:[I

    return-void
.end method


# virtual methods
.method protected final c(II)[I
    .locals 2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/a;->b:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "text"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/platform/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/a;->a:Ljava/lang/String;

    return-void
.end method
