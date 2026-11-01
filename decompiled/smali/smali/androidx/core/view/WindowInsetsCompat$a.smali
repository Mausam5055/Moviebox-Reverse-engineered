.class Landroidx/core/view/WindowInsetsCompat$a;
.super Landroidx/core/view/WindowInsetsCompat$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Constructor;

.field private static h:Z


# instance fields
.field private c:Landroid/view/WindowInsets;

.field private d:Lz0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$e;-><init>()V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$a;->l()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$e;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private static l()Landroid/view/WindowInsets;
    .locals 6

    const/4 v0, 0x0

    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$a;->f:Z

    const/4 v2, 0x1

    const-class v3, Landroid/view/WindowInsets;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "CONSUMED"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$a;->e:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-boolean v2, Landroidx/core/view/WindowInsetsCompat$a;->f:Z

    :cond_0
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$a;->e:Ljava/lang/reflect/Field;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    if-eqz v1, :cond_1

    new-instance v5, Landroid/view/WindowInsets;

    invoke-direct {v5, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    :cond_1
    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$a;->h:Z

    if-nez v1, :cond_2

    :try_start_2
    new-array v1, v2, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$a;->g:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-boolean v2, Landroidx/core/view/WindowInsetsCompat$a;->h:Z

    :cond_2
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$a;->g:Ljava/lang/reflect/Constructor;

    if-eqz v1, :cond_3

    :try_start_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    :cond_3
    return-object v4
.end method


# virtual methods
.method b()Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$e;->a()V

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$e;->b:[Lz0/c;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Lz0/c;)V

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$a;->d:Lz0/c;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setStableInsets(Lz0/c;)V

    return-object v0
.end method

.method g(Lz0/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$a;->d:Lz0/c;

    return-void
.end method

.method i(Lz0/c;)V
    .locals 4

    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    iget v1, p1, Lz0/c;->a:I

    iget v2, p1, Lz0/c;->b:I

    iget v3, p1, Lz0/c;->c:I

    iget p1, p1, Lz0/c;->d:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    :cond_0
    return-void
.end method
