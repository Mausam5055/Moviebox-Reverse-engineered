.class public final Landroidx/compose/runtime/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/compose/runtime/i$a;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/i$a;

    invoke-direct {v0}, Landroidx/compose/runtime/i$a;-><init>()V

    sput-object v0, Landroidx/compose/runtime/i$a;->a:Landroidx/compose/runtime/i$a;

    new-instance v0, Landroidx/compose/runtime/i$a$a;

    invoke-direct {v0}, Landroidx/compose/runtime/i$a$a;-><init>()V

    sput-object v0, Landroidx/compose/runtime/i$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/i$a;->b:Ljava/lang/Object;

    return-object v0
.end method
