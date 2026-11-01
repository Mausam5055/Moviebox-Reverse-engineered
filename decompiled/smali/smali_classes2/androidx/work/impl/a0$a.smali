.class public final Landroidx/work/impl/a0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/work/impl/a0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/a0$a;

    invoke-direct {v0}, Landroidx/work/impl/a0$a;-><init>()V

    sput-object v0, Landroidx/work/impl/a0$a;->a:Landroidx/work/impl/a0$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroidx/work/impl/a0$a;ZILjava/lang/Object;)Landroidx/work/impl/a0;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/work/impl/a0$a;->b(Z)Landroidx/work/impl/a0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroidx/work/impl/a0;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroidx/work/impl/a0$a;->c(Landroidx/work/impl/a0$a;ZILjava/lang/Object;)Landroidx/work/impl/a0;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)Landroidx/work/impl/a0;
    .locals 1

    new-instance v0, Landroidx/work/impl/b0;

    invoke-direct {v0}, Landroidx/work/impl/b0;-><init>()V

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/work/impl/c0;

    invoke-direct {p1, v0}, Landroidx/work/impl/c0;-><init>(Landroidx/work/impl/a0;)V

    move-object v0, p1

    :cond_0
    return-object v0
.end method
