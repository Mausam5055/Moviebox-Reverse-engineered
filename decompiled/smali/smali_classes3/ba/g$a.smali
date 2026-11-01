.class Lba/g$a;
.super Lba/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lba/g;


# direct methods
.method constructor <init>(Lba/g;)V
    .locals 0

    iput-object p1, p0, Lba/g$a;->f:Lba/g;

    invoke-direct {p0}, Lba/n;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    iget-object v0, p0, Lba/g$a;->f:Lba/g;

    invoke-static {v0, p0}, Lba/g;->a(Lba/g;Lba/n;)V

    return-void
.end method
