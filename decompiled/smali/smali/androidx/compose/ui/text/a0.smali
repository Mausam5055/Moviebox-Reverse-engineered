.class public final Landroidx/compose/ui/text/a0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/text/x;

.field private final b:Landroidx/compose/ui/text/x;

.field private final c:Landroidx/compose/ui/text/x;

.field private final d:Landroidx/compose/ui/text/x;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/a0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/a0;->a:Landroidx/compose/ui/text/x;

    iput-object p2, p0, Landroidx/compose/ui/text/a0;->b:Landroidx/compose/ui/text/x;

    iput-object p3, p0, Landroidx/compose/ui/text/a0;->c:Landroidx/compose/ui/text/x;

    iput-object p4, p0, Landroidx/compose/ui/text/a0;->d:Landroidx/compose/ui/text/x;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/a0;-><init>(Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;Landroidx/compose/ui/text/x;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/text/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a0;->b:Landroidx/compose/ui/text/x;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/text/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a0;->c:Landroidx/compose/ui/text/x;

    return-object v0
.end method

.method public final c()Landroidx/compose/ui/text/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a0;->d:Landroidx/compose/ui/text/x;

    return-object v0
.end method

.method public final d()Landroidx/compose/ui/text/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a0;->a:Landroidx/compose/ui/text/x;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    instance-of v2, p1, Landroidx/compose/ui/text/a0;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/text/a0;->a:Landroidx/compose/ui/text/x;

    check-cast p1, Landroidx/compose/ui/text/a0;

    iget-object v3, p1, Landroidx/compose/ui/text/a0;->a:Landroidx/compose/ui/text/x;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/text/a0;->b:Landroidx/compose/ui/text/x;

    iget-object v3, p1, Landroidx/compose/ui/text/a0;->b:Landroidx/compose/ui/text/x;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/text/a0;->c:Landroidx/compose/ui/text/x;

    iget-object v3, p1, Landroidx/compose/ui/text/a0;->c:Landroidx/compose/ui/text/x;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroidx/compose/ui/text/a0;->d:Landroidx/compose/ui/text/x;

    iget-object p1, p1, Landroidx/compose/ui/text/a0;->d:Landroidx/compose/ui/text/x;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/a0;->a:Landroidx/compose/ui/text/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/x;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/ui/text/a0;->b:Landroidx/compose/ui/text/x;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/text/x;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/ui/text/a0;->c:Landroidx/compose/ui/text/x;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/compose/ui/text/x;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/ui/text/a0;->d:Landroidx/compose/ui/text/x;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/compose/ui/text/x;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method
