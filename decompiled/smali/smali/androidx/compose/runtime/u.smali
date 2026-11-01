.class public final Landroidx/compose/runtime/u;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Landroidx/compose/runtime/u;-><init>(Landroidx/compose/runtime/tooling/c;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/tooling/c;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroidx/compose/runtime/u;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/tooling/c;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/u;-><init>(Landroidx/compose/runtime/tooling/c;Z)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/runtime/tooling/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/u;->a:Z

    return v0
.end method

.method public final c(Landroidx/compose/runtime/tooling/c;)V
    .locals 0

    return-void
.end method
