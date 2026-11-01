.class public abstract Landroidx/compose/foundation/layout/SizeKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/foundation/layout/FillElement;

.field private static final b:Landroidx/compose/foundation/layout/FillElement;

.field private static final c:Landroidx/compose/foundation/layout/FillElement;

.field private static final d:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final e:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final f:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final g:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final h:Landroidx/compose/foundation/layout/WrapContentElement;

.field private static final i:Landroidx/compose/foundation/layout/WrapContentElement;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->e:Landroidx/compose/foundation/layout/FillElement$a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$a;->c(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->a:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$a;->a(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->b:Landroidx/compose/foundation/layout/FillElement;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FillElement$a;->b(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    sget-object v0, Landroidx/compose/foundation/layout/WrapContentElement;->g:Landroidx/compose/foundation/layout/WrapContentElement$Companion;

    sget-object v1, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->f()Landroidx/compose/ui/b$b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->c(Landroidx/compose/ui/b$b;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->d:Landroidx/compose/foundation/layout/WrapContentElement;

    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->c(Landroidx/compose/ui/b$b;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->e:Landroidx/compose/foundation/layout/WrapContentElement;

    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->a(Landroidx/compose/ui/b$c;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->f:Landroidx/compose/foundation/layout/WrapContentElement;

    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->a(Landroidx/compose/ui/b$c;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->g:Landroidx/compose/foundation/layout/WrapContentElement;

    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->d()Landroidx/compose/ui/b;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->b(Landroidx/compose/ui/b;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v2

    sput-object v2, Landroidx/compose/foundation/layout/SizeKt;->h:Landroidx/compose/foundation/layout/WrapContentElement;

    invoke-virtual {v1}, Landroidx/compose/ui/b$a;->m()Landroidx/compose/ui/b;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->b(Landroidx/compose/ui/b;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/SizeKt;->i:Landroidx/compose/foundation/layout/WrapContentElement;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->e:Landroidx/compose/foundation/layout/FillElement$a;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FillElement$a;->b(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->a(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->a:Landroidx/compose/foundation/layout/FillElement;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/FillElement;->e:Landroidx/compose/foundation/layout/FillElement$a;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/FillElement$a;->c(F)Landroidx/compose/foundation/layout/FillElement;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/f;FILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 10

    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move v2, p1

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;
    .locals 10

    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$heightIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p1}, Lo0/i$a;->b()F

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p2}, Lo0/i$a;->b()F

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Landroidx/compose/ui/f;FFFF)Landroidx/compose/ui/f;
    .locals 9

    new-instance v8, Landroidx/compose/foundation/layout/SizeElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1;-><init>(FFFF)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v8}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/ui/f;FFFFILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p1, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p1}, Lo0/i$a;->b()F

    move-result p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    sget-object p2, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p2}, Lo0/i$a;->b()F

    move-result p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p3}, Lo0/i$a;->b()F

    move-result p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    sget-object p4, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p4}, Lo0/i$a;->b()F

    move-result p4

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/f;FFFF)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 9

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$size-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p1

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;
    .locals 9

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$size-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Landroidx/compose/foundation/layout/SizeElement;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final l(Landroidx/compose/ui/f;F)Landroidx/compose/ui/f;
    .locals 10

    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/layout/SizeKt$width-3ABfNKs$$inlined$debugInspectorInfo$1;-><init>(F)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move v1, p1

    move v3, p1

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;
    .locals 10

    new-instance v9, Landroidx/compose/foundation/layout/SizeElement;

    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/SizeKt$widthIn-VpY3zN4$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt$widthIn-VpY3zN4$$inlined$debugInspectorInfo$1;-><init>(FF)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/SizeElement;-><init>(FFFFZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v9}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/compose/ui/f;FFILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p1}, Lo0/i$a;->b()F

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lo0/i;->b:Lo0/i$a;

    invoke-virtual {p2}, Lo0/i$a;->b()F

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->m(Landroidx/compose/ui/f;FF)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Landroidx/compose/ui/f;Landroidx/compose/ui/b$c;Z)Landroidx/compose/ui/f;
    .locals 2

    sget-object v0, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->f:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->j()Landroidx/compose/ui/b$c;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    sget-object p1, Landroidx/compose/foundation/layout/SizeKt;->g:Landroidx/compose/foundation/layout/WrapContentElement;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/foundation/layout/WrapContentElement;->g:Landroidx/compose/foundation/layout/WrapContentElement$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/WrapContentElement$Companion;->a(Landroidx/compose/ui/b$c;Z)Landroidx/compose/foundation/layout/WrapContentElement;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroidx/compose/ui/f;Landroidx/compose/ui/b$c;ZILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {p1}, Landroidx/compose/ui/b$a;->h()Landroidx/compose/ui/b$c;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/f;Landroidx/compose/ui/b$c;Z)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method
