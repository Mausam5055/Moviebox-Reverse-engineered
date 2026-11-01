.class public final Landroidx/compose/ui/modifier/a;
.super Landroidx/compose/ui/modifier/f;


# instance fields
.field private a:Landroidx/compose/ui/modifier/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/modifier/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/modifier/f;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/modifier/a;->a:Landroidx/compose/ui/modifier/j;

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/modifier/c;)Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/modifier/a;->a:Landroidx/compose/ui/modifier/j;

    invoke-interface {v0}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/modifier/a;->a:Landroidx/compose/ui/modifier/j;

    invoke-interface {v0}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "Check failed."

    invoke-static {p1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/modifier/a;->a:Landroidx/compose/ui/modifier/j;

    invoke-interface {p1}, Landroidx/compose/ui/modifier/j;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroidx/compose/ui/modifier/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/modifier/a;->a:Landroidx/compose/ui/modifier/j;

    return-void
.end method
