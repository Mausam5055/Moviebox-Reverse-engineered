.class public abstract Landroidx/compose/runtime/tooling/InspectionTablesKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt$LocalInspectionTables$1;->INSTANCE:Landroidx/compose/runtime/tooling/InspectionTablesKt$LocalInspectionTables$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->f(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a:Landroidx/compose/runtime/s1;

    return-void
.end method

.method public static final a()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->a:Landroidx/compose/runtime/s1;

    return-object v0
.end method
