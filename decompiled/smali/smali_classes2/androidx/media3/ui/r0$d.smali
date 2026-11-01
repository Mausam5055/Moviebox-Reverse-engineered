.class final Landroidx/media3/ui/r0$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/ui/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/ui/r0$d;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/ui/r0$d;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Landroidx/media3/ui/r0$d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/r0$d;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/ui/r0$d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/r0$d;->a:Ljava/util/List;

    return-object p0
.end method
