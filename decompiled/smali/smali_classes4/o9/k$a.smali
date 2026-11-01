.class final Lo9/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lo9/o;

.field public final b:Lo9/r;

.field public final c:Lg9/e0;

.field public final d:Lg9/f0;

.field public e:I


# direct methods
.method public constructor <init>(Lo9/o;Lo9/r;Lg9/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9/k$a;->a:Lo9/o;

    iput-object p2, p0, Lo9/k$a;->b:Lo9/r;

    iput-object p3, p0, Lo9/k$a;->c:Lg9/e0;

    iget-object p1, p1, Lo9/o;->f:Lcom/google/android/exoplayer2/o1;

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lg9/f0;

    invoke-direct {p1}, Lg9/f0;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo9/k$a;->d:Lg9/f0;

    return-void
.end method
