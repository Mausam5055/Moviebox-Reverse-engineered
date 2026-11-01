.class final Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/BoxKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;->a:Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/compose/ui/layout/x;Ljava/util/List;J)Landroidx/compose/ui/layout/v;
    .locals 7

    invoke-static {p3, p4}, Lo0/b;->n(J)I

    move-result v1

    invoke-static {p3, p4}, Lo0/b;->m(J)I

    move-result v2

    sget-object v4, Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1$1;->INSTANCE:Landroidx/compose/foundation/layout/BoxKt$EmptyBoxMeasurePolicy$1$1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method
