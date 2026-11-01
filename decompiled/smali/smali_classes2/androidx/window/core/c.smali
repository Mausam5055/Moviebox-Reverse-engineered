.class public final Landroidx/window/core/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/window/core/c;

.field private static final b:Landroidx/window/core/SpecificationComputer$VerificationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/core/c;

    invoke-direct {v0}, Landroidx/window/core/c;-><init>()V

    sput-object v0, Landroidx/window/core/c;->a:Landroidx/window/core/c;

    sget-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->QUIET:Landroidx/window/core/SpecificationComputer$VerificationMode;

    sput-object v0, Landroidx/window/core/c;->b:Landroidx/window/core/SpecificationComputer$VerificationMode;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/window/core/SpecificationComputer$VerificationMode;
    .locals 1

    sget-object v0, Landroidx/window/core/c;->b:Landroidx/window/core/SpecificationComputer$VerificationMode;

    return-object v0
.end method
