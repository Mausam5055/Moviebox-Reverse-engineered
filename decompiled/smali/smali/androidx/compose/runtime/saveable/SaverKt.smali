.class public abstract Landroidx/compose/runtime/saveable/SaverKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/saveable/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$1;

    sget-object v1, Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;->INSTANCE:Landroidx/compose/runtime/saveable/SaverKt$AutoSaver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/d;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/saveable/SaverKt;->a:Landroidx/compose/runtime/saveable/d;

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/d;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/saveable/SaverKt$a;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/saveable/SaverKt$a;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final b()Landroidx/compose/runtime/saveable/d;
    .locals 2

    sget-object v0, Landroidx/compose/runtime/saveable/SaverKt;->a:Landroidx/compose/runtime/saveable/d;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.saveable.Saver<T of androidx.compose.runtime.saveable.SaverKt.autoSaver, kotlin.Any>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
