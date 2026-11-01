.class Li3/j$a;
.super Li3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li3/j;->v()Li3/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Li3/j;


# direct methods
.method constructor <init>(Li3/j;)V
    .locals 0

    iput-object p1, p0, Li3/j$a;->c:Li3/j;

    invoke-direct {p0}, Li3/p;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Li3/j$a;->c:Li3/j;

    invoke-static {v0, p0}, Li3/j;->t(Li3/j;Landroidx/media3/decoder/h;)V

    return-void
.end method
