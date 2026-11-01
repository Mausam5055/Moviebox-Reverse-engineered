.class final Lt/d$a;
.super Lkotlin/collections/AbstractList;

# interfaces
.implements Lt/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lt/d;

.field private final b:I

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Lt/d;II)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Lt/d$a;->a:Lt/d;

    iput p2, p0, Lt/d$a;->b:I

    iput p3, p0, Lt/d$a;->c:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p2, p3, p1}, Lw/d;->c(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lt/d$a;->d:I

    return-void
.end method


# virtual methods
.method public e(II)Lt/d;
    .locals 3

    iget v0, p0, Lt/d$a;->d:I

    invoke-static {p1, p2, v0}, Lw/d;->c(III)V

    new-instance v0, Lt/d$a;

    iget-object v1, p0, Lt/d$a;->a:Lt/d;

    iget v2, p0, Lt/d$a;->b:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lt/d$a;-><init>(Lt/d;II)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lt/d$a;->d:I

    invoke-static {p1, v0}, Lw/d;->a(II)V

    iget-object v0, p0, Lt/d$a;->a:Lt/d;

    iget v1, p0, Lt/d$a;->b:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lt/d$a;->d:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lt/d$a;->e(II)Lt/d;

    move-result-object p1

    return-object p1
.end method
