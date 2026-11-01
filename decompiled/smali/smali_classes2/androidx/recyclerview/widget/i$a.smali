.class Landroidx/recyclerview/widget/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/recyclerview/widget/AsyncListDiffer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/i;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/i$a;->a:Landroidx/recyclerview/widget/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/i$a;->a:Landroidx/recyclerview/widget/i;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/i;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
