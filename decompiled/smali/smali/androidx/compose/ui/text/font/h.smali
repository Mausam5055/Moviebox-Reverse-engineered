.class public abstract Landroidx/compose/ui/text/font/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/h$a;,
        Landroidx/compose/ui/text/font/h$b;
    }
.end annotation


# static fields
.field public static final b:Landroidx/compose/ui/text/font/h$a;

.field private static final c:Landroidx/compose/ui/text/font/c0;

.field private static final d:Landroidx/compose/ui/text/font/s;

.field private static final e:Landroidx/compose/ui/text/font/s;

.field private static final f:Landroidx/compose/ui/text/font/s;

.field private static final g:Landroidx/compose/ui/text/font/s;


# instance fields
.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/font/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/font/h;->b:Landroidx/compose/ui/text/font/h$a;

    new-instance v0, Landroidx/compose/ui/text/font/f;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/f;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/h;->c:Landroidx/compose/ui/text/font/c0;

    new-instance v0, Landroidx/compose/ui/text/font/s;

    const-string v1, "sans-serif"

    const-string v2, "FontFamily.SansSerif"

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/text/font/h;->d:Landroidx/compose/ui/text/font/s;

    new-instance v0, Landroidx/compose/ui/text/font/s;

    const-string v1, "serif"

    const-string v2, "FontFamily.Serif"

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/text/font/h;->e:Landroidx/compose/ui/text/font/s;

    new-instance v0, Landroidx/compose/ui/text/font/s;

    const-string v1, "monospace"

    const-string v2, "FontFamily.Monospace"

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/text/font/h;->f:Landroidx/compose/ui/text/font/s;

    new-instance v0, Landroidx/compose/ui/text/font/s;

    const-string v1, "cursive"

    const-string v2, "FontFamily.Cursive"

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/font/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/ui/text/font/h;->g:Landroidx/compose/ui/text/font/s;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/text/font/h;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/font/h;-><init>(Z)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/ui/text/font/c0;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/h;->c:Landroidx/compose/ui/text/font/c0;

    return-object v0
.end method

.method public static final synthetic b()Landroidx/compose/ui/text/font/s;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/h;->d:Landroidx/compose/ui/text/font/s;

    return-object v0
.end method
