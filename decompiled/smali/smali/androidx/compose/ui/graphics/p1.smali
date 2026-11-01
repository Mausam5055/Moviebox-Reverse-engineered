.class public final Landroidx/compose/ui/graphics/p1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/ui/graphics/p1;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/p1;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/p1;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/p1;->a:Landroidx/compose/ui/graphics/p1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Z)V
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/s1;->a:Landroidx/compose/ui/graphics/s1;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/graphics/s1;->a(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_3

    :cond_0
    sget-boolean v4, Landroidx/compose/ui/graphics/p1;->d:Z

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/16 v4, 0x1c

    const-string v6, "insertInorderBarrier"

    const-string v7, "insertReorderBarrier"

    const-class v8, Landroid/graphics/Canvas;

    if-ne v3, v4, :cond_1

    :try_start_0
    const-class v3, Ljava/lang/Class;

    const-string v4, "getDeclaredMethod"

    new-array v9, v1, [Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-array v10, v0, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v1

    aput-object v9, v10, v2

    invoke-virtual {v3, v4, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v7, v9, v1

    aput-object v4, v9, v2

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    sput-object v4, Landroidx/compose/ui/graphics/p1;->b:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v1

    aput-object v4, v0, v2

    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Landroidx/compose/ui/graphics/p1;->c:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/p1;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v8, v6, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/p1;->c:Ljava/lang/reflect/Method;

    :goto_0
    sget-object v0, Landroidx/compose/ui/graphics/p1;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_1
    sget-object v0, Landroidx/compose/ui/graphics/p1;->c:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    sput-boolean v2, Landroidx/compose/ui/graphics/p1;->d:Z

    :cond_4
    if-eqz p2, :cond_5

    :try_start_1
    sget-object v0, Landroidx/compose/ui/graphics/p1;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-nez p2, :cond_6

    sget-object p2, Landroidx/compose/ui/graphics/p1;->c:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    :goto_3
    return-void
.end method
