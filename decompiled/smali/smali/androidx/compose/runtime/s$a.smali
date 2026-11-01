.class public final Landroidx/compose/runtime/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/compose/runtime/s$a;

.field private static final b:Landroidx/compose/runtime/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/s$a;

    invoke-direct {v0}, Landroidx/compose/runtime/s$a;-><init>()V

    sput-object v0, Landroidx/compose/runtime/s$a;->a:Landroidx/compose/runtime/s$a;

    invoke-static {}, Landroidx/compose/runtime/internal/e;->a()Landroidx/compose/runtime/internal/d;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/s$a;->b:Landroidx/compose/runtime/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/runtime/s;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/s$a;->b:Landroidx/compose/runtime/s;

    return-object v0
.end method
