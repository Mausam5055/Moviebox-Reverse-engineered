.class public final Landroidx/compose/runtime/ComposableSingletons$CompositionKt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

.field public static b:Lkotlin/jvm/functions/Function2;

.field public static c:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    invoke-direct {v0}, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->a:Landroidx/compose/runtime/ComposableSingletons$CompositionKt;

    sget-object v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt$lambda-1$1;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt$lambda-1$1;

    const v1, 0x38ea4dba

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->b:Lkotlin/jvm/functions/Function2;

    const v0, 0x72535ae8

    sget-object v1, Landroidx/compose/runtime/ComposableSingletons$CompositionKt$lambda-2$1;->INSTANCE:Landroidx/compose/runtime/ComposableSingletons$CompositionKt$lambda-2$1;

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/b;->b(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/a;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/jvm/functions/Function2;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->b:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final b()Lkotlin/jvm/functions/Function2;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposableSingletons$CompositionKt;->c:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method
