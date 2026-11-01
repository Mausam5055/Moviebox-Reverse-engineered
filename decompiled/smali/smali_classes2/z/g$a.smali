.class public final Lz/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lz/g$a;

.field private static final b:I

.field private static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz/g$a;

    invoke-direct {v0}, Lz/g$a;-><init>()V

    sput-object v0, Lz/g$a;->a:Lz/g$a;

    sget-object v0, Landroidx/compose/ui/graphics/c1;->a:Landroidx/compose/ui/graphics/c1$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/c1$a;->B()I

    move-result v0

    sput v0, Lz/g$a;->b:I

    sget-object v0, Landroidx/compose/ui/graphics/x3;->a:Landroidx/compose/ui/graphics/x3$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/x3$a;->a()I

    move-result v0

    sput v0, Lz/g$a;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Lz/g$a;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    sget v0, Lz/g$a;->c:I

    return v0
.end method
