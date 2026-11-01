.class public Lxl/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lxl/g;->a:J

    iput-wide p4, p0, Lxl/g;->b:J

    return-void
.end method


# virtual methods
.method public a()Lxl/h;
    .locals 7

    new-instance v6, Lxl/b;

    iget-wide v2, p0, Lxl/g;->a:J

    iget-wide v4, p0, Lxl/g;->b:J

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lxl/b;-><init>(Ljava/io/File;JJ)V

    return-object v6
.end method
