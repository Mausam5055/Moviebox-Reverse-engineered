.class public abstract Landroidx/compose/material3/ContentColorKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/material3/ContentColorKt$LocalContentColor$1;->INSTANCE:Landroidx/compose/material3/ContentColorKt$LocalContentColor$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->d(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/s1;

    return-void
.end method

.method public static final a()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/s1;

    return-object v0
.end method
