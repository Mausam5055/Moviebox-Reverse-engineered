.class final Landroidx/media3/ui/PlayerControlView$k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/PlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/i0$a;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/common/i0;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/i0$a;

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView$k;->a:Landroidx/media3/common/i0$a;

    iput p3, p0, Landroidx/media3/ui/PlayerControlView$k;->b:I

    iput-object p4, p0, Landroidx/media3/ui/PlayerControlView$k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView$k;->a:Landroidx/media3/common/i0$a;

    iget v1, p0, Landroidx/media3/ui/PlayerControlView$k;->b:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/i0$a;->h(I)Z

    move-result v0

    return v0
.end method
