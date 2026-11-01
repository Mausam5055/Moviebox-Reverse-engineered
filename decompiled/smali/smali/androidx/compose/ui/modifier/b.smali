.class public final Landroidx/compose/ui/modifier/b;
.super Landroidx/compose/ui/modifier/f;


# static fields
.field public static final a:Landroidx/compose/ui/modifier/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/modifier/b;

    invoke-direct {v0}, Landroidx/compose/ui/modifier/b;-><init>()V

    sput-object v0, Landroidx/compose/ui/modifier/b;->a:Landroidx/compose/ui/modifier/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/modifier/f;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/modifier/c;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
