.class public final Landroidx/compose/runtime/c2;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroidx/compose/runtime/b2;

.field private b:Landroidx/compose/runtime/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/b2;Landroidx/compose/runtime/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/c2;->a:Landroidx/compose/runtime/b2;

    iput-object p2, p0, Landroidx/compose/runtime/c2;->b:Landroidx/compose/runtime/c;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/runtime/c;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/c2;->b:Landroidx/compose/runtime/c;

    return-object v0
.end method

.method public final b()Landroidx/compose/runtime/b2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/c2;->a:Landroidx/compose/runtime/b2;

    return-object v0
.end method
