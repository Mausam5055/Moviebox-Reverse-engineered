.class public final Landroidx/compose/ui/platform/b2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/node/z0;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;

.field private c:Ljava/lang/Float;

.field private d:Ljava/lang/Float;

.field private e:Landroidx/compose/ui/semantics/g;

.field private f:Landroidx/compose/ui/semantics/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/g;Landroidx/compose/ui/semantics/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/platform/b2;->a:I

    iput-object p2, p0, Landroidx/compose/ui/platform/b2;->b:Ljava/util/List;

    iput-object p3, p0, Landroidx/compose/ui/platform/b2;->c:Ljava/lang/Float;

    iput-object p4, p0, Landroidx/compose/ui/platform/b2;->d:Ljava/lang/Float;

    iput-object p5, p0, Landroidx/compose/ui/platform/b2;->e:Landroidx/compose/ui/semantics/g;

    iput-object p6, p0, Landroidx/compose/ui/platform/b2;->f:Landroidx/compose/ui/semantics/g;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/semantics/g;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->e:Landroidx/compose/ui/semantics/g;

    return-object v0
.end method

.method public final b()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->c:Ljava/lang/Float;

    return-object v0
.end method

.method public final c()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->d:Ljava/lang/Float;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/b2;->a:I

    return v0
.end method

.method public final e()Landroidx/compose/ui/semantics/g;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->f:Landroidx/compose/ui/semantics/g;

    return-object v0
.end method

.method public final f(Landroidx/compose/ui/semantics/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/b2;->e:Landroidx/compose/ui/semantics/g;

    return-void
.end method

.method public final g(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/b2;->c:Ljava/lang/Float;

    return-void
.end method

.method public final h(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/b2;->d:Ljava/lang/Float;

    return-void
.end method

.method public final i(Landroidx/compose/ui/semantics/g;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/b2;->f:Landroidx/compose/ui/semantics/g;

    return-void
.end method

.method public isValidOwnerScope()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/b2;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
