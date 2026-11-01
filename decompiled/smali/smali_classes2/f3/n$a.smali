.class final Lf3/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lf3/t;

.field public final b:Lf3/w;

.field public final c:Ll2/s0;

.field public final d:Ll2/t0;

.field public e:I


# direct methods
.method public constructor <init>(Lf3/t;Lf3/w;Ll2/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/n$a;->a:Lf3/t;

    iput-object p2, p0, Lf3/n$a;->b:Lf3/w;

    iput-object p3, p0, Lf3/n$a;->c:Ll2/s0;

    iget-object p1, p1, Lf3/t;->g:Landroidx/media3/common/r;

    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ll2/t0;

    invoke-direct {p1}, Ll2/t0;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lf3/n$a;->d:Ll2/t0;

    return-void
.end method
