.class public final Landroidx/compose/ui/text/input/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/input/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/compose/ui/text/input/v$a;

.field private static final b:Landroidx/compose/ui/text/input/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/input/v$a;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/v$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/v$a;->a:Landroidx/compose/ui/text/input/v$a;

    new-instance v0, Landroidx/compose/ui/text/input/v$a$a;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/v$a$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/input/v$a;->b:Landroidx/compose/ui/text/input/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/text/input/v;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/input/v$a;->b:Landroidx/compose/ui/text/input/v;

    return-object v0
.end method
