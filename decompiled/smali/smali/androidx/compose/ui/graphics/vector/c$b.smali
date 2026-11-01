.class public final Landroidx/compose/ui/graphics/vector/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroidx/compose/ui/graphics/vector/c;->a()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroidx/compose/ui/graphics/vector/c;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
