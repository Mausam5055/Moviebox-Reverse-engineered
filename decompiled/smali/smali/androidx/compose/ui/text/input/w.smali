.class public final Landroidx/compose/ui/text/input/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/input/j0;


# instance fields
.field private final b:C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/ui/text/input/w;-><init>(CILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroidx/compose/ui/text/input/w;->b:C

    return-void
.end method

.method public synthetic constructor <init>(CILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x2022

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/w;-><init>(C)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/input/w;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-char v1, p0, Landroidx/compose/ui/text/input/w;->b:C

    check-cast p1, Landroidx/compose/ui/text/input/w;

    iget-char p1, p1, Landroidx/compose/ui/text/input/w;->b:C

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-char v0, p0, Landroidx/compose/ui/text/input/w;->b:C

    return v0
.end method
