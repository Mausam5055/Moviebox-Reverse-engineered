.class public final Landroidx/compose/ui/node/k0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/node/LayoutNode;

.field private final b:Z

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/k0$a;->a:Landroidx/compose/ui/node/LayoutNode;

    iput-boolean p2, p0, Landroidx/compose/ui/node/k0$a;->b:Z

    iput-boolean p3, p0, Landroidx/compose/ui/node/k0$a;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/k0$a;->a:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/k0$a;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/k0$a;->b:Z

    return v0
.end method
