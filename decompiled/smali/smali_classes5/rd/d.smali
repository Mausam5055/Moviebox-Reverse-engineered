.class final Lrd/d;
.super Lrd/b;


# instance fields
.field private final c:Lrd/c;

.field private d:I


# direct methods
.method constructor <init>(IILrd/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrd/b;-><init>(II)V

    iput-object p3, p0, Lrd/d;->c:Lrd/c;

    return-void
.end method


# virtual methods
.method c()I
    .locals 1

    iget v0, p0, Lrd/d;->d:I

    return v0
.end method

.method d()Lrd/c;
    .locals 1

    iget-object v0, p0, Lrd/d;->c:Lrd/c;

    return-object v0
.end method

.method e()V
    .locals 1

    iget v0, p0, Lrd/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrd/d;->d:I

    return-void
.end method
