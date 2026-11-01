.class Ld2/a$a;
.super Ld2/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/a;->v()Ld2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ld2/a;


# direct methods
.method constructor <init>(Ld2/a;)V
    .locals 0

    iput-object p1, p0, Ld2/a$a;->b:Ld2/a;

    invoke-direct {p0}, Ld2/d;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Ld2/a$a;->b:Ld2/a;

    invoke-static {v0, p0}, Ld2/a;->u(Ld2/a;Landroidx/media3/decoder/h;)V

    return-void
.end method
