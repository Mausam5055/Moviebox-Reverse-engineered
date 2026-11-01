.class public abstract Lg9/w;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/m;


# instance fields
.field private final a:Lg9/m;


# direct methods
.method public constructor <init>(Lg9/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg9/w;->a:Lg9/m;

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1}, Lg9/m;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1, p2}, Lg9/m;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public b([BII)I
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1, p2, p3}, Lg9/m;->b([BII)I

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0}, Lg9/m;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0}, Lg9/m;->getPeekPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0}, Lg9/m;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1, p2, p3}, Lg9/m;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lg9/m;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1, p2, p3}, Lg9/m;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1, p2, p3}, Lg9/m;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lg9/m;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0}, Lg9/m;->resetPeekPosition()V

    return-void
.end method

.method public skip(I)I
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1}, Lg9/m;->skip(I)I

    move-result p1

    return p1
.end method

.method public skipFully(I)V
    .locals 1

    iget-object v0, p0, Lg9/w;->a:Lg9/m;

    invoke-interface {v0, p1}, Lg9/m;->skipFully(I)V

    return-void
.end method
