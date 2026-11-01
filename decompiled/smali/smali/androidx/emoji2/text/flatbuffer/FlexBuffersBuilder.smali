.class public Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/emoji2/text/flatbuffer/d;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/HashMap;

.field private final d:Ljava/util/HashMap;

.field private final e:I

.field private f:Z

.field private g:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Landroidx/emoji2/text/flatbuffer/a;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/flatbuffer/a;-><init>(I)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;-><init>(Landroidx/emoji2/text/flatbuffer/d;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/d;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->f:Z

    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$1;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder$1;-><init>(Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;)V

    iput-object v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->g:Ljava/util/Comparator;

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->a:Landroidx/emoji2/text/flatbuffer/d;

    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffersBuilder;->e:I

    return-void
.end method
