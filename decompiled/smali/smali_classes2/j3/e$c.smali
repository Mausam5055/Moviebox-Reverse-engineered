.class final Lj3/e$c;
.super Li3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private c:Landroidx/media3/decoder/h$a;


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/h$a;)V
    .locals 0

    invoke-direct {p0}, Li3/p;-><init>()V

    iput-object p1, p0, Lj3/e$c;->c:Landroidx/media3/decoder/h$a;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    iget-object v0, p0, Lj3/e$c;->c:Landroidx/media3/decoder/h$a;

    invoke-interface {v0, p0}, Landroidx/media3/decoder/h$a;->a(Landroidx/media3/decoder/h;)V

    return-void
.end method
