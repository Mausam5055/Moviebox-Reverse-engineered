.class final Ly1/b4$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/r;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/media3/common/r;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/b4$b;->a:Landroidx/media3/common/r;

    iput p2, p0, Ly1/b4$b;->b:I

    iput-object p3, p0, Ly1/b4$b;->c:Ljava/lang/String;

    return-void
.end method
