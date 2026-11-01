.class final Landroidx/compose/runtime/j1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/q2;


# static fields
.field public static final a:Landroidx/compose/runtime/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/j1;

    invoke-direct {v0}, Landroidx/compose/runtime/j1;-><init>()V

    sput-object v0, Landroidx/compose/runtime/j1;->a:Landroidx/compose/runtime/j1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/p2;->a(Landroidx/compose/runtime/q2;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NeverEqualPolicy"

    return-object v0
.end method
