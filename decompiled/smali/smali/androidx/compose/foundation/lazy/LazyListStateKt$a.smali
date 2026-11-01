.class public final Landroidx/compose/foundation/lazy/LazyListStateKt$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/LazyListStateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$a;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$a;->a:I

    return v0
.end method

.method public v()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListStateKt$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public w()V
    .locals 0

    return-void
.end method

.method public synthetic x()Lkotlin/jvm/functions/Function1;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/layout/u;->a(Landroidx/compose/ui/layout/v;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method
