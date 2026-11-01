.class public final Landroidx/compose/ui/platform/l2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/platform/l2;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/l2;->a:Ljava/util/List;

    new-instance v1, Landroidx/compose/ui/platform/k2;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/platform/k2;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/l2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
