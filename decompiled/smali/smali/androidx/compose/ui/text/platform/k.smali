.class public final Landroidx/compose/ui/text/platform/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/platform/l;


# static fields
.field public static final a:Landroidx/compose/ui/text/platform/k;

.field private static b:Landroidx/compose/ui/text/platform/l;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/platform/k;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/k;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/k;->a:Landroidx/compose/ui/text/platform/k;

    new-instance v0, Landroidx/compose/ui/text/platform/i;

    invoke-direct {v0}, Landroidx/compose/ui/text/platform/i;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/platform/k;->b:Landroidx/compose/ui/text/platform/l;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/text/platform/k;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/runtime/a3;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/platform/k;->b:Landroidx/compose/ui/text/platform/l;

    invoke-interface {v0}, Landroidx/compose/ui/text/platform/l;->a()Landroidx/compose/runtime/a3;

    move-result-object v0

    return-object v0
.end method
