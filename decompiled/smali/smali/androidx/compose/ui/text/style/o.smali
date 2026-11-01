.class public final Landroidx/compose/ui/text/style/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/o$a;,
        Landroidx/compose/ui/text/style/o$b;
    }
.end annotation


# static fields
.field public static final c:Landroidx/compose/ui/text/style/o$a;

.field private static final d:Landroidx/compose/ui/text/style/o;

.field private static final e:Landroidx/compose/ui/text/style/o;


# instance fields
.field private final a:I

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/compose/ui/text/style/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/o;->c:Landroidx/compose/ui/text/style/o$a;

    new-instance v0, Landroidx/compose/ui/text/style/o;

    sget-object v2, Landroidx/compose/ui/text/style/o$b;->a:Landroidx/compose/ui/text/style/o$b$a;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/o$b$a;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Landroidx/compose/ui/text/style/o;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/o;->d:Landroidx/compose/ui/text/style/o;

    new-instance v0, Landroidx/compose/ui/text/style/o;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/o$b$a;->b()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/text/style/o;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/style/o;->e:Landroidx/compose/ui/text/style/o;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/style/o;->a:I

    iput-boolean p2, p0, Landroidx/compose/ui/text/style/o;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/style/o;-><init>(IZ)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/text/style/o;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/o;->d:Landroidx/compose/ui/text/style/o;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/style/o;->a:I

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/style/o;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/ui/text/style/o;->a:I

    check-cast p1, Landroidx/compose/ui/text/style/o;

    iget v3, p1, Landroidx/compose/ui/text/style/o;->a:I

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/o$b;->e(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/compose/ui/text/style/o;->b:Z

    iget-boolean p1, p1, Landroidx/compose/ui/text/style/o;->b:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/style/o;->a:I

    invoke-static {v0}, Landroidx/compose/ui/text/style/o$b;->f(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/ui/text/style/o;->b:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/style/o;->d:Landroidx/compose/ui/text/style/o;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TextMotion.Static"

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/text/style/o;->e:Landroidx/compose/ui/text/style/o;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TextMotion.Animated"

    goto :goto_0

    :cond_1
    const-string v0, "Invalid"

    :goto_0
    return-object v0
.end method
