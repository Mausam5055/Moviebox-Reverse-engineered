.class public Ls10/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ls10/a;->b:I

    iput-object p1, p0, Ls10/a;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Ls10/a;->b:I

    iget-object v1, p0, Ls10/a;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ls10/a;->a:[Ljava/lang/Object;

    iget v1, p0, Ls10/a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ls10/a;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
