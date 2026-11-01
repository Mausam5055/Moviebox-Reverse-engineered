.class public final Landroidx/window/layout/HardwareFoldingFeature;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/window/layout/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/HardwareFoldingFeature$a;,
        Landroidx/window/layout/HardwareFoldingFeature$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 *2\u00020\u0001:\u0002+,B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0015R\u001a\u0010\u0005\u001a\u00020\u00048\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\u00068\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001f\u001a\u00020\u001c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0014\u0010%\u001a\u00020\"8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(\u00a8\u0006-"
    }
    d2 = {
        "Landroidx/window/layout/HardwareFoldingFeature;",
        "Landroidx/window/layout/r;",
        "Landroidx/window/core/b;",
        "featureBounds",
        "Landroidx/window/layout/HardwareFoldingFeature$Type;",
        "type",
        "Landroidx/window/layout/r$c;",
        "state",
        "<init>",
        "(Landroidx/window/core/b;Landroidx/window/layout/HardwareFoldingFeature$Type;Landroidx/window/layout/r$c;)V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "Landroidx/window/core/b;",
        "Landroidx/window/layout/HardwareFoldingFeature$Type;",
        "getType$window_release",
        "()Landroidx/window/layout/HardwareFoldingFeature$Type;",
        "Landroidx/window/layout/r$c;",
        "getState",
        "()Landroidx/window/layout/r$c;",
        "Landroid/graphics/Rect;",
        "getBounds",
        "()Landroid/graphics/Rect;",
        "bounds",
        "isSeparating",
        "()Z",
        "Landroidx/window/layout/r$a;",
        "getOcclusionType",
        "()Landroidx/window/layout/r$a;",
        "occlusionType",
        "Landroidx/window/layout/r$b;",
        "getOrientation",
        "()Landroidx/window/layout/r$b;",
        "orientation",
        "Companion",
        "a",
        "Type",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/window/layout/HardwareFoldingFeature$a;


# instance fields
.field private final featureBounds:Landroidx/window/core/b;

.field private final state:Landroidx/window/layout/r$c;

.field private final type:Landroidx/window/layout/HardwareFoldingFeature$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/HardwareFoldingFeature$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/HardwareFoldingFeature$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/HardwareFoldingFeature;->Companion:Landroidx/window/layout/HardwareFoldingFeature$a;

    return-void
.end method

.method public constructor <init>(Landroidx/window/core/b;Landroidx/window/layout/HardwareFoldingFeature$Type;Landroidx/window/layout/r$c;)V
    .locals 1

    const-string v0, "featureBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    iput-object p2, p0, Landroidx/window/layout/HardwareFoldingFeature;->type:Landroidx/window/layout/HardwareFoldingFeature$Type;

    iput-object p3, p0, Landroidx/window/layout/HardwareFoldingFeature;->state:Landroidx/window/layout/r$c;

    sget-object p2, Landroidx/window/layout/HardwareFoldingFeature;->Companion:Landroidx/window/layout/HardwareFoldingFeature$a;

    invoke-virtual {p2, p1}, Landroidx/window/layout/HardwareFoldingFeature$a;->a(Landroidx/window/core/b;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    const-class v2, Landroidx/window/layout/HardwareFoldingFeature;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_6

    check-cast p1, Landroidx/window/layout/HardwareFoldingFeature;

    iget-object v1, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    iget-object v3, p1, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/window/layout/HardwareFoldingFeature;->type:Landroidx/window/layout/HardwareFoldingFeature$Type;

    iget-object v3, p1, Landroidx/window/layout/HardwareFoldingFeature;->type:Landroidx/window/layout/HardwareFoldingFeature$Type;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Landroidx/window/layout/HardwareFoldingFeature;->getState()Landroidx/window/layout/r$c;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/window/layout/HardwareFoldingFeature;->getState()Landroidx/window/layout/r$c;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    invoke-virtual {v0}, Landroidx/window/core/b;->f()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOcclusionType()Landroidx/window/layout/r$a;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    invoke-virtual {v0}, Landroidx/window/core/b;->d()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    invoke-virtual {v0}, Landroidx/window/core/b;->a()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/window/layout/r$a;->d:Landroidx/window/layout/r$a;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/window/layout/r$a;->c:Landroidx/window/layout/r$a;

    :goto_1
    return-object v0
.end method

.method public getOrientation()Landroidx/window/layout/r$b;
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    invoke-virtual {v0}, Landroidx/window/core/b;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    invoke-virtual {v1}, Landroidx/window/core/b;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Landroidx/window/layout/r$b;->d:Landroidx/window/layout/r$b;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/window/layout/r$b;->c:Landroidx/window/layout/r$b;

    :goto_0
    return-object v0
.end method

.method public getState()Landroidx/window/layout/r$c;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->state:Landroidx/window/layout/r$c;

    return-object v0
.end method

.method public final getType$window_release()Landroidx/window/layout/HardwareFoldingFeature$Type;
    .locals 1

    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->type:Landroidx/window/layout/HardwareFoldingFeature$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    invoke-virtual {v0}, Landroidx/window/core/b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/layout/HardwareFoldingFeature;->type:Landroidx/window/layout/HardwareFoldingFeature$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/window/layout/HardwareFoldingFeature;->getState()Landroidx/window/layout/r$c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isSeparating()Z
    .locals 3

    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->type:Landroidx/window/layout/HardwareFoldingFeature$Type;

    sget-object v1, Landroidx/window/layout/HardwareFoldingFeature$Type;->Companion:Landroidx/window/layout/HardwareFoldingFeature$Type$a;

    invoke-virtual {v1}, Landroidx/window/layout/HardwareFoldingFeature$Type$a;->b()Landroidx/window/layout/HardwareFoldingFeature$Type;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/window/layout/HardwareFoldingFeature;->type:Landroidx/window/layout/HardwareFoldingFeature$Type;

    invoke-virtual {v1}, Landroidx/window/layout/HardwareFoldingFeature$Type$a;->a()Landroidx/window/layout/HardwareFoldingFeature$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/window/layout/HardwareFoldingFeature;->getState()Landroidx/window/layout/r$c;

    move-result-object v0

    sget-object v1, Landroidx/window/layout/r$c;->d:Landroidx/window/layout/r$c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/layout/HardwareFoldingFeature;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/layout/HardwareFoldingFeature;->featureBounds:Landroidx/window/core/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/window/layout/HardwareFoldingFeature;->type:Landroidx/window/layout/HardwareFoldingFeature$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/window/layout/HardwareFoldingFeature;->getState()Landroidx/window/layout/r$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
