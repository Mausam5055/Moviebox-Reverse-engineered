.class public Lx5/a;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/io/File;

.field private b:I


# direct methods
.method public constructor <init>([Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/a;->a:[Ljava/io/File;

    iput p2, p0, Lx5/a;->b:I

    return-void
.end method


# virtual methods
.method public a()[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lx5/a;->a:[Ljava/io/File;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lx5/a;->b:I

    return v0
.end method
