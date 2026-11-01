.class public final Landroidx/media3/common/a0$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/p;


# direct methods
.method public constructor <init>(Landroidx/media3/common/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/a0$c;->a:Landroidx/media3/common/p;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/a0$c;->a:Landroidx/media3/common/p;

    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->a(I)Z

    move-result p1

    return p1
.end method

.method public varargs b([I)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/a0$c;->a:Landroidx/media3/common/p;

    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->b([I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/media3/common/a0$c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/media3/common/a0$c;

    iget-object v0, p0, Landroidx/media3/common/a0$c;->a:Landroidx/media3/common/p;

    iget-object p1, p1, Landroidx/media3/common/a0$c;->a:Landroidx/media3/common/p;

    invoke-virtual {v0, p1}, Landroidx/media3/common/p;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/a0$c;->a:Landroidx/media3/common/p;

    invoke-virtual {v0}, Landroidx/media3/common/p;->hashCode()I

    move-result v0

    return v0
.end method
