.class public final Landroidx/compose/ui/text/w;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/text/v;

.field private final b:Landroidx/compose/ui/text/u;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/v;Landroidx/compose/ui/text/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/w;->a:Landroidx/compose/ui/text/v;

    iput-object p2, p0, Landroidx/compose/ui/text/w;->b:Landroidx/compose/ui/text/u;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/u;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/u;-><init>(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/text/w;-><init>(Landroidx/compose/ui/text/v;Landroidx/compose/ui/text/u;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/text/u;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/w;->b:Landroidx/compose/ui/text/u;

    return-object v0
.end method

.method public final b()Landroidx/compose/ui/text/v;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/w;->a:Landroidx/compose/ui/text/v;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/w;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/text/w;->b:Landroidx/compose/ui/text/u;

    check-cast p1, Landroidx/compose/ui/text/w;

    iget-object v3, p1, Landroidx/compose/ui/text/w;->b:Landroidx/compose/ui/text/u;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/text/w;->a:Landroidx/compose/ui/text/v;

    iget-object p1, p1, Landroidx/compose/ui/text/w;->a:Landroidx/compose/ui/text/v;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/w;->a:Landroidx/compose/ui/text/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/v;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/compose/ui/text/w;->b:Landroidx/compose/ui/text/u;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/text/u;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformTextStyle(spanStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/w;->a:Landroidx/compose/ui/text/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paragraphSyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/text/w;->b:Landroidx/compose/ui/text/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
