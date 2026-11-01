.class public final Landroidx/compose/runtime/h2;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/runtime/i;


# direct methods
.method private synthetic constructor <init>(Landroidx/compose/runtime/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/h2;->a:Landroidx/compose/runtime/i;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/h2;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/h2;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/h2;-><init>(Landroidx/compose/runtime/i;)V

    return-object v0
.end method

.method public static b(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;
    .locals 0

    return-object p0
.end method

.method public static c(Landroidx/compose/runtime/i;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/runtime/h2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/h2;

    invoke-virtual {p1}, Landroidx/compose/runtime/h2;->f()Landroidx/compose/runtime/i;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroidx/compose/runtime/i;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static e(Landroidx/compose/runtime/i;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkippableUpdater(composer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/h2;->a:Landroidx/compose/runtime/i;

    invoke-static {v0, p1}, Landroidx/compose/runtime/h2;->c(Landroidx/compose/runtime/i;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()Landroidx/compose/runtime/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/h2;->a:Landroidx/compose/runtime/i;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/h2;->a:Landroidx/compose/runtime/i;

    invoke-static {v0}, Landroidx/compose/runtime/h2;->d(Landroidx/compose/runtime/i;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/h2;->a:Landroidx/compose/runtime/i;

    invoke-static {v0}, Landroidx/compose/runtime/h2;->e(Landroidx/compose/runtime/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
