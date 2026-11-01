.class public Lk00/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lk00/a;->a:I

    invoke-virtual {p0}, Lk00/a;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lk00/a;->c:I

    iget v1, p0, Lk00/a;->a:I

    sub-int/2addr v0, v1

    return v0
.end method
