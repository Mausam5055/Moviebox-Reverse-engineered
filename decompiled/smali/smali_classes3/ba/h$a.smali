.class Lba/h$a;
.super Lba/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/h;->t()Lba/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lba/h;


# direct methods
.method constructor <init>(Lba/h;)V
    .locals 0

    iput-object p1, p0, Lba/h$a;->f:Lba/h;

    invoke-direct {p0}, Lba/n;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    iget-object v0, p0, Lba/h$a;->f:Lba/h;

    invoke-static {v0, p0}, Lba/h;->r(Lba/h;Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method
