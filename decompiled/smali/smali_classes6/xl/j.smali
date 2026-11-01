.class public Lxl/j;
.super Ljava/lang/Object;

# interfaces
.implements Lxl/h$a;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lxl/a;


# direct methods
.method public constructor <init>(Lxl/a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxl/j;->a:Ljava/lang/Object;

    iput-object p1, p0, Lxl/j;->b:Lxl/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 4

    iget-object v0, p0, Lxl/j;->b:Lxl/a;

    iget-object v1, p0, Lxl/j;->a:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lxl/a;->a(Ljava/lang/Object;Ljava/io/File;J)Z

    move-result p1

    return p1
.end method
