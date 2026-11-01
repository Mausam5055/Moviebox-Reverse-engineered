.class public abstract Lz0/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/d$a;,
        Lz0/d$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lz0/d;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lz0/d$a;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/graphics/Paint;Landroidx/core/graphics/BlendModeCompat;)Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lz0/a$b;->a(Landroidx/core/graphics/BlendModeCompat;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    invoke-static {p0, v3}, Lz0/d$b;->a(Landroid/graphics/Paint;Ljava/lang/Object;)V

    return v2

    :cond_1
    if-eqz p1, :cond_4

    invoke-static {p1}, Lz0/a;->a(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v3, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return v2
.end method
