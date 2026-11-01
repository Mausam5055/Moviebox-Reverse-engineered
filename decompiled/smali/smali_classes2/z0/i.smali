.class public abstract Lz0/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/i$a;
    }
.end annotation


# static fields
.field private static final a:Lz0/o;

.field private static final b:Landroidx/collection/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TypefaceCompat static init"

    invoke-static {v0}, Lf4/a;->c(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lz0/n;

    invoke-direct {v0}, Lz0/n;-><init>()V

    sput-object v0, Lz0/i;->a:Lz0/o;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, Lz0/m;

    invoke-direct {v0}, Lz0/m;-><init>()V

    sput-object v0, Lz0/i;->a:Lz0/o;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    new-instance v0, Lz0/l;

    invoke-direct {v0}, Lz0/l;-><init>()V

    sput-object v0, Lz0/i;->a:Lz0/o;

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    invoke-static {}, Lz0/k;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lz0/k;

    invoke-direct {v0}, Lz0/k;-><init>()V

    sput-object v0, Lz0/i;->a:Lz0/o;

    goto :goto_0

    :cond_3
    new-instance v0, Lz0/j;

    invoke-direct {v0}, Lz0/j;-><init>()V

    sput-object v0, Lz0/i;->a:Lz0/o;

    :goto_0
    new-instance v0, Landroidx/collection/z;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/z;-><init>(I)V

    sput-object v0, Lz0/i;->b:Landroidx/collection/z;

    invoke-static {}, Lf4/a;->f()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/k$b;I)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "TypefaceCompat.createFromFontInfo"

    invoke-static {v0}, Lf4/a;->c(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lz0/i;->a:Lz0/o;

    invoke-virtual {v0, p0, p1, p2, p3}, Lz0/o;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/k$b;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lf4/a;->f()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lf4/a;->f()V

    throw p0
.end method

.method public static c(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/List;I)Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "TypefaceCompat.createFromFontInfoWithFallback"

    invoke-static {v0}, Lf4/a;->c(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lz0/i;->a:Lz0/o;

    invoke-virtual {v0, p0, p1, p2, p3}, Lz0/o;->c(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/List;I)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lf4/a;->f()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lf4/a;->f()V

    throw p0
.end method

.method public static d(Landroid/content/Context;Ly0/e$b;Landroid/content/res/Resources;ILjava/lang/String;IILy0/h$e;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 13

    move-object v0, p1

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    instance-of v3, v0, Ly0/e$e;

    if-eqz v3, :cond_6

    check-cast v0, Ly0/e$e;

    invoke-virtual {v0}, Ly0/e$e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lz0/i;->h(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3, v2}, Ly0/h$e;->d(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    :cond_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p9, :cond_3

    invoke-virtual {v0}, Ly0/e$e;->b()I

    move-result v5

    if-nez v5, :cond_2

    :goto_0
    move v9, v4

    goto :goto_1

    :cond_2
    move v9, v3

    goto :goto_1

    :cond_3
    if-nez v1, :cond_2

    goto :goto_0

    :goto_1
    if-eqz p9, :cond_4

    invoke-virtual {v0}, Ly0/e$e;->e()I

    move-result v3

    :goto_2
    move v10, v3

    goto :goto_3

    :cond_4
    const/4 v3, -0x1

    goto :goto_2

    :goto_3
    invoke-static/range {p8 .. p8}, Ly0/h$e;->e(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lz0/i$a;

    invoke-direct {v12, v1}, Lz0/i$a;-><init>(Ly0/h$e;)V

    invoke-virtual {v0}, Ly0/e$e;->a()Landroidx/core/provider/e;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ly0/e$e;->c()Landroidx/core/provider/e;

    move-result-object v1

    invoke-virtual {v0}, Ly0/e$e;->a()Landroidx/core/provider/e;

    move-result-object v0

    invoke-static {v1, v0}, Lz0/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_4
    move-object v7, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ly0/e$e;->c()Landroidx/core/provider/e;

    move-result-object v0

    invoke-static {v0}, Lz0/g;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :goto_5
    move-object v6, p0

    move/from16 v8, p6

    invoke-static/range {v6 .. v12}, Landroidx/core/provider/k;->c(Landroid/content/Context;Ljava/util/List;IZILandroid/os/Handler;Landroidx/core/provider/k$c;)Landroid/graphics/Typeface;

    move-result-object v0

    move-object v5, p2

    move/from16 v6, p6

    goto :goto_6

    :cond_6
    sget-object v3, Lz0/i;->a:Lz0/o;

    check-cast v0, Ly0/e$c;

    move-object v4, p0

    move-object v5, p2

    move/from16 v6, p6

    invoke-virtual {v3, p0, v0, p2, v6}, Lz0/o;->a(Landroid/content/Context;Ly0/e$c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v1, v0, v2}, Ly0/h$e;->d(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_6

    :cond_7
    const/4 v3, -0x3

    invoke-virtual {v1, v3, v2}, Ly0/h$e;->c(ILandroid/os/Handler;)V

    :cond_8
    :goto_6
    if-eqz v0, :cond_9

    sget-object v1, Lz0/i;->b:Landroidx/collection/z;

    invoke-static/range {p2 .. p6}, Lz0/i;->f(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/collection/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object v0
.end method

.method public static e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 6

    sget-object v0, Lz0/i;->a:Lz0/o;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lz0/o;->e(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lz0/i;->f(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lz0/i;->b:Landroidx/collection/z;

    invoke-virtual {p2, p1, p0}, Landroidx/collection/z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method private static f(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lz0/i;->b:Landroidx/collection/z;

    invoke-static {p0, p1, p2, p3, p4}, Lz0/i;->f(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/collection/z;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method private static h(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method
