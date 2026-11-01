.class public final Landroidx/media3/exoplayer/audio/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/k$b;
    }
.end annotation


# static fields
.field public static final d:Landroidx/media3/exoplayer/audio/k;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/audio/k$b;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/k$b;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/k$b;->d()Landroidx/media3/exoplayer/audio/k;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/audio/k$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/k$b;->a(Landroidx/media3/exoplayer/audio/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/k;->a:Z

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/k$b;->b(Landroidx/media3/exoplayer/audio/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/k;->b:Z

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/k$b;->c(Landroidx/media3/exoplayer/audio/k$b;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/k;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/k$b;Landroidx/media3/exoplayer/audio/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/k;-><init>(Landroidx/media3/exoplayer/audio/k$b;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/exoplayer/audio/k;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/audio/k;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/k;->a:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/audio/k;->a:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/k;->b:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/audio/k;->b:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/k;->c:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/k;->c:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/k;->a:Z

    shl-int/lit8 v0, v0, 0x2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/k;->b:Z

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/k;->c:Z

    add-int/2addr v0, v1

    return v0
.end method
